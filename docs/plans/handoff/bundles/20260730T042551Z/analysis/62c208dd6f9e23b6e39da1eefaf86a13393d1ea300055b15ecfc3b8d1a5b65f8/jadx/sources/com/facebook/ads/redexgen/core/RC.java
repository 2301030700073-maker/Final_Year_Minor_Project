package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.Timeline;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: assets/audience_network.dex */
public abstract class RC implements InterfaceC1774az {
    public static String[] A07 = {"bvkjR0z2JuCPgN2uAbpqPjh1auWjFN2m", "jDmTxi1msFLiyIykemTdf3SyMPUAROGA", "OXoBlYAGv7iOLjHl9567wWnPGXT5zRPb", "Efu31", "aky9HEhQ7EdDCqCiIpT5H8t2NR6VgViF", "iq3qY", "qXUoBaVWj6OuQ8", "Oco5vFKqVajXf16TyX0nMhcG593FlptK"};
    public Looper A00;
    public Timeline A01;
    public RK A02;
    public final ArrayList<InterfaceC1773ay> A05 = new ArrayList<>(1);
    public final HashSet<InterfaceC1773ay> A06 = new HashSet<>(1);
    public final C1782bA A04 = new C1782bA();
    public final TJ A03 = new TJ();

    public abstract void A09();

    public abstract void A0A(InterfaceC1980eN interfaceC1980eN);

    public final RK A00() {
        return (RK) AbstractC2011es.A02(this.A02);
    }

    public final TJ A01(R5 r5) {
        return this.A03.A00(0, r5);
    }

    public final C1782bA A02(R5 r5) {
        return this.A04.A02(0, r5, 0L);
    }

    public void A03() {
    }

    public void A04() {
    }

    public final void A05(Timeline timeline) {
        this.A01 = timeline;
        Iterator<InterfaceC1773ay> it = this.A05.iterator();
        while (it.hasNext()) {
            it.next().AFA(this, timeline);
        }
    }

    public final void A06(InterfaceC1773ay interfaceC1773ay) {
        boolean z = !this.A06.isEmpty();
        this.A06.remove(interfaceC1773ay);
        if (z) {
            boolean wasEnabled = this.A06.isEmpty();
            if (wasEnabled) {
                A03();
            }
        }
    }

    public final void A07(InterfaceC1773ay interfaceC1773ay) {
        AbstractC2011es.A01(this.A00);
        boolean isEmpty = this.A06.isEmpty();
        this.A06.add(interfaceC1773ay);
        if (isEmpty) {
            A04();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A08(com.facebook.ads.redexgen.core.InterfaceC1773ay r5, com.facebook.ads.redexgen.core.InterfaceC1980eN r6, com.facebook.ads.redexgen.core.RK r7) {
        /*
            r4 = this;
            android.os.Looper r3 = android.os.Looper.myLooper()
            android.os.Looper r0 = r4.A00
            if (r0 == 0) goto Lc
            android.os.Looper r0 = r4.A00
            if (r0 != r3) goto L4c
        Lc:
            r0 = 1
        Ld:
            com.facebook.ads.redexgen.core.AbstractC2011es.A07(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.RC.A07
            r0 = 7
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 86
            if (r1 == r0) goto L4e
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.RC.A07
            java.lang.String r1 = "50KTM"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "Za3v7"
            r0 = 3
            r2[r0] = r1
            r4.A02 = r7
            com.google.android.exoplayer2.Timeline r1 = r4.A01
            java.util.ArrayList<com.facebook.ads.redexgen.X.ay> r0 = r4.A05
            r0.add(r5)
            android.os.Looper r0 = r4.A00
            if (r0 != 0) goto L43
            r4.A00 = r3
            java.util.HashSet<com.facebook.ads.redexgen.X.ay> r0 = r4.A06
            r0.add(r5)
            r4.A0A(r6)
        L42:
            return
        L43:
            if (r1 == 0) goto L42
            r4.A07(r5)
            r5.AFA(r4, r1)
            goto L42
        L4c:
            r0 = 0
            goto Ld
        L4e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.RC.A08(com.facebook.ads.redexgen.X.ay, com.facebook.ads.redexgen.X.eN, com.facebook.ads.redexgen.X.RK):void");
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void A3p(Handler handler, InterfaceC1783bB interfaceC1783bB) {
        AbstractC2011es.A01(handler);
        AbstractC2011es.A01(interfaceC1783bB);
        this.A04.A04(handler, interfaceC1783bB);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void AGF(InterfaceC1773ay interfaceC1773ay, InterfaceC1980eN interfaceC1980eN) {
        A08(interfaceC1773ay, interfaceC1980eN, RK.A03);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void AGt(InterfaceC1773ay interfaceC1773ay) {
        this.A05.remove(interfaceC1773ay);
        if (this.A05.isEmpty()) {
            this.A00 = null;
            this.A01 = null;
            this.A02 = null;
            this.A06.clear();
            A09();
            return;
        }
        A06(interfaceC1773ay);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void AHY(InterfaceC1783bB interfaceC1783bB) {
        this.A04.A0D(interfaceC1783bB);
    }
}
