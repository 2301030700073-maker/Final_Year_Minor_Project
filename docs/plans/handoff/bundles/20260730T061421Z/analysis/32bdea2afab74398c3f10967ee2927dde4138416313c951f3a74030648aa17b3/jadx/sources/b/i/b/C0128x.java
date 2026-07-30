package b.i.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: b.i.b.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0128x extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f958a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f959b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f960c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ K f961d;
    public final /* synthetic */ b.e.f.b e;

    public C0128x(ViewGroup viewGroup, View view, r rVar, K k, b.e.f.b bVar) {
        this.f958a = viewGroup;
        this.f959b = view;
        this.f960c = rVar;
        this.f961d = k;
        this.e = bVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f958a.endViewTransition(this.f959b);
        Animator animator2 = this.f960c.getAnimator();
        this.f960c.setAnimator(null);
        if (animator2 == null || this.f958a.indexOfChild(this.f959b) >= 0) {
            return;
        }
        this.f961d.a(this.f960c, this.e);
    }
}
