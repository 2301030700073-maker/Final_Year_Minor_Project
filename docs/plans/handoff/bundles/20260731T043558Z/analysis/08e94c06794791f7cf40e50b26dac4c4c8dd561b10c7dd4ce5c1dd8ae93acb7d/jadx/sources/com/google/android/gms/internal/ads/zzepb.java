package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzepb extends com.google.android.gms.ads.internal.client.zzbw {
    private final com.google.android.gms.ads.internal.client.zzr zza;
    private final Context zzb;
    private final zzfdy zzc;
    private final String zzd;
    private final VersionInfoParcel zze;
    private final zzeot zzf;
    private final zzfey zzg;
    private final zzaxa zzh;
    private final zzdvi zzi;
    private zzdhw zzj;
    private boolean zzk = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaV)).booleanValue();

    public zzepb(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzfdy zzfdyVar, zzeot zzeotVar, zzfey zzfeyVar, VersionInfoParcel versionInfoParcel, zzaxa zzaxaVar, zzdvi zzdviVar) {
        this.zza = zzrVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzfdyVar;
        this.zzf = zzeotVar;
        this.zzg = zzfeyVar;
        this.zze = versionInfoParcel;
        this.zzh = zzaxaVar;
        this.zzi = zzdviVar;
    }

    private final synchronized boolean zzN() {
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar != null) {
            if (!zzdhwVar.zzb()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzA() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzB() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbyb zzbybVar) {
        this.zzg.zzn(zzbybVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzed zzF() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(com.google.android.gms.ads.internal.client.zzeh zzehVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(com.google.android.gms.ads.internal.client.zzx zzxVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(zzbcq zzbcqVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzK(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzk = z;
    }

    final /* synthetic */ zzdhw zzL() {
        return this.zzj;
    }

    final /* synthetic */ void zzM(zzdhw zzdhwVar) {
        this.zzj = zzdhwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdtVar.zzf()) {
                this.zzi.zzb();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzf.zzo(zzdtVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
        this.zzf.zzp(zzbnVar);
        zze(zzmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzR(IObjectWrapper iObjectWrapper) {
        if (this.zzj == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitial can not be shown before loaded.");
            this.zzf.zzj(zzfhp.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdk)).booleanValue()) {
                this.zzh.zzb().zzi(new Throwable().getStackTrace());
            }
            this.zzj.zza(this.zzk, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
        this.zzf.zzq(zzcvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzT(long j) {
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar == null || zzdhwVar.zzo() == null) {
            return;
        }
        zzdhwVar.zzo().zzb(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized long zzU() {
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar == null || zzdhwVar.zzo() == null) {
            return 0L;
        }
        return zzdhwVar.zzo().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzY(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzc() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar != null) {
            zzdhwVar.zzl().zzc(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzd() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzN();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdW(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzf.zzl(zzbkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        boolean z;
        if (!zzmVar.zzb()) {
            if (((Boolean) zzbgs.zzi.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmi)).booleanValue()) {
                    z = true;
                    if (this.zze.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmj)).intValue() || !z) {
                        Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                    }
                }
            }
            z = false;
            if (this.zze.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmj)).intValue()) {
            }
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = this.zzb;
        if (com.google.android.gms.ads.internal.util.zzs.zzL(context) && zzmVar.zzs == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
            zzeot zzeotVar = this.zzf;
            if (zzeotVar != null) {
                zzeotVar.zzdN(zzfhp.zzd(4, null, null));
            }
        } else if (!zzN()) {
            zzfhk.zzb(context, zzmVar.zzf);
            this.zzj = null;
            return this.zzc.zza(zzmVar, this.zzd, new zzfdr(this.zza), new zzepa(this));
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzf() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar != null) {
            zzdhwVar.zzl().zza(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzg() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar != null) {
            zzdhwVar.zzl().zzb(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzf.zzn(zzcoVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzj(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzk() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzl() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzj == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Interstitial can not be shown before loaded.");
            this.zzf.zzj(zzfhp.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdk)).booleanValue()) {
                this.zzh.zzb().zzi(new Throwable().getStackTrace());
            }
            this.zzj.zza(this.zzk, null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzm() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzr zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbvr zzbvrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbvu zzbvuVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzr() {
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar == null || zzdhwVar.zzn() == null) {
            return null;
        }
        return zzdhwVar.zzn().zze();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        zzdhw zzdhwVar = this.zzj;
        if (zzdhwVar == null || zzdhwVar.zzn() == null) {
            return null;
        }
        return zzdhwVar.zzn().zze();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        zzdhw zzdhwVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhm)).booleanValue() && (zzdhwVar = this.zzj) != null) {
            return zzdhwVar.zzn();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzu() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzco zzv() {
        return this.zzf.zzk();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzw() {
        return this.zzf.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx(zzbfp zzbfpVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzc.zzc(zzbfpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzz(boolean z) {
    }
}
