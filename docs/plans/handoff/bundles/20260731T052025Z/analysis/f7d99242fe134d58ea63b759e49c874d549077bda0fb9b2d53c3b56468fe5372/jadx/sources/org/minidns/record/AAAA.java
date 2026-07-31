package org.minidns.record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AAAA extends InternetAddressRR {
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            byte[] bArr = this.ip;
            if (i >= bArr.length) {
                return sb.toString();
            }
            if (i != 0) {
                sb.append(':');
            }
            sb.append(Integer.toHexString(((bArr[i] & 255) << 8) + (bArr[i + 1] & 255)));
            i += 2;
        }
    }
}
