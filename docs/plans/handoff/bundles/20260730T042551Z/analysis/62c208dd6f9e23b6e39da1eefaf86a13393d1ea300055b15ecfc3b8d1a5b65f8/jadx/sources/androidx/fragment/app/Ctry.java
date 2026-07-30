package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Cbreak;
import defpackage.V6;

/* renamed from: androidx.fragment.app.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry implements V6.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f7048do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ViewGroup f7049do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cbreak.Cdo f7050do;

    public Ctry(View view, ViewGroup viewGroup, Cbreak.Cdo cdo) {
        this.f7048do = view;
        this.f7049do = viewGroup;
        this.f7050do = cdo;
    }

    @Override // defpackage.V6.Cdo
    public final void onCancel() {
        View view = this.f7048do;
        view.clearAnimation();
        this.f7049do.endViewTransition(view);
        this.f7050do.m4162do();
    }
}
