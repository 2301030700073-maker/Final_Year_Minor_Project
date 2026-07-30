package com.facebook.ads.redexgen.core;

import android.R;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hu, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2195hu extends RelativeLayout implements DS {
    public static byte[] A0F;
    public static final String A0G;
    public long A00;
    public long A01;
    public String A02;
    public boolean A03;
    public String A04;
    public boolean A05;
    public final InterfaceC09946k A06;
    public final C09886e A07;
    public final C2322k1 A08;
    public final A7 A09;
    public final DR A0A;
    public final C1184Em A0B;
    public final C1185En A0C;
    public final InterfaceC1193Ev A0D;
    public final C2150h9 A0E;

    public static String A0C(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 44);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A0F = new byte[]{90, 112, 112, 125, 112, 20, 63, 61, 112, 19, 63, 62, 36, 53, 62, 36, 112, 28, 63, 49, 52, 53, 52, 112, 4, 57, 61, 53, 106, 112, 48, 26, 26, 23, 26, 118, 85, 91, 94, 26, 124, 83, 84, 83, 73, 82, 26, 110, 83, 87, 95, 0, 26, 95, 117, 117, 120, 117, 25, 58, 52, 49, 117, 6, 33, 52, 39, 33, 117, 1, 60, 56, 48, 111, 117, 117, 95, 95, 82, 95, 45, 26, 12, 15, 16, 17, 12, 26, 95, 58, 17, 27, 95, 43, 22, 18, 26, 69, 95, 109, 71, 71, 74, 71, 52, 4, 21, 8, 11, 11, 71, 53, 2, 6, 3, 30, 71, 51, 14, 10, 2, 93, 71, 87, 125, 125, 112, 125, 14, 56, 46, 46, 52, 50, 51, 125, 27, 52, 51, 52, 46, 53, 125, 9, 52, 48, 56, 103, 125, 42, 26, 48, 48, 61, 48, 88, 113, 126, 116, 124, 117, 98, 48, 68, 121, 125, 117, 42, 48, 97, 81, 76, 84, 80, 70, 81, 3, 80, 70, 80, 80, 74, 76, 77, 3, 71, 66, 87, 66, 3, 79, 76, 68, 68, 70, 71, 3, 99, 3, 126, 125, 112, 106, 107, 37, 125, 115, 126, 113, 116, 67, 83, 78, 86, 82, 68, 83, 116, 115, 109, 85, 90, 95, 83, 88, 66, 98, 89, 93, 83, 88, 37, 44, 35, 41, 33, 40, 63, 25, 36, 32, 40};
    }

    static {
        A0D();
        A0G = C2195hu.class.getSimpleName();
    }

    public C2195hu(C09886e c09886e, C2322k1 c2322k1, A7 a7, DR dr) {
        super(c2322k1);
        C2150h9 c2150h9;
        this.A06 = new C2198hx(this);
        this.A05 = true;
        this.A01 = -1L;
        this.A03 = true;
        this.A07 = c09886e;
        this.A09 = a7;
        this.A0A = dr;
        this.A08 = c2322k1;
        if (c2322k1.A0E() == null) {
            c2322k1.A0F().A9l();
        }
        this.A0D = A0E();
        if (AbstractC10739n.A02(c2322k1) || c2322k1.A0E() == null) {
            c2150h9 = new C2150h9(c2322k1, this.A0D);
        } else {
            c2150h9 = new C2150h9(c2322k1, c2322k1.A0E(), this.A0D);
        }
        this.A0E = c2150h9;
        this.A0B = new C1184Em(c2322k1, this.A0E);
        this.A0B.setId(View.generateViewId());
        this.A0B.setListener(new C2197hw(this));
        this.A0E.setBrowserNavigationListener(this.A0B.getBrowserNavigationListener());
        this.A0C = new C1185En(c2322k1, null, R.attr.progressBarStyleHorizontal);
        A0F();
        c09886e.A0A(this.A06);
    }

    public InterfaceC1193Ev A0E() {
        return new C2196hv(this);
    }

    public void A0F() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        this.A0A.A3v(this.A0B, layoutParams);
        RelativeLayout.LayoutParams webViewParams = new RelativeLayout.LayoutParams(-1, -2);
        webViewParams.addRule(3, this.A0B.getId());
        webViewParams.addRule(12);
        this.A0A.A3v(this.A0E, webViewParams);
        RelativeLayout.LayoutParams webViewParams2 = new RelativeLayout.LayoutParams(-1, (int) (CP.A02 * 2.0f));
        webViewParams2.addRule(3, this.A0B.getId());
        this.A0C.setProgress(0);
        this.A0A.A3v(this.A0C, webViewParams2);
    }

    public void A0G() {
        this.A07.finish(1);
    }

    public void A0H(String str) {
    }

    public void AAj(Intent intent, Bundle bundle, C09886e c09886e) {
        if (this.A01 < 0) {
            this.A01 = System.currentTimeMillis();
        }
        String A0C = A0C(231, 11, 97);
        String A0C2 = A0C(220, 11, 26);
        String url = A0C(210, 10, 13);
        if (bundle == null) {
            this.A02 = intent.getStringExtra(url);
            this.A04 = intent.getStringExtra(A0C2);
            this.A00 = intent.getLongExtra(A0C, -1L);
        } else {
            this.A02 = bundle.getString(url);
            this.A04 = bundle.getString(A0C2);
            this.A00 = bundle.getLong(A0C, -1L);
        }
        String A0C3 = this.A02 != null ? this.A02 : A0C(199, 11, 51);
        this.A0B.setUrl(A0C3);
        this.A0E.loadUrl(A0C3);
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEP(boolean z) {
        this.A0E.onPause();
        if (this.A03) {
            this.A03 = false;
            C1188Eq A07 = new C1187Ep(this.A0E.getFirstUrl()).A01(this.A00).A03(this.A01).A04(this.A0E.getResponseEndMs()).A00(this.A0E.getDomContentLoadedMs()).A05(this.A0E.getScrollReadyMs()).A02(this.A0E.getLoadFinishMs()).A06(System.currentTimeMillis()).A07();
            this.A09.AAp(this.A04, A07.A02());
            if (BuildConfigApi.isDebug()) {
                String str = A0C(169, 30, 15) + System.currentTimeMillis() + A0C(149, 20, 60) + A07.A01 + A0C(53, 22, 121) + A07.A03 + A0C(75, 24, 83) + A07.A04 + A0C(0, 30, 124) + A07.A00 + A0C(99, 24, 75) + A07.A05 + A0C(30, 23, 22) + A07.A02 + A0C(123, 26, 113) + A07.A06;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEs(boolean z) {
        this.A0E.onResume();
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AI1(Bundle bundle) {
        bundle.putString(A0C(210, 10, 13), this.A02);
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public String getCurrentClientToken() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public void onDestroy() {
        this.A07.A0B(this.A06);
        F7.A03(this.A0E);
        this.A0E.destroy();
    }

    public void setListener(DR dr) {
    }
}
