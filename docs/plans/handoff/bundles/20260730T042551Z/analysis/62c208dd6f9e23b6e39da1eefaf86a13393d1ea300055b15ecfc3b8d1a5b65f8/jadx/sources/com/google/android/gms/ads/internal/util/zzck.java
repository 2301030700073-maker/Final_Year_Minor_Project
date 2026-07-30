package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.ads.zzcaj;

/* loaded from: classes.dex */
public final class zzck {

    /* renamed from: do, reason: not valid java name */
    public Activity f9808do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f9809do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewTreeObserver.OnGlobalLayoutListener f9810do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9811do;

    /* renamed from: for, reason: not valid java name */
    public boolean f9812for;

    /* renamed from: if, reason: not valid java name */
    public boolean f9813if;

    public zzck(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f9808do = activity;
        this.f9809do = view;
        this.f9810do = onGlobalLayoutListener;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5573do() {
        View decorView;
        if (this.f9811do) {
            return;
        }
        Activity activity = this.f9808do;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f9810do;
        if (activity != null) {
            Window window = activity.getWindow();
            ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        }
        com.google.android.gms.ads.internal.zzv.zzy();
        zzcaj.zza(this.f9809do, onGlobalLayoutListener);
        this.f9811do = true;
    }

    public final void zza() {
        View decorView;
        this.f9812for = false;
        Activity activity = this.f9808do;
        if (activity != null && this.f9811do) {
            Window window = activity.getWindow();
            ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.f9810do);
            }
            this.f9811do = false;
        }
    }

    public final void zzb() {
        this.f9812for = true;
        if (this.f9813if) {
            m5573do();
        }
    }

    public final void zzc() {
        this.f9813if = true;
        if (this.f9812for) {
            m5573do();
        }
    }

    public final void zzd() {
        View decorView;
        this.f9813if = false;
        Activity activity = this.f9808do;
        if (activity != null && this.f9811do) {
            Window window = activity.getWindow();
            ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.f9810do);
            }
            this.f9811do = false;
        }
    }

    public final void zze(Activity activity) {
        this.f9808do = activity;
    }
}
