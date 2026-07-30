package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: assets/audience_network.dex */
public final class LI extends FrameLayout implements InterfaceC2034fG {
    public static byte[] A0A;
    public static String[] A0B = {"cNW8ZlUzhquZSz6XSi", "gKIjGDOIeaOzZR9qeyStr8duZ", "mQKfIuNnQZgt5ES8sx19fjwTYxycx0Lp", "WvoZHe7VElSdYX15O8PPMcOC5YskUK4l", "BfRVnLJiFu3hDnD", "WxgvJAZOXh", "crPtNK55mSnLeOXFeJGYeBq3ABMrpYK", "K6RBlZSEjGoukPcRXJY4znE0whNpCjIj"};
    public JL A00;
    public final int A01;
    public final AbstractC2478md A02;
    public final C2322k1 A03;
    public final A7 A04;
    public final C1141Cv A05;
    public final InterfaceC1230Gg A06;
    public final C1241Gr A07;
    public final String A08;
    public final boolean A09;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{100, 70, 73, 0, 83, 7, 84, 83, 70, 85, 83, 7, 102, 82, 67, 78, 66, 73, 68, 66, 105, 66, 83, 80, 72, 85, 76, 102, 68, 83, 78, 81, 78, 83, 94, 9, 7, 106, 70, 76, 66, 7, 84, 82, 85, 66, 7, 83, 79, 70, 83, 7, 78, 83, 0, 84, 7, 78, 73, 7, 94, 72, 82, 85, 7, 102, 73, 67, 85, 72, 78, 67, 106, 70, 73, 78, 65, 66, 84, 83, 9, 95, 74, 75, 7, 65, 78, 75, 66, 9, 24, 28, 31, 43, 58, 55, 59, 48, 61, 59, 16, 59, 42, 41, 49, 44, 53, 69, 74, 123, 69, 71, 80, 77, 82, 77, 80, 93, 4, 11, 14, 4, 12, 56, 20, 8, 18, 21, 4, 2, 90, 85, 64, 93, 66, 81, 117, 80, 112, 85, 64, 85, 118, 65, 90, 80, 88, 81, 27, 29, 11, 28, 13, 2, 7, 13, 5, 22, 9, 5, 23, 52, 25, 16, 5};
    }

    static {
        A02();
    }

    public LI(C2322k1 c2322k1, A7 a7, InterfaceC1230Gg interfaceC1230Gg, AbstractC2478md abstractC2478md, String str, int i, C1141Cv c1141Cv) {
        super(c2322k1);
        this.A03 = c2322k1;
        this.A04 = a7;
        this.A02 = abstractC2478md;
        this.A08 = str;
        this.A06 = interfaceC1230Gg;
        this.A01 = i;
        C1241Gr preloadedDynamicWebViewController = AbstractC1242Gs.A02(abstractC2478md.A0r());
        if (preloadedDynamicWebViewController != null) {
            this.A07 = preloadedDynamicWebViewController;
            this.A09 = true;
        } else {
            this.A07 = new C1241Gr(this.A03, abstractC2478md, a7, i);
            AbstractC1242Gs.A03(abstractC2478md, this.A07);
            this.A09 = false;
        }
        if (c1141Cv != null) {
            this.A05 = c1141Cv;
            this.A07.A0Z(c1141Cv);
        } else {
            this.A05 = this.A07.A0L();
        }
        this.A07.A0c(new C2041fN(this));
        this.A07.A0a(interfaceC1230Gg);
        CU.A04(this, CU.A0B);
        if (C10729m.A1s(c2322k1)) {
            c2322k1.A0B().AJu(this.A07.A0O(), abstractC2478md.A1g(), false, false, true);
        }
        A04();
    }

    private final void A03() {
        this.A07.A0d(this);
        if (!this.A09) {
            this.A03.A0F().A5w();
            this.A07.A0X();
        } else {
            this.A03.A0F().A5x();
            if (this.A07.A0k()) {
                if (this.A01 == 4) {
                    if (this.A06 != null) {
                        this.A06.AD1(this);
                    }
                    if (C10729m.A1s(this.A03)) {
                        AJ A0B2 = this.A03.A0B();
                        if (A0B[1].length() != 25) {
                            throw new RuntimeException();
                        }
                        A0B[5] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        A0B2.ACq();
                    }
                } else {
                    AJI();
                }
            }
        }
        A08();
    }

    private final void A04() {
        C1241Gr.A0B().incrementAndGet();
        A03();
        this.A07.A0W();
    }

    private void A05(Intent intent, AbstractC2478md abstractC2478md) {
        intent.putExtra(A01(157, 8, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), BG.A07);
        intent.putExtra(A01(130, 18, 58), abstractC2478md);
        intent.addFlags(268435456);
    }

    private final void A06(AbstractC2478md abstractC2478md) {
        AdActivityIntent A05 = C1114Bq.A05(this.A03);
        A05(A05, abstractC2478md);
        try {
            C1114Bq.A0B(this.A03, A05);
        } catch (Exception e) {
            this.A03.A08().AAu(A01(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 11, 42), AbstractC10358a.A0D, new C10368b(e));
            Log.e(A01(90, 17, 80), A01(0, 90, 41), e);
        }
    }

    private void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        FQ fq = new FQ(this.A03, this.A08, this.A00, this.A05, this.A04, this.A02.A1c());
        HashMap hashMap = new HashMap();
        hashMap.put(A01(118, 12, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS), A01(148, 9, 96));
        fq.A08(this.A02.A1g(), str, hashMap);
    }

    public final void A08() {
        D3.A0H(this.A07.A0O());
        addView(this.A07.A0O(), new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void A9V() {
        A07(this.A02.A1b().A0H().A05());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void A9W(String str) {
        A07(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void A9a() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AAb() {
        new Handler(Looper.getMainLooper()).post(new C2040fM(this));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void ADF() {
        A06(this.A02);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void ADJ() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AE9(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AF8() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AFf(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AFh(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AFw(String str) {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void AJI() {
        if (this.A06 != null) {
            this.A06.AD1(this);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2034fG
    public final void close() {
    }

    public A7 getAdEventManager() {
        return this.A04;
    }

    public C1241Gr getDynamicWebViewController() {
        return this.A07;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }

    public void setAdViewabilityChecker(JL jl) {
        this.A00 = jl;
        this.A07.A0e(jl);
    }
}
