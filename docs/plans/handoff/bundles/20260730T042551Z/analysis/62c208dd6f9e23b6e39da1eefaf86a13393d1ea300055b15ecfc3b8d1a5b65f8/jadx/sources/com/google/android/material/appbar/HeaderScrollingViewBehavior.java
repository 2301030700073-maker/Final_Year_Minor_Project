package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.search.SearchBar;
import defpackage.C0315Kc;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: do, reason: not valid java name */
    public final Rect f10458do;

    /* renamed from: if, reason: not valid java name */
    public final Rect f10459if;

    /* renamed from: new, reason: not valid java name */
    public int f10460new;

    /* renamed from: try, reason: not valid java name */
    public int f10461try;

    public HeaderScrollingViewBehavior() {
        this.f10458do = new Rect();
        this.f10459if = new Rect();
        this.f10460new = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: const */
    public final boolean mo3685const(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        AppBarLayout mo5644default;
        C3150jM c3150jM;
        int i4 = view.getLayoutParams().height;
        if ((i4 != -1 && i4 != -2) || (mo5644default = mo5644default(coordinatorLayout.m3676public(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (mo5644default.getFitsSystemWindows() && (c3150jM = coordinatorLayout.f6450do) != null) {
                size += c3150jM.m7061if() + c3150jM.m7063try();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        int mo5646finally = size + mo5646finally(mo5644default);
        int measuredHeight = mo5644default.getMeasuredHeight();
        if (this instanceof SearchBar.ScrollingViewBehavior) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            mo5646finally -= measuredHeight;
        }
        coordinatorLayout.m3671finally(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo5646finally, i4 == -1 ? 1073741824 : Integer.MIN_VALUE));
        return true;
    }

    /* renamed from: default */
    public abstract AppBarLayout mo5644default(ArrayList arrayList);

    /* renamed from: extends */
    public float mo5645extends(View view) {
        return 1.0f;
    }

    /* renamed from: finally */
    public int mo5646finally(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: throws, reason: not valid java name */
    public final void mo5657throws(CoordinatorLayout coordinatorLayout, View view, int i) {
        AppBarLayout mo5644default = mo5644default(coordinatorLayout.m3676public(view));
        int i2 = 0;
        if (mo5644default == null) {
            coordinatorLayout.m3670extends(view, i);
            this.f10460new = 0;
            return;
        }
        CoordinatorLayout.Ctry ctry = (CoordinatorLayout.Ctry) view.getLayoutParams();
        int paddingLeft = coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) ctry).leftMargin;
        int bottom = mo5644default.getBottom() + ((ViewGroup.MarginLayoutParams) ctry).topMargin;
        int width = (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) ctry).rightMargin;
        int bottom2 = ((mo5644default.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) ctry).bottomMargin;
        Rect rect = this.f10458do;
        rect.set(paddingLeft, bottom, width, bottom2);
        C3150jM c3150jM = coordinatorLayout.f6450do;
        if (c3150jM != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                rect.left = c3150jM.m7059for() + rect.left;
                rect.right -= c3150jM.m7062new();
            }
        }
        Rect rect2 = this.f10459if;
        int i3 = ctry.f6469do;
        Gravity.apply(i3 == 0 ? 8388659 : i3, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        if (this.f10461try != 0) {
            float mo5645extends = mo5645extends(mo5644default);
            int i4 = this.f10461try;
            i2 = C0315Kc.m1182throw((int) (mo5645extends * i4), 0, i4);
        }
        view.layout(rect2.left, rect2.top - i2, rect2.right, rect2.bottom - i2);
        this.f10460new = rect2.top - mo5644default.getBottom();
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10458do = new Rect();
        this.f10459if = new Rect();
        this.f10460new = 0;
    }
}
