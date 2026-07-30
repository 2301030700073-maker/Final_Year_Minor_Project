package com.facebook.ads.redexgen.core;

import android.os.Handler;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.k6, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2327k6 extends BY {
    public static String[] A05 = {"peP5GJDM9me8QDpiMTE0HYbhk5UQvsuj", "UmJsGkUZcFFvxG21gGzKuNxtLbnsNH0B", "InCZKAYVJ2xyVT3RLHGk", "cxu83bHx4KSubY78z6WW", "55WyHuuOCemh1dLUozRA9kNqY", "hUMsj3tCoCX6inz1bILbzXUTN", "Ib1pT8H4oQaxudtz", "STVRCs5pIYaR1pHj"};
    public final /* synthetic */ InterfaceC10217l A00;
    public final /* synthetic */ C10227m A01;
    public final /* synthetic */ C10297t A02;
    public final /* synthetic */ ArrayList A03;
    public final /* synthetic */ ArrayList A04;

    public C2327k6(C10297t c10297t, ArrayList arrayList, C10227m c10227m, InterfaceC10217l interfaceC10217l, ArrayList arrayList2) {
        this.A02 = c10297t;
        this.A03 = arrayList;
        this.A01 = c10227m;
        this.A00 = interfaceC10217l;
        this.A04 = arrayList2;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        AtomicBoolean A0D;
        AnonymousClass85 anonymousClass85;
        Handler handler;
        AnonymousClass85 anonymousClass852;
        long j;
        long j2;
        long j3;
        long j4;
        A0D = C10297t.A0D(this.A03);
        anonymousClass85 = this.A02.A04;
        if (anonymousClass85 instanceof C2322k1) {
            anonymousClass852 = this.A02.A04;
            C2322k1 c2322k1 = (C2322k1) anonymousClass852;
            if (this.A01.A00 == -1) {
                boolean z = A0D.get();
                String[] strArr = A05;
                if (strArr[6].length() == strArr[7].length()) {
                    String[] strArr2 = A05;
                    strArr2[3] = "VVOoEaVD2AhQqE2eihnl";
                    strArr2[2] = "7KTPepw5ZZxiUEMCto3C";
                    if (z) {
                        InterfaceC08621f A0F = c2322k1.A0F();
                        j4 = this.A02.A00;
                        A0F.A4f(C1140Cu.A01(j4));
                    } else {
                        InterfaceC08621f A0F2 = c2322k1.A0F();
                        j3 = this.A02.A00;
                        A0F2.A4d(C1140Cu.A01(j3));
                    }
                }
                throw new RuntimeException();
            }
            if (A0D.get()) {
                InterfaceC08621f A0F3 = c2322k1.A0F();
                j2 = this.A02.A00;
                long A01 = C1140Cu.A01(j2);
                C10227m c10227m = this.A01;
                String[] strArr3 = A05;
                if (strArr3[4].length() == strArr3[5].length()) {
                    String[] strArr4 = A05;
                    strArr4[4] = "xsAs6ZK2AKeTr6tr707KlGvOM";
                    strArr4[5] = "GxI5mwrGpMJ9ldsuxbhmmAcT7";
                    A0F3.A4g(A01, c10227m.A00);
                }
                throw new RuntimeException();
            }
            InterfaceC08621f A0F4 = c2322k1.A0F();
            j = this.A02.A00;
            A0F4.A4e(C1140Cu.A01(j), this.A01.A00);
        }
        handler = this.A02.A02;
        handler.post(new C2328k7(this, A0D));
        C10297t.A0D(this.A04);
    }
}
