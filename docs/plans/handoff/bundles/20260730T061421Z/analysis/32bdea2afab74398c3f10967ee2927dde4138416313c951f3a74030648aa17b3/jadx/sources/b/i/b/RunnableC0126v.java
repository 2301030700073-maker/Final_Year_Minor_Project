package b.i.b;

/* renamed from: b.i.b.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0126v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnimationAnimationListenerC0127w f952a;

    public RunnableC0126v(AnimationAnimationListenerC0127w animationAnimationListenerC0127w) {
        this.f952a = animationAnimationListenerC0127w;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f952a.f955b.getAnimatingAway() != null) {
            this.f952a.f955b.setAnimatingAway(null);
            AnimationAnimationListenerC0127w animationAnimationListenerC0127w = this.f952a;
            animationAnimationListenerC0127w.f956c.a(animationAnimationListenerC0127w.f955b, animationAnimationListenerC0127w.f957d);
        }
    }
}
