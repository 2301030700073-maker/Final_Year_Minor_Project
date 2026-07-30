package com.google.android.material.floatingactionbutton;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* renamed from: com.google.android.material.floatingactionbutton.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements ExtendedFloatingActionButton.Cthis {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ExtendedFloatingActionButton.Cthis f11085do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ExtendedFloatingActionButton f11086do;

    public Cif(ExtendedFloatingActionButton extendedFloatingActionButton, Cdo cdo) {
        this.f11086do = extendedFloatingActionButton;
        this.f11085do = cdo;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: do */
    public final int mo5815do() {
        return this.f11086do.f11041catch;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getHeight() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f11086do;
        int i = extendedFloatingActionButton.f11043const;
        ExtendedFloatingActionButton.Cthis cthis = this.f11085do;
        if (i != -1) {
            return (i == 0 || i == -2) ? cthis.getHeight() : i;
        }
        if (!(extendedFloatingActionButton.getParent() instanceof View)) {
            return cthis.getHeight();
        }
        View view = (View) extendedFloatingActionButton.getParent();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && layoutParams.height == -2) {
            return cthis.getHeight();
        }
        int i2 = 0;
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop() + 0;
        if ((extendedFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton.getLayoutParams()) != null) {
            i2 = 0 + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return (view.getHeight() - i2) - paddingBottom;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final ViewGroup.LayoutParams getLayoutParams() {
        int i = this.f11086do.f11043const;
        if (i == 0) {
            i = -2;
        }
        return new ViewGroup.LayoutParams(-1, i);
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getWidth() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f11086do;
        boolean z = extendedFloatingActionButton.getParent() instanceof View;
        ExtendedFloatingActionButton.Cthis cthis = this.f11085do;
        if (!z) {
            return cthis.getWidth();
        }
        View view = (View) extendedFloatingActionButton.getParent();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && layoutParams.width == -2) {
            return cthis.getWidth();
        }
        int i = 0;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft() + 0;
        if ((extendedFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton.getLayoutParams()) != null) {
            i = 0 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        }
        return (view.getWidth() - i) - paddingRight;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: if */
    public final int mo5816if() {
        return this.f11086do.f11040break;
    }
}
