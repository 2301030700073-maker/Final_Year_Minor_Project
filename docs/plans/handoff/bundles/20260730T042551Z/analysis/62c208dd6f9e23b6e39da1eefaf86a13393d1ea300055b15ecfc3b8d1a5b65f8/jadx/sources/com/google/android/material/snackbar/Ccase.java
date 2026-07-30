package com.google.android.material.snackbar;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* renamed from: com.google.android.material.snackbar.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase implements SwipeDismissBehavior.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f11500do;

    public Ccase(BaseTransientBottomBar baseTransientBottomBar) {
        this.f11500do = baseTransientBottomBar;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5932do(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        this.f11500do.m5922if(0);
    }
}
