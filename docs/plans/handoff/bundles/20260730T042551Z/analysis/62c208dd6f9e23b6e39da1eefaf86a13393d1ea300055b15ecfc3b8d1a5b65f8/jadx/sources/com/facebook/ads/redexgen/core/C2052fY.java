package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: com.facebook.ads.redexgen.X.fY, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2052fY<T> {
    public static byte[] A09;
    public static String[] A0A = {"UuLgjUOIdyGS", "ee6yES2M3", "DH1W5VPkD68OHV5TXQZBMwP", "XgArYMb", "rlcAueV0YRu7ViMRxjPXXB7wxVHCqlgX", "giRCnbhmv8XTp9tbMUeioURlJgICIUe1", "BYkF1ZhmMA6H", "oMzlOxjvbUq0Bzk1AXuAobFM66"};
    public boolean A00;
    public boolean A01;
    public final InterfaceC2018ez A02;
    public final InterfaceC2046fS A03;
    public final InterfaceC2050fW<T> A04;
    public final Object A05;
    public final ArrayDeque<Runnable> A06;
    public final ArrayDeque<Runnable> A07;
    public final CopyOnWriteArraySet<C2051fX<T>> A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public C2052fY(CopyOnWriteArraySet<C2051fX<T>> copyOnWriteArraySet, Looper looper, InterfaceC2018ez interfaceC2018ez, InterfaceC2050fW<T> interfaceC2050fW) {
        this.A02 = interfaceC2018ez;
        this.A08 = copyOnWriteArraySet;
        this.A04 = interfaceC2050fW;
        this.A05 = new Object();
        this.A06 = new ArrayDeque<>();
        this.A07 = new ArrayDeque<>();
        this.A03 = interfaceC2018ez.A5F(looper, new Handler.Callback() { // from class: com.facebook.ads.redexgen.X.fU
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean A05;
                A05 = C2052fY.this.A05(message);
                return A05;
            }
        });
        this.A01 = true;
        this.A00 = MetaExoPlayerUpgradeConfig.A03(EnumC1387Mn.A0E);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A09 = new byte[]{123, 124, 100, 125, 121, 119, 18, 15, 30, 9, 26, 15, 18, 20, 21, 61, 18, 21, 18, 8, 19, 30, 31};
    }

    static {
        A03();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fW != com.google.android.exoplayer2.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    public C2052fY(Looper looper, InterfaceC2018ez interfaceC2018ez, InterfaceC2050fW<T> interfaceC2050fW) {
        this(new CopyOnWriteArraySet(), looper, interfaceC2018ez, interfaceC2050fW);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fW != com.google.android.exoplayer2.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    private final C2052fY<T> A00(Looper looper, InterfaceC2018ez interfaceC2018ez, InterfaceC2050fW<T> interfaceC2050fW) {
        return new C2052fY<>(this.A08, looper, interfaceC2018ez, interfaceC2050fW);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    private void A02() {
        if (!this.A01) {
            return;
        }
        AbstractC2011es.A08(Thread.currentThread() == this.A03.A8H().getThread());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fX != com.google.android.exoplayer2.util.ListenerSet$ListenerHolder<T> */
    public static /* synthetic */ void A04(CopyOnWriteArraySet copyOnWriteArraySet, int i, InterfaceC2049fV interfaceC2049fV) {
        Iterator it = copyOnWriteArraySet.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(0, 6, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fX != com.google.android.exoplayer2.util.ListenerSet$ListenerHolder<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    public boolean A05(Message message) {
        Iterator<C2051fX<T>> it = this.A08.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(6, 17, 7));
        }
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fW != com.google.android.exoplayer2.util.ListenerSet$IterationFinishedEvent<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    public final C2052fY<T> A07(Looper looper, InterfaceC2050fW<T> interfaceC2050fW) {
        return A00(looper, this.A02, interfaceC2050fW);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    /* JADX WARN: Incorrect condition in loop: B:14:0x005b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A08() {
        /*
            r6 = this;
            r6.A02()
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A07
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lc
            return
        Lc:
            com.facebook.ads.redexgen.X.fS r0 = r6.A03
            r2 = 0
            boolean r0 = r0.A9d(r2)
            if (r0 != 0) goto L20
            com.facebook.ads.redexgen.X.fS r1 = r6.A03
            com.facebook.ads.redexgen.X.fS r0 = r6.A03
            com.facebook.ads.redexgen.X.Oz r0 = r0.AC1(r2)
            r1.AIJ(r0)
        L20:
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A06
            boolean r0 = r0.isEmpty()
            r5 = r0 ^ 1
            java.util.ArrayDeque<java.lang.Runnable> r4 = r6.A06
            java.util.ArrayDeque<java.lang.Runnable> r3 = r6.A07
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C2052fY.A0A
            r0 = 1
            r1 = r2[r0]
            r0 = 6
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L77
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C2052fY.A0A
            java.lang.String r1 = "UNsujj5bBKI2lC9QEO6YJnt"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "dXWZh9dgGEaI"
            r0 = 0
            r2[r0] = r1
            r4.addAll(r3)
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A07
            r0.clear()
            if (r5 == 0) goto L55
            return
        L55:
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A06
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L94
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A06
            java.lang.Object r3 = r0.peekFirst()
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C2052fY.A0A
            r0 = 4
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 27
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L7d
        L77:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L7d:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C2052fY.A0A
            java.lang.String r1 = "JjeenRb0h"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "RHSD9U62NwjI"
            r0 = 6
            r2[r0] = r1
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            r3.run()
            java.util.ArrayDeque<java.lang.Runnable> r0 = r6.A06
            r0.removeFirst()
            goto L55
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C2052fY.A08():void");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fV != com.google.android.exoplayer2.util.ListenerSet$Event<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fX != com.google.android.exoplayer2.util.ListenerSet$ListenerHolder<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    public final void A09(final int i, final InterfaceC2049fV<T> interfaceC2049fV) {
        A02();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.A08);
        if (this.A00) {
            Iterator it = copyOnWriteArraySet.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NullPointerException(A01(0, 6, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD));
            }
            return;
        }
        this.A07.add(new Runnable() { // from class: com.facebook.ads.redexgen.X.fT
            @Override // java.lang.Runnable
            public final void run() {
                C2052fY.A04(copyOnWriteArraySet, i, interfaceC2049fV);
            }
        });
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fV != com.google.android.exoplayer2.util.ListenerSet$Event<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fY != com.google.android.exoplayer2.util.ListenerSet<T> */
    public final void A0A(int i, InterfaceC2049fV<T> interfaceC2049fV) {
        A09(i, interfaceC2049fV);
        A08();
    }
}
