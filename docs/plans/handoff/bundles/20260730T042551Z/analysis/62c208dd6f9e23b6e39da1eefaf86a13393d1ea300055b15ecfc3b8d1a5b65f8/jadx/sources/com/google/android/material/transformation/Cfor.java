package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.circularreveal.Cfor;

/* renamed from: com.google.android.material.transformation.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ com.google.android.material.circularreveal.Cfor f11795do;

    public Cfor(com.google.android.material.circularreveal.Cfor cfor) {
        this.f11795do = cfor;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        com.google.android.material.circularreveal.Cfor cfor = this.f11795do;
        Cfor.Cnew mo5771new = cfor.mo5771new();
        mo5771new.f10892for = Float.MAX_VALUE;
        cfor.mo5769goto(mo5771new);
    }
}
