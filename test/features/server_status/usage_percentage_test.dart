import 'package:remon_mobile/features/server_status/models/server_disk_status_model.dart';
import 'package:remon_mobile/features/server_status/models/server_mem_status_model.dart';
import 'package:test/test.dart';

void main() {
  group(
    'server mem and disk status usage percent',
    () {
      test('server disk usage percent', () {
        const disk1Id = 'disk1id';
        const disk2Id = 'disk2id';
        const disk3Id = 'disk3id';

        const frame = DiskUsageFrameModel(
          id: -1,
          lastCheck: -1,
          disksUsage: [
            // disk1 avg: 100
            DiskUsageModel(
              id: -1,
              frameId: -1,
              diskId: disk1Id,
              available: 120,
            ),
            DiskUsageModel(
              id: -1,
              frameId: -1,
              diskId: disk1Id,
              available: 80,
            ),
            // disk2 avg: 180
            DiskUsageModel(
              id: -1,
              frameId: -1,
              diskId: disk2Id,
              available: 180,
            ),
            // disk3 avg: 50
            DiskUsageModel(
              id: -1,
              frameId: -1,
              diskId: disk3Id,
              available: 50,
            ),
          ],
        );

        const disksTotal = [
          (
            diskId: disk1Id,
            total: 300,
          ),
          (
            diskId: disk2Id,
            total: 200,
          ),
          (
            diskId: disk3Id,
            total: 400,
          ),
        ];

        // disk 1: 100 / 300 * 100 = 33.33
        // disk 2: 180 / 200 * 100 = 90
        // disk 3: 50 / 400 * 100 = 12.5
        // avg: (33.33 + 90 + 12.5) / 3 = 45.28

        // without flooring there's be difference in fine decimals
        expect(frame.usagePercent(disksTotal).floor(), 45);
      });
      test('server mem usage percent', () {
        const mem1Id = 'mem1id';
        const mem2Id = 'mem2id';
        const mem3Id = 'mem3id';

        const frame = MemUsageFrameModel(
          id: -1,
          lastCheck: -1,
          memsUsage: [
            // disk1 avg: 100
            MemUsageModel(
              id: -1,
              frameId: -1,
              memId: mem1Id,
              available: 120,
            ),
            MemUsageModel(
              id: -1,
              frameId: -1,
              memId: mem1Id,
              available: 80,
            ),
            // disk2 avg: 180
            MemUsageModel(
              id: -1,
              frameId: -1,
              memId: mem2Id,
              available: 180,
            ),
            // disk3 avg: 50
            MemUsageModel(
              id: -1,
              frameId: -1,
              memId: mem3Id,
              available: 50,
            ),
          ],
        );

        const memsTotal = [
          (
            memId: mem1Id,
            total: 300,
          ),
          (
            memId: mem2Id,
            total: 200,
          ),
          (
            memId: mem3Id,
            total: 400,
          ),
        ];

        // disk 1: 100 / 300 * 100 = 33.33
        // disk 2: 180 / 200 * 100 = 90
        // disk 3: 50 / 400 * 100 = 12.5
        // avg: (33.33 + 90 + 12.5) / 3 = 45.28

        // without flooring there's be difference in fine decimals
        expect(frame.usagePercent(memsTotal).floor(), 45);
      });
    },
  );
}
