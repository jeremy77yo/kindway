-- =============================================================================
-- 3. PROVIDER-SERVICE LINKS
-- =============================================================================

-- Links for newly imported providers

INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000001', 'aaaaaaaa-aaaa-4aaa-baaa-000000000001', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000002', 'aaaaaaaa-aaaa-4aaa-baaa-000000000002', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000003', 'aaaaaaaa-aaaa-4aaa-baaa-000000000003', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000004', 'aaaaaaaa-aaaa-4aaa-baaa-000000000004', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000005', 'aaaaaaaa-aaaa-4aaa-baaa-000000000005', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000006', 'aaaaaaaa-aaaa-4aaa-baaa-000000000006', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000007', 'aaaaaaaa-aaaa-4aaa-baaa-000000000007', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000008', 'aaaaaaaa-aaaa-4aaa-baaa-000000000008', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000009', 'aaaaaaaa-aaaa-4aaa-baaa-000000000009', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000a', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000e', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000000f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000000f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000010', 'aaaaaaaa-aaaa-4aaa-baaa-000000000010', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000011', 'aaaaaaaa-aaaa-4aaa-baaa-000000000010', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000012', 'aaaaaaaa-aaaa-4aaa-baaa-000000000011', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000013', 'aaaaaaaa-aaaa-4aaa-baaa-000000000012', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000014', 'aaaaaaaa-aaaa-4aaa-baaa-000000000013', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000015', 'aaaaaaaa-aaaa-4aaa-baaa-000000000014', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000016', 'aaaaaaaa-aaaa-4aaa-baaa-000000000015', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000017', 'aaaaaaaa-aaaa-4aaa-baaa-000000000016', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000018', 'aaaaaaaa-aaaa-4aaa-baaa-000000000017', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000019', 'aaaaaaaa-aaaa-4aaa-baaa-000000000018', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000019', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001c', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000001f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000020', 'aaaaaaaa-aaaa-4aaa-baaa-00000000001f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000021', 'aaaaaaaa-aaaa-4aaa-baaa-000000000020', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000022', 'aaaaaaaa-aaaa-4aaa-baaa-000000000021', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000023', 'aaaaaaaa-aaaa-4aaa-baaa-000000000022', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000024', 'aaaaaaaa-aaaa-4aaa-baaa-000000000023', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000025', 'aaaaaaaa-aaaa-4aaa-baaa-000000000024', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000026', 'aaaaaaaa-aaaa-4aaa-baaa-000000000025', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000027', 'aaaaaaaa-aaaa-4aaa-baaa-000000000026', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000028', 'aaaaaaaa-aaaa-4aaa-baaa-000000000027', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000029', 'aaaaaaaa-aaaa-4aaa-baaa-000000000028', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000029', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002d', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000002f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000030', 'aaaaaaaa-aaaa-4aaa-baaa-00000000002f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000031', 'aaaaaaaa-aaaa-4aaa-baaa-000000000030', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000032', 'aaaaaaaa-aaaa-4aaa-baaa-000000000031', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000033', 'aaaaaaaa-aaaa-4aaa-baaa-000000000032', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000034', 'aaaaaaaa-aaaa-4aaa-baaa-000000000033', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000035', 'aaaaaaaa-aaaa-4aaa-baaa-000000000034', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000036', 'aaaaaaaa-aaaa-4aaa-baaa-000000000035', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000037', 'aaaaaaaa-aaaa-4aaa-baaa-000000000036', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000038', 'aaaaaaaa-aaaa-4aaa-baaa-000000000037', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000039', 'aaaaaaaa-aaaa-4aaa-baaa-000000000038', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000039', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003a', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000003f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000040', 'aaaaaaaa-aaaa-4aaa-baaa-00000000003f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000041', 'aaaaaaaa-aaaa-4aaa-baaa-000000000040', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000042', 'aaaaaaaa-aaaa-4aaa-baaa-000000000041', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000043', 'aaaaaaaa-aaaa-4aaa-baaa-000000000042', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000044', 'aaaaaaaa-aaaa-4aaa-baaa-000000000043', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000045', 'aaaaaaaa-aaaa-4aaa-baaa-000000000044', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000046', 'aaaaaaaa-aaaa-4aaa-baaa-000000000045', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000047', 'aaaaaaaa-aaaa-4aaa-baaa-000000000046', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000048', 'aaaaaaaa-aaaa-4aaa-baaa-000000000047', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000049', 'aaaaaaaa-aaaa-4aaa-baaa-000000000048', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000049', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004b', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000004f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000050', 'aaaaaaaa-aaaa-4aaa-baaa-00000000004f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000051', 'aaaaaaaa-aaaa-4aaa-baaa-000000000050', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000052', 'aaaaaaaa-aaaa-4aaa-baaa-000000000051', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000053', 'aaaaaaaa-aaaa-4aaa-baaa-000000000052', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000054', 'aaaaaaaa-aaaa-4aaa-baaa-000000000053', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000055', 'aaaaaaaa-aaaa-4aaa-baaa-000000000054', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000056', 'aaaaaaaa-aaaa-4aaa-baaa-000000000055', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000057', 'aaaaaaaa-aaaa-4aaa-baaa-000000000056', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000058', 'aaaaaaaa-aaaa-4aaa-baaa-000000000057', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000059', 'aaaaaaaa-aaaa-4aaa-baaa-000000000058', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000058', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000059', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005c', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005c', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000005f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000060', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005e', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000061', 'aaaaaaaa-aaaa-4aaa-baaa-00000000005f', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000062', 'aaaaaaaa-aaaa-4aaa-baaa-000000000060', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000063', 'aaaaaaaa-aaaa-4aaa-baaa-000000000061', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000064', 'aaaaaaaa-aaaa-4aaa-baaa-000000000062', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000065', 'aaaaaaaa-aaaa-4aaa-baaa-000000000063', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000066', 'aaaaaaaa-aaaa-4aaa-baaa-000000000064', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000067', 'aaaaaaaa-aaaa-4aaa-baaa-000000000064', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000068', 'aaaaaaaa-aaaa-4aaa-baaa-000000000065', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000069', 'aaaaaaaa-aaaa-4aaa-baaa-000000000066', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000067', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000068', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000069', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006a', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000006f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000070', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000071', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000072', 'aaaaaaaa-aaaa-4aaa-baaa-00000000006f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000073', 'aaaaaaaa-aaaa-4aaa-baaa-000000000070', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000074', 'aaaaaaaa-aaaa-4aaa-baaa-000000000071', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000075', 'aaaaaaaa-aaaa-4aaa-baaa-000000000072', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000076', 'aaaaaaaa-aaaa-4aaa-baaa-000000000073', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000077', 'aaaaaaaa-aaaa-4aaa-baaa-000000000074', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000078', 'aaaaaaaa-aaaa-4aaa-baaa-000000000075', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000079', 'aaaaaaaa-aaaa-4aaa-baaa-000000000076', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000077', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000078', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000079', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007d', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007b', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000007f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000080', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000081', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000082', 'aaaaaaaa-aaaa-4aaa-baaa-00000000007f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000083', 'aaaaaaaa-aaaa-4aaa-baaa-000000000080', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000084', 'aaaaaaaa-aaaa-4aaa-baaa-000000000081', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000085', 'aaaaaaaa-aaaa-4aaa-baaa-000000000082', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000086', 'aaaaaaaa-aaaa-4aaa-baaa-000000000082', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000087', 'aaaaaaaa-aaaa-4aaa-baaa-000000000083', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000088', 'aaaaaaaa-aaaa-4aaa-baaa-000000000084', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000089', 'aaaaaaaa-aaaa-4aaa-baaa-000000000085', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000086', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000087', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000088', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008d', 'aaaaaaaa-aaaa-4aaa-baaa-000000000089', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000008f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008b', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000090', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008c', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000091', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008d', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000092', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008e', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000093', 'aaaaaaaa-aaaa-4aaa-baaa-00000000008f', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000094', 'aaaaaaaa-aaaa-4aaa-baaa-000000000090', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000095', 'aaaaaaaa-aaaa-4aaa-baaa-000000000091', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000096', 'aaaaaaaa-aaaa-4aaa-baaa-000000000092', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000097', 'aaaaaaaa-aaaa-4aaa-baaa-000000000093', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000098', 'aaaaaaaa-aaaa-4aaa-baaa-000000000094', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-000000000099', 'aaaaaaaa-aaaa-4aaa-baaa-000000000095', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009a', 'aaaaaaaa-aaaa-4aaa-baaa-000000000096', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009b', 'aaaaaaaa-aaaa-4aaa-baaa-000000000097', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009c', 'aaaaaaaa-aaaa-4aaa-baaa-000000000098', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009d', 'aaaaaaaa-aaaa-4aaa-baaa-000000000099', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009e', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009a', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-00000000009f', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009b', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a0', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009c', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a1', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009d', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a2', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009e', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a3', 'aaaaaaaa-aaaa-4aaa-baaa-00000000009f', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a0', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a1', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000a9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a4', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000aa', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ab', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ac', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a7', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ad', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ae', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000a9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000af', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000aa', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ab', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ac', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ad', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ae', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000af', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b0', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b1', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b2', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b3', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000b9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b4', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ba', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b7', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000be', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000b9', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000bf', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ba', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bc', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bd', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000be', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000bf', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c0', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c2', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000c9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c3', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ca', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c4', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c5', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c6', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c7', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ce', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c8', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000cf', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000c9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ca', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cd', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ce', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000cf', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d0', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d1', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000d9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000da', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d4', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000db', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d5', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000dc', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000dd', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d7', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000de', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000df', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d8', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000d9', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000da', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000db', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000dc', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e4', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000dd', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e5', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000de', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e6', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000df', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e7', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e0', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e8', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e1', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000e9', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e2', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ea', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e3', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000eb', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e4', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ec', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e5', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ed', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e6', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ee', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e7', '11111111-1111-1111-1111-111111111107', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000ef', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e8', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f0', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000e9', '11111111-1111-1111-1111-111111111116', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f1', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ea', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f2', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000eb', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f3', 'aaaaaaaa-aaaa-4aaa-baaa-0000000000ec', '11111111-1111-1111-1111-111111111117', true)
ON CONFLICT (provider_id, service_id) DO NOTHING;

-- Links for existing seed providers found in vendor lists

-- Existing: Ability Now Bay Area -> Day Programs
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f4', '22222222-2222-2222-2222-222222222208', '11111111-1111-1111-1111-111111111116', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: East Bay Innovations -> ILS
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f5', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: East Bay Innovations -> Respite
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f6', '22222222-2222-2222-2222-222222222207', '11111111-1111-1111-1111-111111111107', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;
-- Existing: Toolworks -> ILS
INSERT INTO provider_services (id, provider_id, service_id, is_primary)
VALUES ('bbbbbbbb-bbbb-4bbb-bbbb-0000000000f7', '22222222-2222-2222-2222-222222222212', '11111111-1111-1111-1111-111111111117', false)
ON CONFLICT (provider_id, service_id) DO NOTHING;