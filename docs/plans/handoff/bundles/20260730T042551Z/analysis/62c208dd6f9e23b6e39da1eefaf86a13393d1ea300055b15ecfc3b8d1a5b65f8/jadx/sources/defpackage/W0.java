package defpackage;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class W0 extends Animatable2.AnimationCallback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ X0 f4286do;

    public W0(X0 x0) {
        this.f4286do = x0;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        this.f4286do.mo2708do(drawable);
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        this.f4286do.mo2793if(drawable);
    }
}
