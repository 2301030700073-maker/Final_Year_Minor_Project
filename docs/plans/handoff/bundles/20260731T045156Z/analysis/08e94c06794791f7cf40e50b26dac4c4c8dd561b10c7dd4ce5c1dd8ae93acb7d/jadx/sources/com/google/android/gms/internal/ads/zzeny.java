package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeny extends com.google.android.gms.ads.internal.client.zzbw implements zzdbk {
    private final Context zza;
    private final zzfci zzb;
    private final String zzc;
    private final zzeot zzd;
    private com.google.android.gms.ads.internal.client.zzr zze;
    private final zzfgm zzf;
    private final VersionInfoParcel zzg;
    private final zzdvi zzh;
    private zzcrg zzi;

    public zzeny(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzfci zzfciVar, zzeot zzeotVar, VersionInfoParcel versionInfoParcel, zzdvi zzdviVar) {
        this.zza = context;
        this.zzb = zzfciVar;
        this.zze = zzrVar;
        this.zzc = str;
        this.zzd = zzeotVar;
        this.zzf = zzfciVar.zzg();
        this.zzg = versionInfoParcel;
        this.zzh = zzdviVar;
        zzfciVar.zzi(this);
    }

    private final synchronized void zzO(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzfgm zzfgmVar = this.zzf;
        zzfgmVar.zzc(zzrVar);
        zzfgmVar.zze(this.zze.zzn);
    }

    private final synchronized boolean zzV(com.google.android.gms.ads.internal.client.zzm zzmVar) throws RemoteException {
        if (zzW()) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = this.zza;
        if (!com.google.android.gms.ads.internal.util.zzs.zzL(context) || zzmVar.zzs != null) {
            zzfhk.zzb(context, zzmVar.zzf);
            return this.zzb.zza(zzmVar, this.zzc, null, new zzenx(this));
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
        zzeot zzeotVar = this.zzd;
        if (zzeotVar != null) {
            zzeotVar.zzdN(zzfhp.zzd(4, null, null));
        }
        return false;
    }

    private final boolean zzW() {
        boolean z;
        if (((Boolean) zzbgs.zzf.zze()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmi)).booleanValue()) {
                z = true;
                return this.zzg.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmj)).intValue() || !z;
            }
        }
        z = false;
        if (this.zzg.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmj)).intValue()) {
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzA() {
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar != null) {
            if (zzcrgVar.zzs()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzB() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(zzbyb zzbybVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzed zzF() {
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar == null) {
            return null;
        }
        return zzcrgVar.zzc();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzG(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
        if (zzW()) {
            Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
        }
        this.zzf.zzi(zzgaVar);
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
    public final void zzK(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbk
    public final synchronized void zzL() throws ExecutionException, InterruptedException {
        zzfci zzfciVar = this.zzb;
        if (zzfciVar.zzh()) {
            zzfciVar.zzc();
        } else {
            zzfciVar.zzk();
        }
    }

    final /* synthetic */ zzcrg zzM() {
        return this.zzi;
    }

    final /* synthetic */ void zzN(zzcrg zzcrgVar) {
        this.zzi = zzcrgVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        if (zzW()) {
            Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!zzdtVar.zzf()) {
                this.zzh.zzb();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzd.zzo(zzdtVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(com.google.android.gms.ads.internal.client.zzcv zzcvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzT(long j) {
        this.zzf.zzx(j);
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar == null || zzcrgVar.zzo() == null) {
            return;
        }
        zzcrgVar.zzo().zzb(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzY(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzf.zzX(zzcsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbk
    public final synchronized void zza() {
        if (!this.zzb.zzh()) {
            this.zzb.zzj();
            return;
        }
        zzfgm zzfgmVar = this.zzf;
        com.google.android.gms.ads.internal.client.zzr zzf = zzfgmVar.zzf();
        if (this.zzi != null && zzfgmVar.zzB()) {
            zzf = zzfgt.zza(this.zza, Collections.singletonList(this.zzi.zzf()));
        }
        zzO(zzf);
        zzfgmVar.zzd(true);
        try {
            zzV(zzfgmVar.zzb());
        } catch (RemoteException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to refresh the banner ad.");
        }
        this.zzf.zzd(false);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzb() {
        if (zzW()) {
            Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        }
        return ObjectWrapper.wrap(this.zzb.zzd());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzmk)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbge r0 = com.google.android.gms.internal.ads.zzbgs.zze     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzmf     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r1.zzd(r0)     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L47
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbel r1 = com.google.android.gms.internal.ads.zzbeu.zzmk     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbes r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r1 = r2.zzd(r1)     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L47
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L47
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "destroy must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L47
        L3c:
            com.google.android.gms.internal.ads.zzcrg r0 = r3.zzi     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L45
            r0.zzd()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r3)
            return
        L45:
            monitor-exit(r3)
            return
        L47:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L47
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeny.zzc():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzdW(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        if (zzW()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        this.zzd.zzl(zzbkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zze(com.google.android.gms.ads.internal.client.zzm zzmVar) throws RemoteException {
        zzO(this.zze);
        return zzV(zzmVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzmk)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzf() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbge r0 = com.google.android.gms.internal.ads.zzbgs.zzg     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzmg     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.zzd(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbel r1 = com.google.android.gms.internal.ads.zzbeu.zzmk     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbes r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.zzd(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "pause must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcrg r0 = r3.zzi     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzczn r0 = r0.zzl()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.zza(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeny.zzf():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzmk)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzg() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbge r0 = com.google.android.gms.internal.ads.zzbgs.zzh     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzme     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.zzd(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbel r1 = com.google.android.gms.internal.ads.zzbeu.zzmk     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbes r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.zzd(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "resume must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcrg r0 = r3.zzi     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzczn r0 = r0.zzl()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.zzb(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4c
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeny.zzg():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzi(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        if (zzW()) {
            Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        }
        this.zzd.zzn(zzcoVar);
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
    public final void zzl() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzm() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar != null) {
            zzcrgVar.zzi();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzr zzn() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar != null) {
            return zzfgt.zza(this.zza, Collections.singletonList(zzcrgVar.zze()));
        }
        return this.zzf.zzf();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzo(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.zzf.zzc(zzrVar);
        this.zze = zzrVar;
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar != null) {
            zzcrgVar.zzb(this.zzb.zzd(), zzrVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzp(zzbvr zzbvrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzq(zzbvu zzbvuVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzr() {
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar == null || zzcrgVar.zzn() == null) {
            return null;
        }
        return zzcrgVar.zzn().zze();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar == null || zzcrgVar.zzn() == null) {
            return null;
        }
        return zzcrgVar.zzn().zze();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzt() {
        zzcrg zzcrgVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzhm)).booleanValue() && (zzcrgVar = this.zzi) != null) {
            return zzcrgVar.zzn();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzu() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzco zzv() {
        return this.zzd.zzk();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzw() {
        return this.zzd.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx(zzbfp zzbfpVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzb.zze(zzbfpVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        if (zzW()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        this.zzb.zzf(zzbhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzz(boolean z) {
        if (zzW()) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        }
        this.zzf.zzk(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized long zzU() {
        zzcrg zzcrgVar = this.zzi;
        if (zzcrgVar == null || zzcrgVar.zzo() == null) {
            return this.zzf.zzw();
        }
        return zzcrgVar.zzo().zza();
    }
}
