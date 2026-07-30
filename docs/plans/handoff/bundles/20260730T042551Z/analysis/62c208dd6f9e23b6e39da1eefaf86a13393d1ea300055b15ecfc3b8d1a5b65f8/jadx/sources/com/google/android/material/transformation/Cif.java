package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.google.android.material.circularreveal.Cfor;

/* renamed from: com.google.android.material.transformation.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Drawable f11796do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cfor f11797do;

    public Cif(Cfor cfor, Drawable drawable) {
        this.f11797do = cfor;
        this.f11796do = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f11797do.mo5772this(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f11797do.mo5772this(this.f11796do);
    }
}
