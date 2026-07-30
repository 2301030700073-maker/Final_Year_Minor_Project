package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.bU, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class ViewOnClickListenerC1802bU extends RelativeLayout implements IQ, View.OnClickListener {
    public C1855cL A00;
    public final AbstractC1837c3 A01;
    public final AbstractC1831bx A02;
    public final AbstractC1829bv A03;
    public final AbstractC1827bt A04;
    public final C1290Io A05;
    public static final int A07 = (int) (CP.A02 * 16.0f);
    public static final int A06 = (int) (CP.A02 * 6.0f);

    public ViewOnClickListenerC1802bU(C2322k1 c2322k1) {
        super(c2322k1);
        this.A04 = new KJ(this);
        this.A02 = new KI(this);
        this.A03 = new KH(this);
        this.A01 = new KG(this);
        D3.A0Q(this, D3.A06(855638016, A06));
        this.A05 = new C1290Io(c2322k1, true);
        this.A05.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A07, A07);
        layoutParams.addRule(13);
        setVisibility(8);
        addView(this.A05, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override // com.facebook.ads.redexgen.core.IQ
    public final void AAk(C1855cL c1855cL) {
        this.A00 = c1855cL;
        setOnClickListener(this);
        this.A05.setOnClickListener(this);
        if (this.A00 != null) {
            this.A00.getEventBus().A03(this.A04, this.A01, this.A02, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.core.IQ
    public final void AJa(C1855cL c1855cL) {
        if (this.A00 != null) {
            this.A00.getEventBus().A04(this.A03, this.A02, this.A01, this.A04);
        }
        setOnClickListener(null);
        this.A05.setOnClickListener(null);
        this.A00 = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            if (this.A00 == null) {
                return;
            }
            if (this.A00.getState() == JI.A07 || this.A00.getState() == JI.A05 || this.A00.getState() == JI.A06) {
                this.A00.A0g(IP.A04, 11);
            } else if (this.A00.getState() == JI.A0A) {
                this.A00.A0k(true, 7);
            }
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A05.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A05.setPlayAccessibilityLabel(str);
    }
}
