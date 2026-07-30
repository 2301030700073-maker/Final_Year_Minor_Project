package defpackage;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: hG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2859hG extends Animation {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SwipeRefreshLayout f13285do;

    public C2859hG(SwipeRefreshLayout swipeRefreshLayout) {
        this.f13285do = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        float f2 = 1.0f - f;
        SwipeRefreshLayout swipeRefreshLayout = this.f13285do;
        swipeRefreshLayout.f7740do.setScaleX(f2);
        swipeRefreshLayout.f7740do.setScaleY(f2);
    }
}
