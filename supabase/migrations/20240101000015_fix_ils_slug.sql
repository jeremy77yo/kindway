-- Fix ILS slug: migration 14 ran before seed data inserted the row,
-- so the slug was never renamed from 'independent-living-skills' to 'independent-living'.
-- This migration handles both cases (old slug or already correct).
UPDATE services
SET slug = 'independent-living'
WHERE id = '11111111-1111-1111-1111-111111111117'
  AND slug = 'independent-living-skills';
