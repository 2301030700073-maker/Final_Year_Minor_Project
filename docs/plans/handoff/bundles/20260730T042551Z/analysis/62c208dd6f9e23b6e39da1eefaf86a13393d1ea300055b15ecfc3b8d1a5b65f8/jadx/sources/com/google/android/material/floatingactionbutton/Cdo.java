package com.google.android.material.floatingactionbutton;

import android.view.ViewGroup;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* renamed from: com.google.android.material.floatingactionbutton.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements ExtendedFloatingActionButton.Cthis {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ExtendedFloatingActionButton f11081do;

    public Cdo(ExtendedFloatingActionButton extendedFloatingActionButton) {
        this.f11081do = extendedFloatingActionButton;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: do */
    public final int mo5815do() {
        return this.f11081do.f11041catch;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getHeight() {
        return this.f11081do.getMeasuredHeight();
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getWidth() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f11081do;
        return (extendedFloatingActionButton.getMeasuredWidth() - (((extendedFloatingActionButton.m5811const() - ((MaterialButton) extendedFloatingActionButton).f10682for) / 2) * 2)) + extendedFloatingActionButton.f11040break + extendedFloatingActionButton.f11041catch;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: if */
    public final int mo5816if() {
        return this.f11081do.f11040break;
    }
}
