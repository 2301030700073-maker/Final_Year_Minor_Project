package com.google.android.material.tabs;

import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* renamed from: com.google.android.material.tabs.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor implements View.OnLayoutChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f11599do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TabLayout.Celse f11600do;

    public Cfor(TabLayout.Celse celse, View view) {
        this.f11600do = celse;
        this.f11599do = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.f11599do.getVisibility() == 0) {
            this.f11600do.getClass();
        }
    }
}
