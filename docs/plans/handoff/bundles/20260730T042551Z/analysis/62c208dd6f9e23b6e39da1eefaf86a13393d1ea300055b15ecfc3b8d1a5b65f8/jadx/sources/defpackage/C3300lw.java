package defpackage;

import com.facebook.appevents.AppEventsConstants;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* renamed from: lw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3300lw {

    /* renamed from: for, reason: not valid java name */
    public static final byte[] f14267for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f14266do = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};

    /* renamed from: if, reason: not valid java name */
    public static final byte[] f14268if = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    /* renamed from: new, reason: not valid java name */
    public static final byte[] f14269new = new byte[128];

    /* renamed from: do, reason: not valid java name */
    public static final Charset f14265do = StandardCharsets.ISO_8859_1;

    static {
        byte[] bArr = new byte[128];
        f14267for = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f14266do;
            if (i2 >= bArr2.length) {
                break;
            }
            byte b = bArr2[i2];
            if (b > 0) {
                f14267for[b] = (byte) i2;
            }
            i2++;
        }
        Arrays.fill(f14269new, (byte) -1);
        while (true) {
            byte[] bArr3 = f14268if;
            if (i >= bArr3.length) {
                return;
            }
            byte b2 = bArr3[i];
            if (b2 > 0) {
                f14269new[b2] = (byte) i;
            }
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7402do(byte[] bArr, int i, int i2, StringBuilder sb) {
        int i3;
        if (i == 1 && i2 == 0) {
            sb.append((char) 913);
        } else if (i % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i >= 6) {
            char[] cArr = new char[5];
            i3 = 0;
            while ((0 + i) - i3 >= 6) {
                long j = 0;
                for (int i4 = 0; i4 < 6; i4++) {
                    j = (j << 8) + (bArr[i3 + i4] & 255);
                }
                for (int i5 = 0; i5 < 5; i5++) {
                    cArr[i5] = (char) (j % 900);
                    j /= 900;
                }
                for (int i6 = 4; i6 >= 0; i6--) {
                    sb.append(cArr[i6]);
                }
                i3 += 6;
            }
        } else {
            i3 = 0;
        }
        while (i3 < 0 + i) {
            sb.append((char) (bArr[i3] & 255));
            i3++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0102 A[EDGE_INSN: B:23:0x0102->B:24:0x0102 BREAK  A[LOOP:0: B:2:0x000e->B:18:0x000e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x000e A[SYNTHETIC] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m7403for(java.lang.CharSequence r17, int r18, int r19, java.lang.StringBuilder r20, int r21) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3300lw.m7403for(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7404if(int i, int i2, String str, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900L);
        BigInteger valueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int min = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + min));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(valueOf).intValue());
                bigInteger = bigInteger.divide(valueOf);
            } while (!bigInteger.equals(valueOf2));
            int length = sb2.length();
            while (true) {
                length--;
                if (length >= 0) {
                    sb.append(sb2.charAt(length));
                }
            }
            i3 += min;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m7405new(char c) {
        if (c != ' ') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m7406try(char c) {
        if (c != ' ') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }
}
