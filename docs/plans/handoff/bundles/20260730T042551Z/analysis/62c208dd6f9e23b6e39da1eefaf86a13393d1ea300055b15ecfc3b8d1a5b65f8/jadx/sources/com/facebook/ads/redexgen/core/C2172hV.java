package com.facebook.ads.redexgen.core;

import java.lang.ref.WeakReference;

/* renamed from: com.facebook.ads.redexgen.X.hV, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2172hV extends JK {
    public static String[] A01 = {"M3Te92XvVv4q3bfKEkaCq6oPQP87x4vv", "LzmiiHhJsyKuUkJv7K1Ir2o", "KopJ75", "b4r1pmUHtrvrrbICXjY", "ceBgm8EiRhrot5ffXZtZ35omPt2ZFFf0", "0EayevzsZQe4lRY4RLfa4MEWre", "N9h8Vj", "K1Ob6mZ8MwS9WZtXZ80XEzEALvtTcRJ2"};
    public final /* synthetic */ C1159Dn A00;

    public C2172hV(C1159Dn c1159Dn) {
        this.A00 = c1159Dn;
    }

    @Override // com.facebook.ads.redexgen.core.JK
    public final void A03() {
        AbstractC1153Dh abstractC1153Dh;
        JL jl;
        C1141Cv c1141Cv;
        WeakReference weakReference;
        JL jl2;
        C1141Cv c1141Cv2;
        AbstractC1153Dh abstractC1153Dh2;
        JL jl3;
        abstractC1153Dh = this.A00.A07;
        if (abstractC1153Dh != null) {
            abstractC1153Dh2 = this.A00.A07;
            if (!abstractC1153Dh2.A0D()) {
                jl3 = this.A00.A09;
                jl3.A0T();
                return;
            }
        }
        jl = this.A00.A09;
        jl.A0V();
        c1141Cv = this.A00.A05;
        if (!c1141Cv.A07()) {
            c1141Cv2 = this.A00.A05;
            c1141Cv2.A05();
        }
        weakReference = this.A00.A0B;
        InterfaceC1158Dm listener = (InterfaceC1158Dm) weakReference.get();
        if (listener != null) {
            listener.ADP();
        }
        C1159Dn c1159Dn = this.A00;
        String[] strArr = A01;
        if (strArr[1].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "2rS8p9kEkH8XxeBlGl7RSlB";
        strArr2[3] = "nqXy6qNf0NylKakjBUJ";
        jl2 = c1159Dn.A09;
        jl2.A0V();
    }
}
