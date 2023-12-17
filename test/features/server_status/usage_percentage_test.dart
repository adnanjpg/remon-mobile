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
            // disk1 avg available: 100
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
            // disk2 avg available: 180
            DiskUsageModel(
              id: -1,
              frameId: -1,
              diskId: disk2Id,
              available: 180,
            ),
            // disk3 avg available: 50
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

        // available is provided, so we need to calculate used
        // disk 1: 300 - (120 + 80) / 2 = 200 / 300 * 100 = 66.66
        // disk 2: 200 - 180 = 20 / 200 * 100 = 10
        // disk 3: 400 - 50 = 350 / 400 * 100 = 87.5
        // avg: (66.66 + 10 + 87.5) / 3 = 54.72

        // without flooring there's be difference in fine decimals
        expect(frame.usagePercent(disksTotal).floor(), 54);
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

        // available is provided, so we need to calculate used
        // disk 1: 300 - (120 + 80) / 2 = 200 / 300 * 100 = 66.66
        // disk 2: 200 - 180 = 20 / 200 * 100 = 10
        // disk 3: 400 - 50 = 350 / 400 * 100 = 87.5
        // avg: (66.66 + 10 + 87.5) / 3 = 54.72

        // without flooring there's be difference in fine decimals
        expect(frame.usagePercent(memsTotal).floor(), 54);
      });
    },
  );
}
