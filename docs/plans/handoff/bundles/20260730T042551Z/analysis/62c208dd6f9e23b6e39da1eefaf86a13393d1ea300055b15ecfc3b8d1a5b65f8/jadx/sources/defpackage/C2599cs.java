package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: cs, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2599cs extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f12390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2657ds f12391do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f12392do;

    public C2599cs(C2657ds c2657ds, boolean z, int i) {
        this.f12391do = c2657ds;
        this.f12392do = z;
        this.f12390do = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        C2657ds c2657ds = this.f12391do;
        ((AbstractC0176Dr) c2657ds).f691do.setTranslationX(0.0f);
        c2657ds.m6467for(0.0f, this.f12390do, this.f12392do);
    }
}
