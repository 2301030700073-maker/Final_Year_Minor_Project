package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.dT, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1925dT extends FrameLayout implements DS {
    public static byte[] A0B;
    public static final RelativeLayout.LayoutParams A0C;
    public C09886e A00;
    public Intent A01;
    public Bundle A02;
    public DS A03;
    public final AbstractC2478md A04;
    public final AbstractC2478md A05;
    public final C09886e A06;
    public final C2322k1 A07;
    public final A7 A08;
    public final ViewOnSystemUiVisibilityChangeListenerC1136Cq A09;
    public final DR A0A;

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A0B = new byte[]{117, 105, 100, 102, 96, 104, 96, 107, 113};
    }

    static {
        A0A();
        A0C = new RelativeLayout.LayoutParams(-1, -1);
    }

    public C1925dT(C2322k1 c2322k1, A7 a7, AbstractC2478md abstractC2478md, AbstractC2478md abstractC2478md2, DR dr, C09886e c09886e) {
        super(c2322k1);
        this.A07 = c2322k1;
        this.A08 = a7;
        this.A05 = abstractC2478md;
        this.A04 = abstractC2478md2;
        this.A0A = dr;
        this.A06 = c09886e;
        this.A09 = new ViewOnSystemUiVisibilityChangeListenerC1136Cq(this);
        this.A09.A05(EnumC1135Cp.A02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C2163hM A05(C1264Ho c1264Ho, EC ec) {
        return new C2163hM(this.A07, this.A08, this.A0A, this.A04, this.A04.A0s(), ec, true, c1264Ho);
    }

    private C1337Kj A06() {
        if (this.A04.A1b().A0F().A07() != null) {
            this.A05.A14(this.A04.A1b().A0F().A07().A0N());
            this.A05.A15(this.A04.A1b().A0F().A07().A0P());
        }
        C2158hH c2158hH = new C2158hH();
        C1264Ho A07 = A07(c2158hH, this.A04);
        C1337Kj c1337Kj = new C1337Kj(this.A07, c2158hH, this.A08, this.A05, new C10297t(this.A07), this.A0A);
        c1337Kj.setVideoLeadingPlayableAdListener(new C1926dU(this, A07, c2158hH));
        return c1337Kj;
    }

    private C1264Ho A07(EC ec, AbstractC2478md abstractC2478md) {
        C08982p A07 = abstractC2478md.A1b().A0F().A07();
        if (A07 == null || !A07.A0M()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(A08(0, 9, 37), ec.A8b());
        return new C1264Ho(this.A07, abstractC2478md, A07, this.A08, null, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        if (this.A03 != null) {
            this.A03.onDestroy();
            if (this.A03 instanceof View) {
                ((View) this.A03).setVisibility(8);
                removeView((View) this.A03);
            }
        }
    }

    private final void A0B(Intent intent, Bundle bundle, C09886e c09886e) {
        this.A03 = A06();
        this.A03.AAj(intent, bundle, c09886e);
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AAj(Intent intent, Bundle bundle, C09886e c09886e) {
        this.A01 = intent;
        this.A02 = bundle;
        this.A00 = c09886e;
        this.A0A.A3v(this, A0C);
        A0B(intent, bundle, c09886e);
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEP(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEs(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AI1(Bundle bundle) {
    }

    public DS getContentView() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public String getCurrentClientToken() {
        return this.A05.A1g();
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void onDestroy() {
    }

    public void setListener(DR dr) {
    }
}
