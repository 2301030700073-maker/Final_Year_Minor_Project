package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.n6, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2507n6 implements InterfaceC1230Gg {
    public final /* synthetic */ N5 A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AAc() {
        C1395Mx c1395Mx;
        M5 m5;
        c1395Mx = this.A00.A03;
        String A00 = c1395Mx.A1e().A00();
        if (TextUtils.isEmpty(A00)) {
            return;
        }
        C2 c2 = new C2();
        m5 = this.A00.A04;
        C2.A0M(c2, m5, C5.A00(A00), this.A00.A7E());
    }

    public C2507n6(N5 n5) {
        this.A00 = n5;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AD1(LI li) {
        new Handler(Looper.getMainLooper()).postDelayed(new C2508n7(this, li), 1L);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void ADH() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AFK(View view, MotionEvent motionEvent) {
    }
}
