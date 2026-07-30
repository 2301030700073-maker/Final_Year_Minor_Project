package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Cgoto;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public final class Snackbar extends BaseTransientBottomBar<Snackbar> {

    /* renamed from: if, reason: not valid java name */
    public static final int[] f11493if = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};

    /* renamed from: do, reason: not valid java name */
    public Cdo f11494do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11495if;

    public static final class SnackbarLayout extends BaseTransientBottomBar.Ccase {
        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.Ccase, android.widget.FrameLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int childCount = getChildCount();
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getLayoutParams().width == -1) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                }
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.Snackbar$do, reason: invalid class name */
    public static class Cdo extends BaseTransientBottomBar.Cnew<Snackbar> {
        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.Cnew
        /* renamed from: if */
        public final /* bridge */ /* synthetic */ void mo5927if(Snackbar snackbar) {
        }
    }

    public Snackbar(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.f11495if = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    /* renamed from: this, reason: not valid java name */
    public static Snackbar m5928this(View view, CharSequence charSequence) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) view;
                break;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        Context context = viewGroup.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f11493if);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate((resourceId == -1 || resourceId2 == -1) ? false : true ? R.layout.mtrl_layout_snackbar_include : R.layout.design_layout_snackbar_include, viewGroup, false);
        Snackbar snackbar = new Snackbar(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        ((SnackbarContentLayout) ((BaseTransientBottomBar) snackbar).f11464do.getChildAt(0)).f11498do.setText(charSequence);
        snackbar.f11475new = 0;
        return snackbar;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5929break() {
        Cgoto m5933if = Cgoto.m5933if();
        int m5930goto = m5930goto();
        BaseTransientBottomBar.Cfor cfor = ((BaseTransientBottomBar) this).f11465do;
        synchronized (m5933if.f11507do) {
            if (m5933if.m5936for(cfor)) {
                Cgoto.Cfor cfor2 = m5933if.f11506do;
                cfor2.f11510do = m5930goto;
                m5933if.f11505do.removeCallbacksAndMessages(cfor2);
                m5933if.m5934case(m5933if.f11506do);
                return;
            }
            Cgoto.Cfor cfor3 = m5933if.f11508if;
            boolean z = false;
            if (cfor3 != null) {
                if (cfor != null && cfor3.f11511do.get() == cfor) {
                    z = true;
                }
            }
            if (z) {
                m5933if.f11508if.f11510do = m5930goto;
            } else {
                m5933if.f11508if = new Cgoto.Cfor(m5930goto, cfor);
            }
            Cgoto.Cfor cfor4 = m5933if.f11506do;
            if (cfor4 == null || !m5933if.m5935do(cfor4, 4)) {
                m5933if.f11506do = null;
                Cgoto.Cfor cfor5 = m5933if.f11508if;
                if (cfor5 != null) {
                    m5933if.f11506do = cfor5;
                    m5933if.f11508if = null;
                    Cgoto.Cif cif = cfor5.f11511do.get();
                    if (cif != null) {
                        cif.mo5926if();
                    } else {
                        m5933if.f11506do = null;
                    }
                }
            }
        }
    }

    @Override // com.google.android.material.snackbar.BaseTransientBottomBar
    /* renamed from: do */
    public final void mo5919do() {
        m5922if(3);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m5930goto() {
        int recommendedTimeoutMillis;
        int i = this.f11475new;
        if (i == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT < 29) {
            return i;
        }
        recommendedTimeoutMillis = this.f11495if.getRecommendedTimeoutMillis(i, 3);
        return recommendedTimeoutMillis;
    }
}
