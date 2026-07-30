package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.Cfor;

/* renamed from: com.google.android.material.circularreveal.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public static AnimatorSet m5774do(Cfor cfor, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cfor, Cfor.Cif.f10890do, Cfor.Cdo.f10887do, new Cfor.Cnew(f, f2, f3));
        Cfor.Cnew mo5771new = cfor.mo5771new();
        if (mo5771new == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cfor, (int) f, (int) f2, mo5771new.f10892for, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, createCircularReveal);
        return animatorSet;
    }
}
