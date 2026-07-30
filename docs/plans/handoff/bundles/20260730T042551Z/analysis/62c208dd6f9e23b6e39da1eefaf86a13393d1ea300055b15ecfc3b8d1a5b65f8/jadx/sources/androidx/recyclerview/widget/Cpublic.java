package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.public, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cpublic extends Csuper {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Creturn f7673do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cpublic(Creturn creturn, Context context) {
        super(context);
        this.f7673do = creturn;
    }

    @Override // androidx.recyclerview.widget.Csuper, androidx.recyclerview.widget.RecyclerView.Creturn
    /* renamed from: for */
    public final void mo4444for(View view, RecyclerView.Creturn.Cdo cdo) {
        Creturn creturn = this.f7673do;
        int[] mo4518if = creturn.mo4518if(((Cfinally) creturn).f7636do.f7312do, view);
        int i = mo4518if[0];
        int i2 = mo4518if[1];
        int ceil = (int) Math.ceil(mo4562this(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
        if (ceil > 0) {
            DecelerateInterpolator decelerateInterpolator = ((Csuper) this).f7680do;
            cdo.f7433do = i;
            cdo.f7437if = i2;
            cdo.f7436for = ceil;
            cdo.f7434do = decelerateInterpolator;
            cdo.f7435do = true;
        }
    }

    @Override // androidx.recyclerview.widget.Csuper
    /* renamed from: goto */
    public final float mo363goto(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.Csuper
    /* renamed from: this, reason: not valid java name */
    public final int mo4562this(int i) {
        return Math.min(100, super.mo4562this(i));
    }
}
