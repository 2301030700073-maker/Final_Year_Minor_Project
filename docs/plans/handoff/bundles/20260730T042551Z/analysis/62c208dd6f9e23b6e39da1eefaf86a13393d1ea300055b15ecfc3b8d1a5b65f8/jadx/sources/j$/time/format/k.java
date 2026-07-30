package j$.time.format;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* loaded from: classes2.dex */
final class k implements g {
    static final String[] d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};
    static final k e = new k("+HH:MM:ss", "Z");
    private final String a;
    private final int b;
    private final int c;

    static {
        new k("+HH:MM:ss", AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = d;
            if (i >= 22) {
                throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
            }
            if (strArr[i].equals(str)) {
                this.b = i;
                this.c = i % 11;
                this.a = str2;
                return;
            }
            i++;
        }
    }

    private static void a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? CertificateUtil.DELIMITER : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    @Override // j$.time.format.g
    public final boolean i(r rVar, StringBuilder sb) {
        Long e2 = rVar.e(j$.time.temporal.a.OFFSET_SECONDS);
        boolean z = false;
        if (e2 == null) {
            return false;
        }
        long longValue = e2.longValue();
        int i = (int) longValue;
        if (longValue != i) {
            throw new ArithmeticException();
        }
        if (i != 0) {
            int abs = Math.abs((i / 3600) % 100);
            int abs2 = Math.abs((i / 60) % 60);
            int abs3 = Math.abs(i % 60);
            int length = sb.length();
            sb.append(i < 0 ? "-" : "+");
            if ((this.b < 11) || abs >= 10) {
                a(false, abs, sb);
            } else {
                sb.append((char) (abs + 48));
            }
            int i2 = this.c;
            if ((i2 >= 3 && i2 <= 8) || ((i2 >= 9 && abs3 > 0) || (i2 >= 1 && abs2 > 0))) {
                a(i2 > 0 && i2 % 2 == 0, abs2, sb);
                abs += abs2;
                if (i2 == 7 || i2 == 8 || (i2 >= 5 && abs3 > 0)) {
                    if (i2 > 0 && i2 % 2 == 0) {
                        z = true;
                    }
                    a(z, abs3, sb);
                    abs += abs3;
                }
            }
            if (abs == 0) {
                sb.setLength(length);
            }
            return true;
        }
        sb.append(this.a);
        return true;
    }

    public final String toString() {
        String replace = this.a.replace("'", "''");
        return "Offset(" + d[this.b] + ",'" + replace + "')";
    }
}
