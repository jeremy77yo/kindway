/**
 * Shared PHI / PII content filter.
 * Returns a human-readable reason if the text looks like it contains
 * sensitive information, or null if it passes.
 */
export function detectSensitiveContent(text: string): string | null {
  // SSN pattern: XXX-XX-XXXX
  if (/\b\d{3}-\d{2}-\d{4}\b/.test(text)) {
    return "Your post appears to contain a Social Security Number. Please remove it and try again.";
  }

  // Medi-Cal ID pattern: typically 14 digits or patterns like 0XXXXXXXXXXX
  if (/\b\d{14}\b/.test(text) || /\b0\d{12}\b/.test(text)) {
    return "Your post appears to contain an ID number (possibly a Medi-Cal ID). Please remove it and try again.";
  }

  // Email addresses
  if (/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b/.test(text)) {
    return "Your post appears to contain an email address. Please remove it to protect privacy.";
  }

  // Phone numbers: (XXX) XXX-XXXX or XXX-XXX-XXXX or XXX.XXX.XXXX
  if (/\b\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}\b/.test(text)) {
    return "Your post appears to contain a phone number. Please remove it to protect privacy.";
  }

  return null;
}
