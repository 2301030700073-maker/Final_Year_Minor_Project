package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzdds;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzab extends zzbtd {

    /* renamed from: do, reason: not valid java name */
    public final Activity f9694do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdOverlayInfoParcel f9695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9696do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f9698if = false;

    /* renamed from: for, reason: not valid java name */
    public boolean f9697for = false;

    public zzab(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f9695do = adOverlayInfoParcel;
        this.f9694do = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final boolean zzH() {
        return false;
    }

    public final synchronized void zzb() {
        if (this.f9698if) {
            return;
        }
        zzr zzrVar = this.f9695do.zzc;
        if (zzrVar != null) {
            zzrVar.zzds(4);
        }
        this.f9698if = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzh(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm) {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzl(Bundle bundle) {
        zzr zzrVar;
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zziL)).booleanValue();
        Activity activity = this.f9694do;
        if (booleanValue && !this.f9697for) {
            activity.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f9695do;
        if (adOverlayInfoParcel == null) {
            activity.finish();
            return;
        }
        if (z) {
            activity.finish();
            return;
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdds zzddsVar = adOverlayInfoParcel.zzu;
            if (zzddsVar != null) {
                zzddsVar.zzdd();
            }
            if (activity.getIntent() != null && activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzdp();
            }
        }
        Activity activity2 = this.f9694do;
        com.google.android.gms.ads.internal.zzv.zzi();
        zzc zzcVar = adOverlayInfoParcel.zza;
        if (zza.zzb(activity2, zzcVar, adOverlayInfoParcel.zzi, zzcVar.zzi, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            return;
        }
        activity.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzm() {
        if (this.f9694do.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzo() {
        zzr zzrVar = this.f9695do.zzc;
        if (zzrVar != null) {
            zzrVar.zzdi();
        }
        if (this.f9694do.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzp(int i, String[] strArr, int[] iArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzr() {
        if (this.f9696do) {
            this.f9694do.finish();
            return;
        }
        this.f9696do = true;
        zzr zzrVar = this.f9695do.zzc;
        if (zzrVar != null) {
            zzrVar.zzdE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f9696do);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzu() {
        if (this.f9694do.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzv() {
        zzr zzrVar = this.f9695do.zzc;
        if (zzrVar != null) {
            zzrVar.zzdr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzx() {
        this.f9697for = true;
    }
}
