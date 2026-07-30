package com.google.android.material.floatingactionbutton;

import android.view.ViewGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* renamed from: com.google.android.material.floatingactionbutton.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor implements ExtendedFloatingActionButton.Cthis {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ExtendedFloatingActionButton.Cthis f11082do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ExtendedFloatingActionButton f11083do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ ExtendedFloatingActionButton.Cthis f11084if;

    public Cfor(ExtendedFloatingActionButton extendedFloatingActionButton, Cif cif, Cdo cdo) {
        this.f11083do = extendedFloatingActionButton;
        this.f11082do = cif;
        this.f11084if = cdo;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: do */
    public final int mo5815do() {
        return this.f11083do.f11041catch;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getHeight() {
        int i = this.f11083do.f11043const;
        return i == -1 ? this.f11082do.getHeight() : (i == 0 || i == -2) ? this.f11084if.getHeight() : i;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final ViewGroup.LayoutParams getLayoutParams() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f11083do;
        int i = extendedFloatingActionButton.f11042class;
        if (i == 0) {
            i = -2;
        }
        int i2 = extendedFloatingActionButton.f11043const;
        return new ViewGroup.LayoutParams(i, i2 != 0 ? i2 : -2);
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    public final int getWidth() {
        int i = this.f11083do.f11042class;
        return i == -1 ? this.f11082do.getWidth() : (i == 0 || i == -2) ? this.f11084if.getWidth() : i;
    }

    @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Cthis
    /* renamed from: if */
    public final int mo5816if() {
        return this.f11083do.f11040break;
    }
}
