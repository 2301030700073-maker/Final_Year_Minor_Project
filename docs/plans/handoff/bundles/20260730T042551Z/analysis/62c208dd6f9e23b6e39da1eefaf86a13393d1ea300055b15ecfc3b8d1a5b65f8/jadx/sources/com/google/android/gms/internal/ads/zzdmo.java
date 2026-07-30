package com.google.android.gms.internal.ads;

import android.os.Bundle;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdmo extends zzbgk {
    private final String zza;
    private final zzdia zzb;
    private final zzdif zzc;

    public zzdmo(String str, zzdia zzdiaVar, zzdif zzdifVar) {
        this.zza = str;
        this.zzb = zzdiaVar;
        this.zzc = zzdifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final double zzb() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final Bundle zzc() {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final com.google.android.gms.ads.internal.client.zzeb zzd() {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final zzbfp zze() {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final zzbfw zzf() {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final InterfaceC0456Qm zzg() {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final InterfaceC0456Qm zzh() {
        return new BinderC3652rv(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzi() {
        return this.zzc.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzj() {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzk() {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzl() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzm() {
        return this.zzc.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final String zzn() {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final List zzo() {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final void zzp() {
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final void zzq(Bundle bundle) {
        this.zzb.zzG(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final void zzr(Bundle bundle) {
        this.zzb.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbgl
    public final boolean zzs(Bundle bundle) {
        return this.zzb.zzZ(bundle);
    }
}
