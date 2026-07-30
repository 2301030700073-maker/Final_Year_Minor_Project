package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hJ, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2160hJ implements DS {
    public static byte[] A0D;
    public int A00;
    public C1860cQ A01;
    public C1329Kb A02;
    public String A03;
    public final C2322k1 A04;
    public final A7 A05;
    public final DR A06;
    public final E7 A07;
    public final C1855cL A08;
    public final AbstractC1829bv A0C = new C1361Lh(this);
    public final AbstractC1831bx A0B = new C1360Lg(this);
    public final AbstractC1837c3 A09 = new C1359Lf(this);
    public final AbstractC1835c1 A0A = new C1358Le(this);

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{44, 56, 57, 34, 61, 33, 44, 52, 122, 117, 112, 124, 119, 109, 77, 118, 114, 124, 119, 20, 18, 4, 47, 0, 21, 8, 23, 4, 34, 21, 0, 35, 20, 21, 21, 14, 15, 55, 40, 37, 36, 46, 8, 47, 53, 36, 51, 50, 53, 40, 53, 32, 45, 4, 55, 36, 47, 53, 81, 78, 67, 66, 72, 107, 72, 64, 64, 66, 85, 116, 107, 102, 103, 109, 79, 82, 70, 103, 120, 117, 116, 126, 66, 116, 116, 122, 69, 120, 124, 116, 63, 32, 45, 44, 38, 28, 27, 5};
    }

    public C2160hJ(C2322k1 c2322k1, E7 e7, A7 a7, DR dr) {
        this.A04 = c2322k1;
        this.A05 = a7;
        this.A07 = e7;
        this.A08 = new C1855cL(c2322k1);
        this.A08.A0h(new KO(c2322k1));
        this.A08.getEventBus().A03(this.A0C, this.A0B, this.A09, this.A0A);
        this.A06 = dr;
        this.A08.setIsFullScreen(true);
        this.A08.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        dr.A3v(this.A08, layoutParams);
        DZ closeButton = new DZ(c2322k1);
        closeButton.setOnClickListener(new E5(this));
        RelativeLayout.LayoutParams params = closeButton.getDefaultLayoutParams();
        dr.A3v(closeButton, params);
    }

    public final void A04(int i) {
        this.A08.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A08.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AAj(Intent intent, Bundle bundle, C09886e c09886e) {
        String ctaText = A02(8, 11, ModuleDescriptor.MODULE_VERSION);
        if (bundle == null) {
            this.A03 = intent.getStringExtra(ctaText);
        } else {
            this.A03 = bundle.getString(ctaText);
        }
        String stringExtra = intent.getStringExtra(A02(19, 18, 7));
        if (stringExtra != null && !stringExtra.isEmpty()) {
            C1250Ha c1250Ha = new C1250Ha(this.A04, stringExtra);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (16.0f * CP.A02);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            c1250Ha.setOnClickListener(new E6(this));
            this.A06.A3v(c1250Ha, layoutParams);
        }
        this.A00 = intent.getIntExtra(A02(77, 13, 119), 0);
        this.A02 = new C1329Kb(this.A04, this.A05, this.A08, this.A03, intent.getBundleExtra(A02(58, 11, 65)), null);
        if (C10729m.A1t(this.A04)) {
            this.A01 = new C1860cQ(this.A04, this.A05, this.A08, this.A03, this.A02, null);
        } else {
            this.A01 = null;
        }
        this.A08.setVideoMPD(intent.getStringExtra(A02(69, 8, 100)));
        this.A08.setVideoURI(intent.getStringExtra(A02(90, 8, 47)));
        if (this.A00 > 0) {
            this.A08.A0c(this.A00);
        }
        if (intent.getBooleanExtra(A02(0, 8, 43), false)) {
            this.A08.A0g(IP.A04, 17);
        }
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEP(boolean z) {
        this.A06.A4a(A02(37, 21, 39), new C1833bz());
        this.A08.A0Z();
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AEs(boolean z) {
        this.A06.A4a(A02(37, 21, 39), new C1832by());
        if (!this.A08.A0q()) {
            this.A08.A0g(IP.A04, 18);
        }
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void AI1(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final String getCurrentClientToken() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.DS
    public final void onDestroy() {
        this.A06.A4a(A02(37, 21, 39), new C1825br(this.A00, this.A08.getCurrentPositionInMillis()));
        this.A02.A0j(this.A08.getCurrentPositionInMillis());
        if (this.A01 != null) {
            this.A01.A06();
        }
        this.A08.A0d(1);
        this.A08.A0Y();
    }
}
