package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;

/* renamed from: km, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3231km {

    /* renamed from: do, reason: not valid java name */
    public static final C3488p6 f14037do = C3488p6.m7786this("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f14038do = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: if, reason: not valid java name */
    public static final String[] f14040if = new String[64];

    /* renamed from: for, reason: not valid java name */
    public static final String[] f14039for = new String[256];

    static {
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = f14039for;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = SJ.m2132class("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = f14040if;
        strArr2[0] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        strArr2[1 | 8] = Creturn.m7984try(new StringBuilder(), strArr2[1], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr2[i3];
            int i5 = iArr[0];
            String[] strArr3 = f14040if;
            int i6 = i5 | i4;
            strArr3[i6] = strArr3[i5] + '|' + strArr3[i4];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i5]);
            sb.append('|');
            strArr3[i6 | 8] = Creturn.m7984try(sb, strArr3[i4], "|PADDED");
        }
        while (true) {
            String[] strArr4 = f14040if;
            if (i >= strArr4.length) {
                return;
            }
            if (strArr4[i] == null) {
                strArr4[i] = f14039for[i];
            }
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m7276do(boolean z, int i, int i2, byte b, byte b2) {
        String str;
        String[] strArr = f14038do;
        String m2132class = b < strArr.length ? strArr[b] : SJ.m2132class("0x%02x", Byte.valueOf(b));
        if (b2 == 0) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            String[] strArr2 = f14039for;
            if (b != 2 && b != 3) {
                if (b == 4 || b == 6) {
                    str = b2 == 1 ? "ACK" : strArr2[b2];
                } else if (b != 7 && b != 8) {
                    String[] strArr3 = f14040if;
                    String str2 = b2 < strArr3.length ? strArr3[b2] : strArr2[b2];
                    str = (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED") : str2.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            str = strArr2[b2];
        }
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = m2132class;
        objArr[4] = str;
        return SJ.m2132class("%s 0x%08x %5d %-13s %s", objArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7277if(String str, Object... objArr) {
        throw new IOException(SJ.m2132class(str, objArr));
    }
}
