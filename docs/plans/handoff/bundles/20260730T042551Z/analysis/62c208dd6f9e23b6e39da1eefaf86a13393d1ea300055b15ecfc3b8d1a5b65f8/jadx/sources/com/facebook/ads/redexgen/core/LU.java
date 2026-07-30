package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Map;

/* loaded from: assets/audience_network.dex */
public class LU extends AbstractC2068fo {
    public E0 A00;
    public GV A01;
    public C1254He A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public RelativeLayout A06;
    public C1914dI A07;
    public final C2322k1 A08;
    public final AbstractC1837c3 A09;
    public final AbstractC1831bx A0A;
    public final AbstractC1829bv A0B;
    public final AbstractC1827bt A0C;
    public final AbstractC1818bk A0D;
    public final String A0E;
    public final Paint A0F;
    public final Path A0G;
    public final RectF A0H;
    public final C1221Fx A0I;
    public static String[] A0J = {"MpRqvkZj1q70y", "JmeA7cKwz52Cf66UfzrPr0LMRH4SYAx7", "6sdDVsKAMYqDcEUPGSGZSzHS1QCr5tGd", "kTGZxaoWJV94XtNMqSwvdL", "Mc6tnSsqpweEwwZBrEzxWewdD5U0ZBnH", "pH8A6EuZ6tOwC2LEaYgoPeYfMAE", "hIXMP87egv28CzL5Z81pRvvAccgq29VA", "kjeLkimcHFb7T02SebLVQF"};
    public static final int A0L = (int) (CP.A02 * 0.0f);
    public static final int A0M = (int) (CP.A02 * 9.0f);
    public static final int A0K = (int) (CP.A02 * 9.0f);

    public LU(C1221Fx c1221Fx, boolean z, String str, C1914dI c1914dI) {
        super(c1221Fx, z);
        this.A0G = new Path();
        this.A0H = new RectF();
        this.A0D = new LZ(this);
        this.A09 = new LY(this);
        this.A0B = new LX(this);
        this.A0A = new LW(this);
        this.A0C = new LV(this);
        this.A0I = c1221Fx;
        this.A07 = c1914dI;
        this.A0E = str;
        this.A08 = c1221Fx.A05();
        setGravity(17);
        setPadding(A0L, 0, A0L, A0L);
        D3.A0K(this, 0);
        setUpView(this.A08);
        this.A0F = new Paint();
        this.A0F.setColor(-16777216);
        this.A0F.setStyle(Paint.Style.FILL);
        this.A0F.setAlpha(16);
        this.A0F.setAntiAlias(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        if (this.A0I.A0D() != null && this.A02 != null) {
            C1777b5 A0D = this.A0I.A0D();
            C1855cL simpleVideoView = this.A02.getSimpleVideoView();
            if (A0J[2].charAt(30) != 'G') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[6] = "7Tm7E6hvxl2lrINlaGqN4b4kJs9I709m";
            strArr[1] = "njm7q4dCrj2NJr9FsCrNNlLowJdEGDJD";
            A0D.AAk(simpleVideoView);
            if (C10729m.A2C(getContext())) {
                this.A0I.A0D().A07(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (this.A0I.A0D() != null) {
            this.A0I.A0D().A05();
            if (this.A02 != null) {
                this.A0I.A0D().AJa(this.A02.getSimpleVideoView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
    
        if (r3 == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A02() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.GV r0 = r4.A01
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r4.A1F()
            if (r0 == 0) goto L25
            boolean r3 = r4.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.LU.A0J
            r0 = 4
            r1 = r1[r0]
            r0 = 16
            char r1 = r1.charAt(r0)
            r0 = 83
            if (r1 == r0) goto L35
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.LU.A0J
            java.lang.String r1 = "H2PvwmHOgvOi5klEuL8elNjNTBtJADxS"
            r0 = 4
            r2[r0] = r1
            if (r3 != 0) goto L2f
        L25:
            boolean r0 = r4.A1F()
            if (r0 != 0) goto L34
            boolean r0 = r4.A04
            if (r0 == 0) goto L34
        L2f:
            com.facebook.ads.redexgen.X.GV r0 = r4.A01
            r0.ACH()
        L34:
            return
        L35:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.LU.A02():void");
    }

    private void A03(View view) {
        RelativeLayout.LayoutParams layoutParams;
        if (view == null || (layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.addRule(13, -1);
        view.setLayoutParams(layoutParams);
    }

    public static void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        D3.A0I(view);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft
    public final boolean A17() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2068fo
    public final void A1B() {
        if (A1F() && this.A02 != null) {
            C1254He c1254He = this.A02;
            if (A0J[4].charAt(16) == 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0J;
            strArr[0] = "PPsdw83Xwgr8n";
            strArr[5] = "5ciU0wOzbld7CiHKSmuHpDfStOE";
            c1254He.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2068fo
    public final void A1C() {
        if (A1F()) {
            A1D();
            if (this.A02 != null) {
                this.A02.A05(IP.A02);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2068fo
    public final void A1D() {
        float volume = this.A07.A0P().getVolume();
        if (!A1F() || this.A02 == null) {
            return;
        }
        float newVolume = this.A02.getVolume();
        if (volume != newVolume) {
            this.A02.setVolume(volume);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2068fo
    public final boolean A1E() {
        return A1F() && this.A02 != null && this.A02.A06();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2068fo
    public final boolean A1F() {
        return this.A03;
    }

    public final void A1G(Map<String, String> extraParams) {
        if (this.A02 != null) {
            this.A02.A02();
            if (A1F()) {
                this.A02.A04(getAdEventManager(), this.A0E, extraParams);
            }
        }
    }

    public final C1254He getVideoView() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1217Ft, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A0G.reset();
        this.A0H.set(0.0f, 0.0f, getWidth(), getHeight());
        int i = 0;
        int radius = getResources().getConfiguration().orientation;
        boolean z = radius == 1;
        if (z) {
            i = A0K;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.drawPath(this.A0G, this.A0F);
        RectF rectF = this.A0H;
        int radius2 = A0L;
        float f = radius2;
        int width = getWidth();
        int radius3 = A0L;
        float f2 = width - radius3;
        int height = getHeight();
        int radius4 = A0L;
        rectF.set(f, 0.0f, f2, height - radius4);
        if (z) {
            i = A0M;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.clipPath(this.A0G);
        super.onDraw(canvas);
    }

    public void setCTAInfo(C08862d c08862d, Map<String, String> extraData) {
        getCtaButton().setCta(c08862d, this.A0E, extraData);
    }

    public void setImageUrl(String str) {
        if (this.A00 != null) {
            this.A00.setVisibility(0);
            new AsyncTaskC2117gc(this.A00, this.A08).A04().A06(new C2101gL(this, null)).A07(str);
        }
        if (this.A02 != null) {
            this.A02.setVisibility(8);
        }
    }

    public void setIsVideo(boolean z) {
        this.A03 = z;
    }

    public void setOnAssetsLoadedListener(GV gv) {
        this.A01 = gv;
    }

    public void setUpImageView(C2322k1 c2322k1) {
        this.A00 = new E0(c2322k1);
        if (C10729m.A1G(c2322k1)) {
            FE.A00(this.A00, C10729m.A1H(c2322k1), new FX(this));
        }
        A04(this.A00);
    }

    public void setUpMediaContainer(C2322k1 c2322k1) {
        this.A06 = new RelativeLayout(c2322k1);
        A04(this.A06);
        if (this.A00 != null) {
            this.A06.addView(this.A00);
            A03(this.A00);
        }
        if (this.A02 != null) {
            this.A06.addView(this.A02);
            A03(this.A02);
        }
        addView(this.A06);
    }

    public void setUpVideoView(C2322k1 c2322k1) {
        this.A02 = new C1254He(c2322k1, new AF(this.A0E, getAdEventManager()));
        if (C10729m.A1I(c2322k1)) {
            FE.A00(this.A02, C10729m.A1J(c2322k1), new FY(this));
        }
        C1254He c1254He = this.A02;
        if (A0J[2].charAt(30) != 'G') {
            throw new RuntimeException();
        }
        A0J[4] = "tNSgYVifT5FMSy2OwNBjuNxtKDkDnPPF";
        A04(c1254He);
    }

    private void setUpView(C2322k1 c2322k1) {
        setUpImageView(c2322k1);
        setUpVideoView(c2322k1);
        setUpMediaContainer(c2322k1);
    }

    public void setVideoPlaceholderUrl(String str) {
        if (this.A02 != null) {
            this.A02.setPlaceholderUrl(str);
        }
    }

    public void setVideoUrl(String str) {
        if (this.A00 != null) {
            this.A00.setVisibility(8);
        }
        C1254He c1254He = this.A02;
        String[] strArr = A0J;
        if (strArr[6].charAt(10) != strArr[1].charAt(10)) {
            throw new RuntimeException();
        }
        A0J[2] = "Key351avhXFGNIES0xzUdjVz8AR1nkGO";
        if (c1254He != null) {
            this.A02.setVisibility(0);
            this.A02.setVideoURI(str);
            this.A02.A03(this.A0D);
            this.A02.A03(this.A09);
            this.A02.A03(this.A0B);
            this.A02.A03(this.A0A);
            this.A02.A03(this.A0C);
        }
    }
}
