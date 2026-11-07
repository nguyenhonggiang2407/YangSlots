# YS01 — Baseline kiểm thử giao dịch

Chạy trên mã ứng dụng [`f8a1cb3`](https://github.com/nguyenhonggiang2407/YangSlots/tree/f8a1cb3350d3979bf9f297edcc8849c231df3709) với Temurin 17.0.21+9, Node 24.19.0 và Windows. [Kết quả theo bộ test](evidence/YS01-local-baseline.json).

| Lệnh                      | Kết quả                                                |
| ------------------------- | ------------------------------------------------------ |
| `./mvnw.cmd -B verify`    | Exit 0, 24 test đạt, tạo `target/yangslots.jar`.       |
| `npm ci --ignore-scripts` | Exit 0, cài dependency theo lockfile.                  |
| `npm run format:check`    | Exit 0.                                                |
| `npm run test:ui`         | Exit 0, 6 test trình duyệt đạt với ứng dụng Java thật. |

`BookingService` khóa hàng workspace trong transaction `READ_COMMITTED` trước khi đọc các khoảng thời gian đang giữ hoặc đã xác nhận. `Rules.peak` tính mức sử dụng đồng thời theo khoảng nửa mở `[start, end)`. `ReservationsTest` chạy 20 request HTTP tranh bốn chỗ, thử nhiều request cùng key, và dùng `MutableClock` để xác nhận hold hết hạn giải phóng sức chứa. Bộ test còn kiểm tra xung đột 409, CSRF, cách ly workspace và replay. `PersistenceTest` đóng rồi mở lại Spring context với tệp H2 tạm để kiểm tra phiên và lịch đặt.

Trình duyệt kiểm tra luồng giữ chỗ rồi xác nhận và xuất lịch, khôi phục khi mất phản hồi, thao tác từ hai tab và bố cục ở 390 px. Kết quả áp dụng cho một tiến trình Java với H2. Docker chưa có trên máy kiểm tra. GitHub Actions có bước build container riêng. PostgreSQL, tải sản xuất và demo công khai vẫn cần bằng chứng riêng.
