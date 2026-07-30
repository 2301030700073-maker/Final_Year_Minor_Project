package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Oy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1443Oy implements InterfaceC2046fS {
    public static final List<C1444Oz> A01 = new ArrayList(50);
    public final Handler A00;

    public C1443Oy(Handler handler) {
        this.A00 = handler;
    }

    public static C1444Oz A00() {
        C1444Oz c1444Oz;
        synchronized (A01) {
            c1444Oz = A01.isEmpty() ? new C1444Oz() : A01.remove(A01.size() - 1);
        }
        return c1444Oz;
    }

    public static void A01(C1444Oz c1444Oz) {
        synchronized (A01) {
            if (A01.size() < 50) {
                A01.add(c1444Oz);
            }
        }
    }

    public final boolean A03(Runnable runnable) {
        return this.A00.post(runnable);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final Looper A8H() {
        return this.A00.getLooper();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final boolean A9d(int i) {
        return this.A00.hasMessages(i);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final C1444Oz AC1(int i) {
        return A00().A01(this.A00.obtainMessage(i), this);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final C1444Oz AC2(int i, int i2, int i3) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3), this);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final C1444Oz AC3(int i, int i2, int i3, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final C1444Oz AC4(int i, Object obj) {
        return A00().A01(this.A00.obtainMessage(i, obj), this);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final void AHZ(int i) {
        this.A00.removeMessages(i);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final boolean AIG(int i) {
        return this.A00.sendEmptyMessage(i);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final boolean AIH(int i, long j) {
        return this.A00.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2046fS
    public final boolean AIJ(InterfaceC2045fR interfaceC2045fR) {
        return ((C1444Oz) interfaceC2045fR).A03(this.A00);
    }
}
