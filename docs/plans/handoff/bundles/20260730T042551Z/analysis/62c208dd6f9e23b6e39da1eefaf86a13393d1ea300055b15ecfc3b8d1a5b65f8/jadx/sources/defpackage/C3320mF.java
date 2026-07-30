package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.net.ProtocolException;

/* renamed from: mF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3320mF {

    /* renamed from: do, reason: not valid java name */
    public final int f14323do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14324do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC3538py f14325do;

    public C3320mF(EnumC3538py enumC3538py, int i, String str) {
        this.f14325do = enumC3538py;
        this.f14323do = i;
        this.f14324do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3320mF m7449do(String str) {
        int i;
        String str2;
        boolean startsWith = str.startsWith("HTTP/1.");
        EnumC3538py enumC3538py = EnumC3538py.HTTP_1_0;
        if (startsWith) {
            i = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt != 0) {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                enumC3538py = EnumC3538py.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                str2 = str.substring(i + 4);
            }
            return new C3320mF(enumC3538py, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14325do == EnumC3538py.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f14323do);
        String str = this.f14324do;
        if (str != null) {
            sb.append(' ');
            sb.append(str);
        }
        return sb.toString();
    }
}
