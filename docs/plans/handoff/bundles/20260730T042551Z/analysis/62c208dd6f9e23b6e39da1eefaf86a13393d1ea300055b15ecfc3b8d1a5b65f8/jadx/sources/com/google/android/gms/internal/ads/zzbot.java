package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import defpackage.BinderC3652rv;
import defpackage.C2904i2;
import defpackage.InterfaceC0456Qm;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbot extends zzcgs {
    private final C2904i2 zza;

    public zzbot(C2904i2 c2904i2) {
        this.zza = c2904i2;
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final int zzb(String str) {
        return this.zza.f13420do.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final long zzc() {
        return this.zza.f13420do.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final Bundle zzd(Bundle bundle) {
        return this.zza.f13420do.zza(bundle, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final String zze() {
        return this.zza.f13420do.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final String zzf() {
        return this.zza.f13420do.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final String zzg() {
        return this.zza.f13420do.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final String zzh() {
        return this.zza.f13420do.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final String zzi() {
        return this.zza.f13420do.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final List zzj(String str, String str2) {
        return this.zza.f13420do.zza(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final Map zzk(String str, String str2, boolean z) {
        return this.zza.f13420do.zza(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzl(String str) {
        this.zza.f13420do.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzm(String str, String str2, Bundle bundle) {
        this.zza.f13420do.zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzn(String str) {
        this.zza.f13420do.zzc(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzo(String str, String str2, Bundle bundle) {
        this.zza.f13420do.zzb(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzp(Bundle bundle) {
        this.zza.f13420do.zza(bundle, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzq(Bundle bundle) {
        this.zza.f13420do.zza(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzr(Bundle bundle) {
        this.zza.f13420do.zzb(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzs(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        this.zza.f13420do.zza(interfaceC0456Qm != null ? (Activity) BinderC3652rv.o(interfaceC0456Qm) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgt
    public final void zzt(String str, String str2, InterfaceC0456Qm interfaceC0456Qm) {
        this.zza.f13420do.zza(str, str2, interfaceC0456Qm != null ? BinderC3652rv.o(interfaceC0456Qm) : null, true);
    }
}
