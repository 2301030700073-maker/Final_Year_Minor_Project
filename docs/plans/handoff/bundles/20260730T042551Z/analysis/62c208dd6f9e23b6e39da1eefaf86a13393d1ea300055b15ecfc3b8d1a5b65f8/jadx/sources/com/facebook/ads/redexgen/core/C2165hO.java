package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hO, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2165hO implements CG {
    public static byte[] A01;
    public static String[] A02 = {"RKj", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "UN15gotjq8", "ajoBiEUEQKFJNLqm", "ifgUnXqkKiJSPGKzKRtyUVwCV1ynqJ", "MgNPOwYKG3krpOkrgoqalUsb7GIlLECG", "4d5pH5OlBXd1RidH0kkNXmSukCNaNWUQ", "ZdfTYbLhRFsUmKvgir0oysIbzYx0fUOP"};
    public final /* synthetic */ C2163hM A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 17);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-31, -7, -21, -23, -7, -29};
    }

    static {
        A01();
    }

    public C2165hO(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    public /* synthetic */ C2165hO(C2163hM c2163hM, C2171hU c2171hU) {
        this(c2163hM);
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void ACi() {
        boolean z;
        boolean A0V;
        this.A00.A0a.setToolbarActionMessage(A00(0, 0, 19));
        this.A00.A0I();
        z = this.A00.A0X;
        if (z) {
            A0V = this.A00.A0V();
            String[] strArr = A02;
            if (strArr[5].charAt(0) == strArr[7].charAt(0)) {
                throw new RuntimeException();
            }
            A02[4] = "QDC88FCswtzFK8CArK72WEL9jXMBl5";
            if (A0V) {
                this.A00.A0a.setToolbarActionMode(1);
                return;
            }
        }
        this.A00.A0a.setToolbarActionMode(0);
    }

    @Override // com.facebook.ads.redexgen.core.CG
    public final void AEg(float f) {
        boolean z;
        C08982p c08982p;
        boolean z2;
        AbstractC2478md abstractC2478md;
        float A04;
        AbstractC2478md abstractC2478md2;
        AbstractC2478md abstractC2478md3;
        boolean z3;
        AbstractC2478md abstractC2478md4;
        boolean z4;
        AbstractC2478md abstractC2478md5;
        this.A00.A0O((int) f);
        z = this.A00.A0Y;
        if (!z) {
            c08982p = this.A00.A0J;
            this.A00.A0a.setProgress(100.0f * (1.0f - (f / c08982p.A07())));
            return;
        }
        z2 = this.A00.A0E;
        if (z2) {
            abstractC2478md4 = this.A00.A0I;
            if (A02[6].charAt(27) != 'a') {
                throw new RuntimeException();
            }
            A02[4] = "3MuDy2E798EtOoHK0e0a3SiH1QgAy5";
            A04 = 1.0f - (f / abstractC2478md4.A1b().A0F().A03());
            z4 = this.A00.A0H;
            if (z4 || A04 < 1.0f) {
                this.A00.A0H = false;
                abstractC2478md5 = this.A00.A0I;
                this.A00.A0a.setToolbarActionMessage(abstractC2478md5.A1f().A02().replace(A00(0, 6, 117), String.valueOf((int) f)));
            } else {
                this.A00.A0H = true;
                DQ dq = this.A00.A0a;
                String A00 = A00(0, 0, 19);
                if (A02[3].length() != 16) {
                    dq.setToolbarActionMessage(A00);
                } else {
                    String[] strArr = A02;
                    strArr[5] = "wpbUz5ctYXHuYyRf6fVCU3uRzsMt7dE8";
                    strArr[7] = "BBfRd69Z77LUH69GeqVAIKhho7h2fuMA";
                    dq.setToolbarActionMessage(A00);
                }
            }
        } else {
            abstractC2478md = this.A00.A0I;
            A04 = 1.0f - (f / abstractC2478md.A1b().A0F().A04());
        }
        this.A00.A0a.setProgress(100.0f * A04);
        abstractC2478md2 = this.A00.A0I;
        float A03 = abstractC2478md2.A1b().A0F().A03() - f;
        abstractC2478md3 = this.A00.A0I;
        float percentageOfReward = abstractC2478md3.A1b().A0F().A04();
        boolean z5 = A03 >= percentageOfReward;
        z3 = this.A00.A0H;
        if (!z3 && z5) {
            this.A00.A0a.setToolbarActionMode(1);
        }
    }
}
