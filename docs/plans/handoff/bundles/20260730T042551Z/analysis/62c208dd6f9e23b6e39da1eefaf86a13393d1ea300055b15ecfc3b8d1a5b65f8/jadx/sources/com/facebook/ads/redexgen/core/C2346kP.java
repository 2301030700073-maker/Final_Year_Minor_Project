package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.kP, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2346kP implements InterfaceC10217l {
    public static String[] A02 = {"XqTxzibSN1zAjaiM9LtVSqsxSG", "xqN5bEwB0Nihon7KSuA", "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY", "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE", "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm", "MJLgHxMJm3Fw", "S", "m77T1m6dtAhGTcgbhkAg"};
    public final List<C2496mv> A00;
    public final /* synthetic */ C2345kO A01;

    public C2346kP(C2345kO c2345kO, List<C2496mv> list) {
        this.A01 = c2345kO;
        this.A00 = list;
    }

    private void A00() {
        AnonymousClass72 anonymousClass72;
        AnonymousClass72 anonymousClass722;
        AnonymousClass72 anonymousClass723;
        C2322k1 c2322k1;
        AnonymousClass72 anonymousClass724;
        AnonymousClass72 anonymousClass725;
        C2322k1 c2322k12;
        anonymousClass72 = this.A01.A00;
        anonymousClass72.A05(true);
        anonymousClass722 = this.A01.A00;
        anonymousClass722.A02();
        anonymousClass723 = this.A01.A00;
        anonymousClass723.A03(0);
        Iterator<C2496mv> it = this.A00.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A02[4].charAt(3) == 'E') {
                throw new RuntimeException();
            }
            A02[0] = "GKxyFdZ7ADxfGJ";
            if (hasNext) {
                C2496mv next = it.next();
                c2322k1 = this.A01.A01;
                C2240ih A0K = C2238ie.A0K();
                anonymousClass724 = this.A01.A00;
                C2238ie c2238ie = new C2238ie(c2322k1, next, null, A0K, anonymousClass724.A01());
                if (c2238ie.A0z() != null && c2238ie.A0z().A0F() != null) {
                    ((AbstractC2452mC) c2238ie.A0z().A0F()).A00(c2238ie);
                }
                anonymousClass725 = this.A01.A00;
                c2322k12 = this.A01.A01;
                anonymousClass725.A04(new NativeAd(c2322k12, c2238ie));
            } else {
                BP.A00(new C2347kQ(this));
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACa() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACj() {
        A00();
    }
}
