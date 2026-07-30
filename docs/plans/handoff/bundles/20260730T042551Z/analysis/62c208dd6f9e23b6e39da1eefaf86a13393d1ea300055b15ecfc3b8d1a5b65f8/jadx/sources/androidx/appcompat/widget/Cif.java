package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner;
import defpackage.AbstractViewOnTouchListenerC3935wj;
import defpackage.UD;

/* renamed from: androidx.appcompat.widget.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends AbstractViewOnTouchListenerC3935wj {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatSpinner.Celse f5997do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AppCompatSpinner f5998do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cif(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.Celse celse) {
        super(view);
        this.f5998do = appCompatSpinner;
        this.f5997do = celse;
    }

    @Override // defpackage.AbstractViewOnTouchListenerC3935wj
    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: for */
    public final boolean mo3311for() {
        AppCompatSpinner appCompatSpinner = this.f5998do;
        if (appCompatSpinner.f5719do.mo3423do()) {
            return true;
        }
        appCompatSpinner.f5719do.mo3416this(AppCompatSpinner.Cfor.m3419if(appCompatSpinner), AppCompatSpinner.Cfor.m3417do(appCompatSpinner));
        return true;
    }

    @Override // defpackage.AbstractViewOnTouchListenerC3935wj
    /* renamed from: if */
    public final UD mo3312if() {
        return this.f5997do;
    }
}
