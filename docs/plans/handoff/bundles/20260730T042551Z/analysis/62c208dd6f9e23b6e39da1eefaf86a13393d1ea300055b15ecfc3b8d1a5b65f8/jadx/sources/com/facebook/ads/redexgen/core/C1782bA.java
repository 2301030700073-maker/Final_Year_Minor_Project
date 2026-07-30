package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.facebook.ads.redexgen.X.bA, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1782bA {
    public final int A00;
    public final R5 A01;
    public final long A02;
    public final CopyOnWriteArrayList<C1781b9> A03;

    public C1782bA() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public C1782bA(CopyOnWriteArrayList<C1781b9> copyOnWriteArrayList, int i, R5 r5, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = r5;
        this.A02 = j;
    }

    private long A00(long j) {
        long A0P = AbstractC2094gE.A0P(j);
        if (A0P == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long mediaTimeMs = this.A02;
        return mediaTimeMs + A0P;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    private final void A01(final C1766ar c1766ar, final C1769au c1769au, final int i) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 next = it.next();
            final InterfaceC1783bB interfaceC1783bB = next.A01;
            AbstractC2094gE.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.b4
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final C1782bA A02(int i, R5 r5, long j) {
        return new C1782bA(this.A03, i, r5, j);
    }

    public final void A03(int i, ZM zm, int i2, Object obj, long j) {
        A0C(new C1769au(1, i, zm, i2, obj, A00(j), -9223372036854775807L));
    }

    public final void A04(Handler handler, InterfaceC1783bB interfaceC1783bB) {
        AbstractC2011es.A01(handler);
        AbstractC2011es.A01(interfaceC1783bB);
        this.A03.add(new C1781b9(handler, interfaceC1783bB));
    }

    public final void A05(C1766ar c1766ar, int i, int i2, ZM zm, int i3, Object obj, long j, long j2) {
        A09(c1766ar, new C1769au(i, i2, zm, i3, obj, A00(j), A00(j2)));
    }

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "https://github.com/androidx/media/pull/1768")
    public final void A06(C1766ar c1766ar, int i, int i2, ZM zm, int i3, Object obj, long j, long j2, int i4) {
        A01(c1766ar, new C1769au(i, i2, zm, i3, obj, A00(j), A00(j2)), i4);
    }

    public final void A07(C1766ar c1766ar, int i, int i2, ZM zm, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        A0A(c1766ar, new C1769au(i, i2, zm, i3, obj, A00(j), A00(j2)), iOException, z);
    }

    public final void A08(@MetaExoPlayerCustomization C1766ar c1766ar, @MetaExoPlayerCustomization int i, int i2, ZM zm, int i3, Object obj, long j, long j2, Object obj2, Object obj3) {
        A0B(c1766ar, new C1769au(i, i2, zm, i3, obj, A00(j), A00(j2)), obj2, obj3);
    }

    public final void A09(final C1766ar c1766ar, final C1769au c1769au) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 next = it.next();
            final InterfaceC1783bB listener = next.A01;
            AbstractC2094gE.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.b3
                @Override // java.lang.Runnable
                public final void run() {
                    C1782bA.this.A0E(listener, c1766ar, c1769au);
                }
            });
        }
    }

    public final void A0A(final C1766ar c1766ar, final C1769au c1769au, final IOException iOException, final boolean z) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 next = it.next();
            final InterfaceC1783bB interfaceC1783bB = next.A01;
            AbstractC2094gE.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.b2
                @Override // java.lang.Runnable
                public final void run() {
                    C1782bA.this.A0F(interfaceC1783bB, c1766ar, c1769au, iOException, z);
                }
            });
        }
    }

    public final void A0B(@MetaExoPlayerCustomization final C1766ar c1766ar, @MetaExoPlayerCustomization final C1769au c1769au, final Object obj, final Object obj2) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 next = it.next();
            final InterfaceC1783bB interfaceC1783bB = next.A01;
            AbstractC2094gE.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.b7
                @Override // java.lang.Runnable
                public final void run() {
                    C1782bA.this.A0G(interfaceC1783bB, c1766ar, c1769au, obj, obj2);
                }
            });
        }
    }

    public final void A0C(final C1769au c1769au) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 next = it.next();
            final InterfaceC1783bB listener = next.A01;
            AbstractC2094gE.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.b8
                @Override // java.lang.Runnable
                public final void run() {
                    C1782bA.this.A0H(listener, c1769au);
                }
            });
        }
    }

    public final void A0D(InterfaceC1783bB interfaceC1783bB) {
        Iterator<C1781b9> it = this.A03.iterator();
        while (it.hasNext()) {
            C1781b9 listenerAndHandler = it.next();
            if (listenerAndHandler.A01 == interfaceC1783bB) {
                this.A03.remove(listenerAndHandler);
            }
        }
    }

    public final /* synthetic */ void A0E(InterfaceC1783bB interfaceC1783bB, C1766ar c1766ar, C1769au c1769au) {
        interfaceC1783bB.ADp(this.A00, this.A01, c1766ar, c1769au);
    }

    public final /* synthetic */ void A0F(InterfaceC1783bB interfaceC1783bB, C1766ar c1766ar, C1769au c1769au, IOException iOException, boolean z) {
        interfaceC1783bB.ADu(this.A00, this.A01, c1766ar, c1769au, iOException, z);
    }

    public final /* synthetic */ void A0G(InterfaceC1783bB interfaceC1783bB, C1766ar c1766ar, C1769au c1769au, Object obj, Object obj2) {
        interfaceC1783bB.ADr(this.A00, this.A01, c1766ar, c1769au, obj, obj2);
    }

    public final /* synthetic */ void A0H(InterfaceC1783bB interfaceC1783bB, C1769au c1769au) {
        interfaceC1783bB.ACz(this.A00, this.A01, c1769au);
    }
}
