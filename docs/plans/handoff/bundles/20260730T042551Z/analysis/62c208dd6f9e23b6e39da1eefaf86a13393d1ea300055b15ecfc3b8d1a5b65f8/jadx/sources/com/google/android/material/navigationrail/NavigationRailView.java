package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.navigation.NavigationBarView;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC2718eu;
import defpackage.AbstractC2895hu;
import defpackage.C0682aH;
import defpackage.C2785g1;
import defpackage.C3357mu;
import defpackage.C3385nL;
import defpackage.C3416nu;
import defpackage.C3738tL;
import defpackage.C3970xH;
import defpackage.O2;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class NavigationRailView extends NavigationBarView {

    /* renamed from: do, reason: not valid java name */
    public View f11246do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f11247do;

    /* renamed from: for, reason: not valid java name */
    public final int f11248for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Boolean f11249for;

    /* renamed from: if, reason: not valid java name */
    public final Boolean f11250if;

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m5851for(NavigationRailView navigationRailView, Boolean bool) {
        navigationRailView.getClass();
        if (bool != null) {
            return bool.booleanValue();
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return navigationRailView.getFitsSystemWindows();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    /* renamed from: do */
    public final AbstractC2895hu mo5679do(Context context) {
        return new C3357mu(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    /* renamed from: if */
    public final int mo5680if() {
        return 7;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C3357mu c3357mu = (C3357mu) ((NavigationBarView) this).f11223do;
        View view = this.f11246do;
        int i5 = 0;
        boolean z2 = (view == null || view.getVisibility() == 8) ? false : true;
        int i6 = this.f11248for;
        if (z2) {
            int bottom = this.f11246do.getBottom() + i6;
            int top = c3357mu.getTop();
            if (top < bottom) {
                i5 = bottom - top;
            }
        } else {
            if ((c3357mu.f14411do.gravity & 112) == 48) {
                i5 = i6;
            }
        }
        if (i5 > 0) {
            c3357mu.layout(c3357mu.getLeft(), c3357mu.getTop() + i5, c3357mu.getRight(), c3357mu.getBottom() + i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) != 1073741824 && suggestedMinimumWidth > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        }
        super.onMeasure(i, i2);
        View view = this.f11246do;
        if ((view == null || view.getVisibility() == 8) ? false : true) {
            measureChild((C3357mu) ((NavigationBarView) this).f11223do, i, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f11246do.getMeasuredHeight()) - this.f11248for, Integer.MIN_VALUE));
        }
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_MaterialComponents_NavigationRailView);
        this.f11247do = null;
        this.f11250if = null;
        this.f11249for = null;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        this.f11248for = dimensionPixelSize;
        Context context2 = getContext();
        C3970xH m3116try = C0682aH.m3116try(context2, attributeSet, O2.b, i, R.style.Widget_MaterialComponents_NavigationRailView, new int[0]);
        int m8638this = m3116try.m8638this(0, 0);
        if (m8638this != 0) {
            View inflate = LayoutInflater.from(getContext()).inflate(m8638this, (ViewGroup) this, false);
            View view = this.f11246do;
            if (view != null) {
                removeView(view);
                this.f11246do = null;
            }
            this.f11246do = inflate;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 49;
            layoutParams.topMargin = dimensionPixelSize;
            addView(inflate, 0, layoutParams);
        }
        int m8635goto = m3116try.m8635goto(2, 49);
        C3357mu c3357mu = (C3357mu) ((NavigationBarView) this).f11223do;
        FrameLayout.LayoutParams layoutParams2 = c3357mu.f14411do;
        if (layoutParams2.gravity != m8635goto) {
            layoutParams2.gravity = m8635goto;
            c3357mu.setLayoutParams(layoutParams2);
        }
        if (m3116try.m8630class(1)) {
            int m8637new = m3116try.m8637new(1, -1);
            C3357mu c3357mu2 = (C3357mu) ((NavigationBarView) this).f11223do;
            if (c3357mu2.f14412throw != m8637new) {
                c3357mu2.f14412throw = m8637new;
                c3357mu2.requestLayout();
            }
        }
        if (m3116try.m8630class(5)) {
            this.f11247do = Boolean.valueOf(m3116try.m8631do(5, false));
        }
        if (m3116try.m8630class(3)) {
            this.f11250if = Boolean.valueOf(m3116try.m8631do(3, false));
        }
        if (m3116try.m8630class(4)) {
            this.f11249for = Boolean.valueOf(m3116try.m8631do(4, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float m6709do = C2785g1.m6709do(0.0f, 1.0f, 0.3f, 1.0f, context2.getResources().getConfiguration().fontScale - 1.0f);
        float m6710if = C2785g1.m6710if(m6709do, ((NavigationBarView) this).f11223do.f13373break, dimensionPixelOffset);
        float m6710if2 = C2785g1.m6710if(m6709do, ((NavigationBarView) this).f11223do.f13375catch, dimensionPixelOffset2);
        int round = Math.round(m6710if);
        AbstractC2895hu abstractC2895hu = ((NavigationBarView) this).f11223do;
        abstractC2895hu.f13373break = round;
        AbstractC2718eu[] abstractC2718euArr = abstractC2895hu.f13387do;
        if (abstractC2718euArr != null) {
            for (AbstractC2718eu abstractC2718eu : abstractC2718euArr) {
                if (abstractC2718eu.f12758for != round) {
                    abstractC2718eu.f12758for = round;
                    abstractC2718eu.m6600case();
                }
            }
        }
        int round2 = Math.round(m6710if2);
        AbstractC2895hu abstractC2895hu2 = ((NavigationBarView) this).f11223do;
        abstractC2895hu2.f13375catch = round2;
        AbstractC2718eu[] abstractC2718euArr2 = abstractC2895hu2.f13387do;
        if (abstractC2718euArr2 != null) {
            for (AbstractC2718eu abstractC2718eu2 : abstractC2718euArr2) {
                if (abstractC2718eu2.f12768new != round2) {
                    abstractC2718eu2.f12768new = round2;
                    abstractC2718eu2.m6600case();
                }
            }
        }
        m3116try.m8633final();
        C3738tL.m8285if(this, new C3416nu(this));
    }
}
