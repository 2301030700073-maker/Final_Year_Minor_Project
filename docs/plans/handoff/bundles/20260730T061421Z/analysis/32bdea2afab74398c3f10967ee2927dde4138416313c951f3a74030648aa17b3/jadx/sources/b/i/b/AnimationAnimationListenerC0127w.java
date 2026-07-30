package b.i.b;

import android.view.ViewGroup;
import android.view.animation.Animation;

/* renamed from: b.i.b.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class AnimationAnimationListenerC0127w implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f954a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f955b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ K f956c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b.e.f.b f957d;

    public AnimationAnimationListenerC0127w(ViewGroup viewGroup, r rVar, K k, b.e.f.b bVar) {
        this.f954a = viewGroup;
        this.f955b = rVar;
        this.f956c = k;
        this.f957d = bVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f954a.post(new RunnableC0126v(this));
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
