package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdmv extends zzbhs {
    private final String zza;
    private final zzdia zzb;
    private final zzdif zzc;
    private final zzdrw zzd;

    public zzdmv(String str, zzdia zzdiaVar, zzdif zzdifVar, zzdrw zzdrwVar) {
        this.zza = str;
        this.zzb = zzdiaVar;
        this.zzc = zzdifVar;
        this.zzd = zzdrwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzA() {
        this.zzb.zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzB(Bundle bundle) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmO)).booleanValue()) {
            this.zzb.zzI(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzC(Bundle bundle) {
        this.zzb.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzD() {
        this.zzb.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzE(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        this.zzb.zzP(zzddVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzF(com.google.android.gms.ads.internal.client.zzdr zzdrVar) {
        try {
            if (!zzdrVar.zzf()) {
                this.zzd.zze();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzb.zzQ(zzdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzG(zzbhq zzbhqVar) {
        this.zzb.zzR(zzbhqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzH() {
        return this.zzb.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzI() {
        return (this.zzc.zzH().isEmpty() || this.zzc.zzk() == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final boolean zzJ(Bundle bundle) {
        return this.zzb.zzZ(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final double zze() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final Bundle zzf() {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final com.google.android.gms.ads.internal.client.zzdy zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgC)).booleanValue()) {
            return this.zzb.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final com.google.android.gms.ads.internal.client.zzeb zzh() {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbfp zzi() {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbft zzj() {
        return this.zzb.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final zzbfw zzk() {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final InterfaceC0456Qm zzl() {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final InterfaceC0456Qm zzm() {
        return new BinderC3652rv(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzn() {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzo() {
        return this.zzc.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzp() {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzq() {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzr() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzs() {
        return this.zzc.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final String zzt() {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final List zzu() {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final List zzv() {
        return zzI() ? this.zzc.zzH() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzw() {
        this.zzb.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzx() {
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzy(com.google.android.gms.ads.internal.client.zzdh zzdhVar) {
        this.zzb.zzC(zzdhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zzz(Bundle bundle) {
        this.zzb.zzG(bundle);
    }
}
