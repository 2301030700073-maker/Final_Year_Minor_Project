package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbga;
import com.google.android.gms.internal.ads.zzbgg;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbkr;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbtb;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbxb;
import com.google.android.gms.internal.ads.zzbyu;
import defpackage.C0750bP;
import defpackage.C2750fP;
import defpackage.C2927iP;
import defpackage.C3330mP;
import defpackage.C3507pP;
import defpackage.C3683sP;
import defpackage.C4037yP;
import defpackage.NP;
import defpackage.OO;
import defpackage.QP;
import defpackage.TO;
import defpackage.VO;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzba {

    /* renamed from: do, reason: not valid java name */
    public final zzfe f9576do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzi f9577do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzk f9578do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzl f9579do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbhv f9580do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbhw f9581do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbtb f9582do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzbuj f9583do;

    public zzba(zzk zzkVar, zzi zziVar, zzfe zzfeVar, zzbhv zzbhvVar, zzbxb zzbxbVar, zzbtb zzbtbVar, zzbhw zzbhwVar, zzl zzlVar) {
        this.f9578do = zzkVar;
        this.f9577do = zziVar;
        this.f9576do = zzfeVar;
        this.f9580do = zzbhvVar;
        this.f9582do = zzbtbVar;
        this.f9581do = zzbhwVar;
        this.f9579do = zzlVar;
    }

    /* renamed from: do, reason: not valid java name */
    public static /* bridge */ /* synthetic */ void m5544do(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "no_ads_fallback");
        bundle.putString("flow", str);
        zzbc.zzb().zzn(context, zzbc.zzc().afmaVersion, "gmob-apps", bundle, true);
    }

    public final zzbu zzd(Context context, String str, zzbpe zzbpeVar) {
        return (zzbu) new C3683sP(this, context, str, zzbpeVar).m7098new(context, false);
    }

    public final zzby zze(Context context, zzs zzsVar, String str, zzbpe zzbpeVar) {
        return (zzby) new C3330mP(this, context, zzsVar, str, zzbpeVar).m7098new(context, false);
    }

    public final zzby zzf(Context context, zzs zzsVar, String str, zzbpe zzbpeVar) {
        return (zzby) new C3507pP(this, context, zzsVar, str, zzbpeVar).m7098new(context, false);
    }

    public final zzci zzg(Context context, zzbpe zzbpeVar) {
        return (zzci) new C4037yP(this, context, zzbpeVar).m7098new(context, false);
    }

    public final zzdu zzh(Context context, zzbpe zzbpeVar) {
        return (zzdu) new VO(context, zzbpeVar).m7098new(context, false);
    }

    public final zzbga zzj(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbga) new NP(this, frameLayout, frameLayout2, context).m7098new(context, false);
    }

    public final zzbgg zzk(View view, HashMap hashMap, HashMap hashMap2) {
        return (zzbgg) new QP(this, view, hashMap, hashMap2).m7098new(view.getContext(), false);
    }

    public final zzbkr zzn(Context context, zzbpe zzbpeVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzbkr) new C2927iP(context, zzbpeVar, onH5AdsEventListener).m7098new(context, false);
    }

    public final zzbsx zzo(Context context, zzbpe zzbpeVar) {
        return (zzbsx) new C2750fP(context, zzbpeVar).m7098new(context, false);
    }

    public final zzbte zzq(Activity activity) {
        TO to = new TO(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("useClientJar flag not found in activity intent extras.");
        }
        return (zzbte) to.m7098new(activity, z);
    }

    public final zzbwp zzs(Context context, String str, zzbpe zzbpeVar) {
        return (zzbwp) new OO(context, str, zzbpeVar).m7098new(context, false);
    }

    public final zzbyu zzt(Context context, zzbpe zzbpeVar) {
        return (zzbyu) new C0750bP(context, zzbpeVar).m7098new(context, false);
    }
}
