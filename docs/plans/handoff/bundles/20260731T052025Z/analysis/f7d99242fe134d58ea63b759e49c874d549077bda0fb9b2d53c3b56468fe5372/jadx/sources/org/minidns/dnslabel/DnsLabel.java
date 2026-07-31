package org.minidns.dnslabel;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.net.IDN;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import org.minidns.util.SafeCharSequence;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DnsLabel extends SafeCharSequence implements Comparable {
    public transient byte[] byteCache;
    public final String label;
    public transient DnsLabel lowercasedVariant;
    public transient String safeToStringRepresentation;
    public static final DnsLabel WILDCARD_LABEL = from("*");
    public static final boolean VALIDATE = true;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LabelToLongException extends IllegalArgumentException {
        public final String label;

        public LabelToLongException(String str) {
            this.label = str;
        }
    }

    public DnsLabel(String str) {
        this.label = str;
        if (VALIDATE) {
            if (this.byteCache == null) {
                this.byteCache = str.getBytes(StandardCharsets.US_ASCII);
            }
            if (this.byteCache.length > 63) {
                throw new LabelToLongException(str);
            }
        }
    }

    public static DnsLabel from(String str) {
        if (str == null || str.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Label is null or empty");
            return null;
        }
        if (!str.isEmpty() && (str.isEmpty() || (str.charAt(0) != '-' && str.charAt(str.length() - 1) != '-'))) {
            for (int i = 0; i < str.length(); i++) {
                if (isLdhOrMaybeUnderscore(str.charAt(i), false)) {
                }
            }
            if (!str.isEmpty() && (str.isEmpty() || (str.charAt(0) != '-' && str.charAt(str.length() - 1) != '-'))) {
                int i2 = 0;
                while (true) {
                    if (i2 < str.length()) {
                        if (!isLdhOrMaybeUnderscore(str.charAt(i2), false)) {
                            break;
                        }
                        i2++;
                    } else if (str.length() >= 4 && str.charAt(2) == '-' && str.charAt(3) == '-') {
                        return str.substring(0, 2).toLowerCase(Locale.US).equals("xn") ? str.equals(IDN.toUnicode(str)) ? new FakeALabel(str) : new ALabel(str) : new ReservedLdhLabel(str);
                    }
                }
            }
            return new NonReservedLdhLabel(str);
        }
        return str.charAt(0) == '_' ? new UnderscoreLabel(str) : (!str.isEmpty() && (str.charAt(0) == '-' || str.charAt(str.length() + (-1)) == '-')) ? new LeadingOrTrailingHyphenLabel(str) : new OtherNonLdhLabel(str);
    }

    public static boolean isLdhOrMaybeUnderscore(char c, boolean z) {
        if (c >= 'a' && c <= 'z') {
            return true;
        }
        if (c >= 'A' && c <= 'Z') {
            return true;
        }
        if ((c < '0' || c > '9') && c != '-') {
            return z && c == '_';
        }
        return true;
    }

    public final DnsLabel asLowercaseVariant() {
        if (this.lowercasedVariant == null) {
            this.lowercasedVariant = from(this.label.toLowerCase(Locale.US));
        }
        return this.lowercasedVariant;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return asLowercaseVariant().label.compareTo(((DnsLabel) obj).asLowercaseVariant().label);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DnsLabel) {
            return this.label.equals(((DnsLabel) obj).label);
        }
        return false;
    }

    public final int hashCode() {
        return this.label.hashCode();
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        String str;
        if (this.safeToStringRepresentation == null) {
            int i = 0;
            while (true) {
                str = this.label;
                if (i >= str.length()) {
                    break;
                }
                if (isLdhOrMaybeUnderscore(str.charAt(i), true)) {
                    i++;
                } else {
                    StringBuilder sb = new StringBuilder(str.length() * 2);
                    for (int i2 = 0; i2 < str.length(); i2++) {
                        char charAt = str.charAt(i2);
                        if (isLdhOrMaybeUnderscore(charAt, true)) {
                            sb.append(charAt);
                        } else if (charAt == ' ') {
                            sb.append((char) 9251);
                        } else if (charAt == '.') {
                            sb.append((char) 9679);
                        } else if (charAt == '\\') {
                            sb.append((char) 10743);
                        } else if (charAt == 127) {
                            sb.append((char) 9249);
                        } else if (charAt < ' ') {
                            sb.append((char) (charAt + 9216));
                        } else if (charAt < 127) {
                            sb.append(charAt);
                        } else {
                            if (charAt > 255) {
                                throw new IllegalArgumentException("The string '" + str + "' contains characters outside the 8-bit range: " + charAt + " at position " + i2);
                            }
                            sb.append("〚");
                            sb.append(String.format("%02X", Integer.valueOf(charAt)));
                            sb.append("〛");
                        }
                    }
                    str = sb.toString();
                }
            }
            this.safeToStringRepresentation = str;
        }
        return this.safeToStringRepresentation;
    }
}
