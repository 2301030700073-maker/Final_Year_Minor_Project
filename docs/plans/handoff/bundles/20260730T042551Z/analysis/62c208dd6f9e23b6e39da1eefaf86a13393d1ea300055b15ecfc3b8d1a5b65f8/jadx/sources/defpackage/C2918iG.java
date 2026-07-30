package defpackage;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: iG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2918iG extends Animation {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SwipeRefreshLayout f13455do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13456for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f13457new;

    public C2918iG(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f13455do = swipeRefreshLayout;
        this.f13456for = i;
        this.f13457new = i2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        this.f13455do.f7741do.setAlpha((int) (((this.f13457new - r0) * f) + this.f13456for));
    }
}
