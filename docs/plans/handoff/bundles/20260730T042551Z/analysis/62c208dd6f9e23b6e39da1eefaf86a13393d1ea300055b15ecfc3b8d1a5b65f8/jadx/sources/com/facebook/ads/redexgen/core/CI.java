package com.facebook.ads.redexgen.core;

import android.app.Activity;
import android.os.Build;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class CI implements Runnable {
    public static byte[] A04;
    public static String[] A05 = {"rpDB7rKXNsFsWkDz6IFMGYiQm5SIurhV", "Zw7gqQaUB6b8OXSgkCM5acQChbi0fPQB", "ij96xAlSFdb9T8", "9lv2KZaF3yGNFfkp5oM5AxENUzlVWnoh", "BtiLNkHShKV4ox8o5K74B7kMcT6dIDQ3", "4qYR1HKsivt0y2MxZdwkaRz4cXsJEuH0", "44IOIp9GJ1CB282l", "5xjMlDyVDQDeuAskdNZft2cHBWd2iktp"};
    public final /* synthetic */ C08902h A00;
    public final /* synthetic */ CL A01;
    public final /* synthetic */ String A02;
    public final /* synthetic */ String A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 29);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{56, 62, 40, 63, 46, 33, 36, 46, 38};
    }

    static {
        A01();
    }

    public CI(CL cl, String str, C08902h c08902h, String str2) {
        this.A01 = cl;
        this.A03 = str;
        this.A00 = c08902h;
        this.A02 = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        C2322k1 c2322k1;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A01.A00;
            if (!z) {
                return;
            }
            boolean z2 = false;
            this.A01.A00 = false;
            c2322k1 = this.A01.A03;
            Activity A0E = c2322k1.A0E();
            boolean z3 = false;
            int i = Build.VERSION.SDK_INT;
            String[] strArr = A05;
            if (strArr[1].charAt(30) != strArr[4].charAt(30)) {
                throw new RuntimeException();
            }
            A05[2] = "zngGPNErwRp983";
            if (i >= 24) {
                if (A0E != null && A0E.isInMultiWindowMode()) {
                    z2 = true;
                }
                z3 = z2;
            }
            if (!z3 && C1116Bw.A00().A03()) {
                return;
            }
            this.A01.A05(this.A03 != null ? this.A03 : A00(0, 9, 80), this.A00, this.A02);
        } catch (Throwable th) {
            if (A05[2].length() != 14) {
                BQ.A00(th, this);
            } else {
                A05[2] = "Mnh0XYPOQy81qp";
                BQ.A00(th, this);
            }
        }
    }
}
