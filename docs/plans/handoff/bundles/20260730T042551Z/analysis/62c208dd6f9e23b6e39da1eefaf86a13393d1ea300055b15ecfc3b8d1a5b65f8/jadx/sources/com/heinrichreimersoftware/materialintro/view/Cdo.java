package com.heinrichreimersoftware.materialintro.view;

import android.database.DataSetObserver;
import com.heinrichreimersoftware.materialintro.view.FadeableViewPager;

/* renamed from: com.heinrichreimersoftware.materialintro.view.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends DataSetObserver {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FadeableViewPager.Cfor f12225do;

    public Cdo(FadeableViewPager.Cfor cfor) {
        this.f12225do = cfor;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.f12225do.mo168class();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f12225do.mo168class();
    }
}
