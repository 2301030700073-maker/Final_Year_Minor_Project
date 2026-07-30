package com.facebook.ads.redexgen.core;

import android.content.Intent;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Lm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1365Lm extends AbstractC2191hq {
    public static byte[] A01;
    public static String[] A02 = {"69whQSJFXzC5tMS1mvBQof2SK7ErE5ZD", "1jHEgafKgZ1qGtZeFln5jYEaZuoTSi1L", "X7dL0uEA8hI8yFDxVjmpGWGPGaRf3imC", "xkNxR1N5ht6u5HrBYV6Jaj9BRbbqvvjX", "FzWiIV8jsRMCATg74qRy8XJg", "NPgeBhkCK5cdUCtVbQG3V7Bzbyz9qF6p", "wkBgnizDM2wMuU", "fQJYdDBiu8hI0YoMzyDMv7ESaoH1tCRU"};
    public final /* synthetic */ C1159Dn A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A02;
            if (strArr[5].charAt(30) == strArr[3].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[5] = "zFlqgUHcpRBmVFunDUsFQIo1zDN3Ly6W";
            strArr2[3] = "vgtBZdmtnd3XTM9GsG6r3isUaM0HNLHl";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 4);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{-102};
    }

    static {
        A01();
    }

    public C1365Lm(C1159Dn c1159Dn) {
        this.A00 = c1159Dn;
    }

    @Override // com.facebook.ads.redexgen.core.DR
    public final void A4Z(String str) {
        String str2;
        C2322k1 c2322k1;
        StringBuilder append = new StringBuilder().append(str).append(A00(0, 1, 92));
        str2 = this.A00.A0A;
        Intent intent = new Intent(append.append(str2).toString());
        c2322k1 = this.A00.A02;
        AnonymousClass42.A00(c2322k1).A07(intent);
    }
}
