package com.facebook.ads.redexgen.core;

/* loaded from: assets/audience_network.dex */
public class HC implements Runnable {
    public static String[] A01 = {"2Fm0K3iCPRr4s", "EU0X6MVFAjFTSb3IQ96JVLxBODK0ji7f", "kCaGUq5JvggeMgMKx8S0y94YuIT5XcC8", "RnkBIHZpUwOry9GZ8kTuD", "sA1zdgzxdT", "CEtS1j3lrrmxulYDjXKY", "vw2xXVPQEGSMd83f0P3isbbUyKAy6xNq", "SkmV6xyVRRhMHUmgX0z0vsybBVz87hUy"};
    public final /* synthetic */ C1345Kr A00;

    public HC(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (BQ.A02(this)) {
            return;
        }
        try {
            z = this.A00.A0K;
            if (!z) {
                return;
            }
            this.A00.A0O();
        } catch (Throwable th) {
            BQ.A00(th, this);
            if (A01[1].charAt(30) != '7') {
                throw new RuntimeException();
            }
            A01[6] = "J2Oqtidk0iYMOENvLyv0dYeMHatuKemd";
        }
    }
}
