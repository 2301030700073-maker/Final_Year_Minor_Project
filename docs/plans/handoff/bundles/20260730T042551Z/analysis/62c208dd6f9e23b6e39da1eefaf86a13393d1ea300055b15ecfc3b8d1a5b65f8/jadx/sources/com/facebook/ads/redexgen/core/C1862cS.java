package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;

/* renamed from: com.facebook.ads.redexgen.X.cS, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1862cS extends FrameLayout implements IB {
    public TextView A00;
    public TextView A01;
    public TextView A02;
    public TextView A03;
    public final MediaView A04;
    public final NativeAd A05;
    public final IC A06;
    public final ArrayList<View> A07;
    public static String[] A08 = {"1TbW2eCQhsvMTBw6WLgOl0T9uhpIUPzf", "ziTp6gBPmnDALVepebGOFatIHSWtUxBS", "U8KhSuPVLRzWbOpxbAxolTOugcqmOnaD", "0bQh9HQE8V8VC7fBvS6H2cn6s67Amjp4", "9aGEAiUrkMnbIgwzZX43En2EpYymCUz", "e9g0133auHqHsGsSwLriU2UE0E7n3ej0", "gJVbKnLfSb6S0wmfJEV2eyQXUghITZN0", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};
    public static final int A0E = (int) (CP.A02 * 6.0f);
    public static final int A0D = (int) (CP.A02 * 8.0f);
    public static final int A0C = (int) (CP.A02 * 12.0f);
    public static final int A0A = (int) (CP.A02 * 350.0f);
    public static final int A09 = (int) (CP.A02 * 250.0f);
    public static final int A0B = (int) (CP.A02 * 175.0f);

    public C1862cS(C2322k1 c2322k1, NativeAd nativeAd, AW aw, AX ax, C1203Ff c1203Ff, MediaView mediaView, AdOptionsView adOptionsView) {
        super(c2322k1);
        this.A07 = new ArrayList<>();
        this.A05 = nativeAd;
        this.A04 = mediaView;
        this.A06 = new IC(c2322k1, this.A05, aw, c1203Ff, adOptionsView);
        this.A06.setPadding(A0C, A0C, A0C, A0E);
        addView(this.A06, new FrameLayout.LayoutParams(-1, -2));
        if (ax == AX.A09 || ax == AX.A0B) {
            A07(aw);
        }
        addView(this.A04, new FrameLayout.LayoutParams(-1, -2));
        if (ax != AX.A0B || this.A05.getAdCreativeType() != NativeAd.AdCreativeType.CAROUSEL) {
            A06(aw);
            A04(aw);
            A05(aw);
        }
        this.A07.add(c1203Ff);
        this.A07.add(mediaView);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A00() {
        /*
            r7 = this;
            android.widget.TextView r0 = r7.A03
            r3 = 0
            if (r0 == 0) goto L4a
            android.widget.TextView r0 = r7.A03
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L4a
            android.widget.TextView r0 = r7.A03
            int r6 = r0.getMeasuredHeight()
        L13:
            android.widget.TextView r0 = r7.A02
            if (r0 == 0) goto L48
            android.widget.TextView r0 = r7.A02
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L48
            android.widget.TextView r0 = r7.A02
            int r5 = r0.getMeasuredHeight()
        L25:
            android.widget.TextView r0 = r7.A00
            if (r0 == 0) goto L4c
            android.widget.TextView r0 = r7.A00
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L4c
            android.widget.TextView r4 = r7.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1862cS.A08
            r0 = 0
            r1 = r1[r0]
            r0 = 24
            char r1 = r1.charAt(r0)
            r0 = 117(0x75, float:1.64E-43)
            if (r1 == r0) goto L4e
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L48:
            r5 = 0
            goto L25
        L4a:
            r6 = 0
            goto L13
        L4c:
            r0 = 0
            goto L59
        L4e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1862cS.A08
            java.lang.String r1 = "HiZrVlulAuiH54vlSWYSbySNuASlYz5G"
            r0 = 0
            r2[r0] = r1
            int r0 = r4.getMeasuredHeight()
        L59:
            android.widget.TextView r1 = r7.A01
            if (r1 == 0) goto L71
            android.widget.TextView r1 = r7.A01
            int r1 = r1.getVisibility()
            if (r1 != 0) goto L71
            android.widget.TextView r1 = r7.A01
            int r3 = r1.getMeasuredHeight()
            int r1 = com.facebook.ads.redexgen.core.C1862cS.A0C
            int r3 = r3 + r1
            int r1 = com.facebook.ads.redexgen.core.C1862cS.A0D
            int r3 = r3 + r1
        L71:
            int r2 = r7.getMeasuredHeight()
            com.facebook.ads.redexgen.X.IC r1 = r7.A06
            int r1 = r1.getMeasuredHeight()
            int r2 = r2 - r1
            int r2 = r2 - r6
            int r2 = r2 - r5
            int r2 = r2 - r0
            int r2 = r2 - r3
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1862cS.A00():int");
    }

    private void A01() {
        if (this.A03 != null) {
            this.A03.setLines(1);
        }
        if (this.A02 != null) {
            this.A02.setLines(1);
        }
        if (this.A00 != null) {
            this.A00.setLines(1);
        }
    }

    private void A02(int i) {
        D3.A0L(this.A04, i > A0B ? 0 : 8);
        D3.A0L(this.A03, i > A0A ? 0 : 8);
        D3.A0L(this.A00, i <= A09 ? 8 : 0);
    }

    public static void A03(int i, int i2, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            if (textView != null && textView.getVisibility() == 0) {
                int A04 = D3.A04(textView, i2);
                textView.setLines(A04 + 1);
                textView.measure(i, View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight() + (textView.getLineHeight() * A04), 1073741824));
                i2 -= textView.getLineHeight() * A04;
            }
        }
    }

    private void A04(AW aw) {
        if (this.A05.getAdBodyText() != null && !this.A05.getAdBodyText().trim().isEmpty()) {
            this.A00 = new TextView(getContext());
            aw.A06(this.A00);
            this.A00.setText(this.A05.getAdBodyText());
            this.A00.setPadding(A0C, 0, A0C, 0);
            addView(this.A00, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    private void A05(AW aw) {
        if (this.A05.hasCallToAction()) {
            this.A01 = new TextView(getContext());
            D3.A0I(this.A01);
            aw.A05(this.A01);
            this.A01.setText(this.A05.getAdCallToAction());
            this.A01.setPadding(A0D, A0D, A0D, A0D);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0D, 0, A0D, 0);
            addView(this.A01, layoutParams);
            this.A07.add(this.A01);
        }
    }

    private void A06(AW aw) {
        if (this.A05.getAdHeadline() != null && !this.A05.getAdHeadline().trim().isEmpty()) {
            this.A02 = new TextView(getContext());
            aw.A07(this.A02);
            this.A02.setText(this.A05.getAdHeadline());
            this.A02.setPadding(A0C, A0D, A0C, 0);
            addView(this.A02, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    private void A07(AW aw) {
        if (this.A05.getAdLinkDescription() != null && !this.A05.getAdLinkDescription().trim().isEmpty()) {
            this.A03 = new TextView(getContext());
            aw.A06(this.A03);
            this.A03.setText(this.A05.getAdLinkDescription());
            this.A03.setPadding(A0C, 0, A0C, A0D);
            addView(this.A03, new FrameLayout.LayoutParams(-1, -2));
        }
    }

    @Override // com.facebook.ads.redexgen.core.IB
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.core.IB
    public ArrayList<View> getViewsForInteraction() {
        return this.A07;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        IC ic = this.A06;
        int top = this.A06.getMeasuredHeight();
        ic.layout(i, i2, i3, top + i2);
        int top2 = this.A06.getMeasuredHeight();
        int i5 = i2 + top2;
        if (this.A03 != null) {
            int visibility = this.A03.getVisibility();
            if (A08[4].length() == 2) {
                throw new RuntimeException();
            }
            A08[4] = "Mpk43iWHaBi74JKA9YKWwwxfR5sOjUPQ";
            if (visibility == 0) {
                int measuredHeight = this.A03.getMeasuredHeight();
                int top3 = i5 + measuredHeight;
                this.A03.layout(i, i5, i3, top3);
                i5 += measuredHeight;
            }
        }
        MediaView mediaView = this.A04;
        int top4 = this.A04.getMeasuredHeight();
        mediaView.layout(i, i5, i3, top4 + i5);
        int top5 = this.A04.getMeasuredHeight();
        int i6 = i5 + top5;
        if (this.A02 != null) {
            TextView textView = this.A02;
            int top6 = this.A02.getMeasuredHeight();
            textView.layout(i, i6, i3, top6 + i6);
            int top7 = this.A02.getMeasuredHeight();
            i6 += top7;
        }
        if (this.A00 != null) {
            int top8 = this.A00.getVisibility();
            if (top8 == 0) {
                TextView textView2 = this.A00;
                int top9 = this.A00.getMeasuredHeight();
                textView2.layout(i, i6, i3, top9 + i6);
            }
        }
        if (this.A01 != null) {
            TextView textView3 = this.A01;
            int i7 = A0C + i;
            int top10 = this.A01.getMeasuredHeight();
            int i8 = i4 - top10;
            int top11 = A0C;
            int i9 = i8 - top11;
            int top12 = A0C;
            int i10 = i3 - top12;
            int top13 = A0C;
            textView3.layout(i7, i9, i10, i4 - top13);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            int r0 = android.view.View.MeasureSpec.getSize(r8)
            r6.A02(r0)
            r6.A01()
            super.onMeasure(r7, r8)
            int r4 = r6.A00()
            com.facebook.ads.MediaView r0 = r6.A04
            int r0 = r0.getMediaWidth()
            if (r0 == 0) goto L21
            com.facebook.ads.MediaView r0 = r6.A04
            int r0 = r0.getMediaHeight()
            if (r0 != 0) goto L5e
        L21:
            r3 = r4
        L22:
            com.facebook.ads.MediaView r5 = r6.A04
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C1862cS.A08
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 2
            if (r1 == r0) goto L8b
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C1862cS.A08
            java.lang.String r1 = "bBjhlDCZcebcBoQzUAOgAVf3zFQrapwM"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "urvh83LMTjJVKtjaQ5bPrRJiE37dq76T"
            r0 = 2
            r2[r0] = r1
            r0 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r0)
            r5.measure(r7, r0)
            if (r3 >= r4) goto L5d
            int r4 = r4 - r3
            android.widget.TextView r5 = r6.A02
            android.widget.TextView r3 = r6.A00
            android.widget.TextView r2 = r6.A03
            r0 = 3
            android.widget.TextView[] r1 = new android.widget.TextView[r0]
            r0 = 0
            r1[r0] = r5
            r0 = 1
            r1[r0] = r3
            r0 = 2
            r1[r0] = r2
            A03(r7, r4, r1)
        L5d:
            return
        L5e:
            com.facebook.ads.MediaView r0 = r6.A04
            com.facebook.ads.internal.api.MediaViewApi r0 = r0.getMediaViewApi()
            com.facebook.ads.redexgen.X.kV r0 = (com.facebook.ads.redexgen.core.C2352kV) r0
            boolean r0 = r0.A0N()
            if (r0 == 0) goto L6e
            r3 = r4
            goto L22
        L6e:
            com.facebook.ads.MediaView r0 = r6.A04
            int r0 = r0.getMediaHeight()
            float r1 = (float) r0
            com.facebook.ads.MediaView r0 = r6.A04
            int r0 = r0.getMediaWidth()
            float r0 = (float) r0
            float r1 = r1 / r0
            com.facebook.ads.MediaView r0 = r6.A04
            int r0 = r0.getMeasuredWidth()
            float r0 = (float) r0
            float r0 = r0 * r1
            int r0 = (int) r0
            int r3 = java.lang.Math.min(r0, r4)
            goto L22
        L8b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1862cS.onMeasure(int, int):void");
    }

    @Override // com.facebook.ads.redexgen.core.IB
    public final void unregisterView() {
        this.A05.unregisterView();
    }
}
