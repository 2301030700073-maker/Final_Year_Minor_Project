package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzejt extends com.google.android.gms.ads.internal.client.zzbx implements zzcyf {
    private final Context zza;
    private final zzeya zzb;
    private final String zzc;
    private final zzekn zzd;
    private com.google.android.gms.ads.internal.client.zzs zze;
    private final zzfch zzf;
    private final VersionInfoParcel zzg;
    private final zzdrw zzh;
    private zzcom zzi;

    public zzejt(Context context, com.google.android.gms.ads.internal.client.zzs zzsVar, String str, zzeya zzeyaVar, zzekn zzeknVar, VersionInfoParcel versionInfoParcel, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzb = zzeyaVar;
        this.zze = zzsVar;
        this.zzc = str;
        this.zzd = zzeknVar;
        this.zzf = zzeyaVar.zzf();
        this.zzg = versionInfoParcel;
        this.zzh = zzdrwVar;
        zzeyaVar.zzo(this);
    }

    private final synchronized void zzf(com.google.android.gms.ads.internal.client.zzs zzsVar) {
        this.zzf.zzs(zzsVar);
        this.zzf.zzy(this.zze.zzn);
    }

    private final synchronized boolean zzh(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        if (zzm()) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        if (!com.google.android.gms.ads.internal.util.zzs.zzI(this.zza) || zzmVar.zzs != null) {
            zzfdg.zza(this.zza, zzmVar.zzf);
            return this.zzb.zzb(zzmVar, this.zzc, null, new zzejs(this));
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to load the ad because app ID is missing.");
        zzekn zzeknVar = this.zzd;
        if (zzeknVar != null) {
            zzeknVar.zzdz(zzfdk.zzd(4, null, null));
        }
        return false;
    }

    private final boolean zzm() {
        boolean z;
        if (((Boolean) zzbej.zzf.zze()).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzla)).booleanValue()) {
                z = true;
                return this.zzg.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlb)).intValue() || !z;
            }
        }
        z = false;
        if (this.zzg.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlb)).intValue()) {
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzA() {
        Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
        zzcom zzcomVar = this.zzi;
        if (zzcomVar != null) {
            zzcomVar.zzh();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzlc)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzby
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzB() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbej.zzh     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzkW     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.zza(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcc r1 = com.google.android.gms.internal.ads.zzbcl.zzlc     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.zza(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "resume must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcom r0 = r3.zzi     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzcws r0 = r0.zzn()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.zzc(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejt.zzB():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzC(com.google.android.gms.ads.internal.client.zzbi zzbiVar) {
        if (zzm()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        this.zzb.zzn(zzbiVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzD(com.google.android.gms.ads.internal.client.zzbl zzblVar) {
        if (zzm()) {
            Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        }
        this.zzd.zzj(zzblVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzE(com.google.android.gms.ads.internal.client.zzcc zzccVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zzs zzsVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        this.zzf.zzs(zzsVar);
        this.zze = zzsVar;
        zzcom zzcomVar = this.zzi;
        if (zzcomVar != null) {
            zzcomVar.zzi(this.zzb.zzc(), zzsVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzG(com.google.android.gms.ads.internal.client.zzcm zzcmVar) {
        if (zzm()) {
            Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        }
        this.zzd.zzm(zzcmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzH(zzbag zzbagVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzI(com.google.android.gms.ads.internal.client.zzy zzyVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzJ(com.google.android.gms.ads.internal.client.zzct zzctVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzK(com.google.android.gms.ads.internal.client.zzef zzefVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzL(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzM(zzbtn zzbtnVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzN(boolean z) {
        if (zzm()) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
        }
        this.zzf.zzB(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzO(zzbdg zzbdgVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzb.zzp(zzbdgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzP(com.google.android.gms.ads.internal.client.zzdr zzdrVar) {
        if (zzm()) {
            Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!zzdrVar.zzf()) {
                this.zzh.zze();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzd.zzl(zzdrVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzQ(zzbtq zzbtqVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzS(zzbwc zzbwcVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzU(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
        if (zzm()) {
            Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
        }
        this.zzf.zzI(zzgaVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzW(InterfaceC0456Qm interfaceC0456Qm) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzX() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized boolean zzY() {
        zzcom zzcomVar = this.zzi;
        if (zzcomVar != null) {
            if (zzcomVar.zzs()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized boolean zzZ() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final synchronized void zza() {
        if (!this.zzb.zzs()) {
            this.zzb.zzl();
            return;
        }
        com.google.android.gms.ads.internal.client.zzs zzh = this.zzf.zzh();
        zzcom zzcomVar = this.zzi;
        if (zzcomVar != null && zzcomVar.zzg() != null && this.zzf.zzT()) {
            zzh = zzfcp.zza(this.zza, Collections.singletonList(this.zzi.zzg()));
        }
        zzf(zzh);
        this.zzf.zzx(true);
        try {
            zzh(this.zzf.zzf());
        } catch (RemoteException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to refresh the banner ad.");
        }
        this.zzf.zzx(false);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final boolean zzaa() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized boolean zzab(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        zzf(this.zze);
        return zzh(zzmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized void zzac(com.google.android.gms.ads.internal.client.zzcq zzcqVar) {
        Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
        this.zzf.zzV(zzcqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcyf
    public final synchronized void zzb() {
        if (this.zzb.zzs()) {
            this.zzb.zzq();
        } else {
            this.zzb.zzm();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final Bundle zzd() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized com.google.android.gms.ads.internal.client.zzs zzg() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        zzcom zzcomVar = this.zzi;
        if (zzcomVar != null) {
            return zzfcp.zza(this.zza, Collections.singletonList(zzcomVar.zzf()));
        }
        return this.zzf.zzh();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final com.google.android.gms.ads.internal.client.zzbl zzi() {
        return this.zzd.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final com.google.android.gms.ads.internal.client.zzcm zzj() {
        return this.zzd.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized com.google.android.gms.ads.internal.client.zzdy zzk() {
        zzcom zzcomVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgC)).booleanValue() && (zzcomVar = this.zzi) != null) {
            return zzcomVar.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized com.google.android.gms.ads.internal.client.zzeb zzl() {
        Preconditions.checkMainThread("getVideoController must be called from the main thread.");
        zzcom zzcomVar = this.zzi;
        if (zzcomVar == null) {
            return null;
        }
        return zzcomVar.zze();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final InterfaceC0456Qm zzn() {
        if (zzm()) {
            Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        }
        return new BinderC3652rv(this.zzb.zzc());
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized String zzr() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized String zzs() {
        zzcom zzcomVar = this.zzi;
        if (zzcomVar == null || zzcomVar.zzm() == null) {
            return null;
        }
        return zzcomVar.zzm().zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final synchronized String zzt() {
        zzcom zzcomVar = this.zzi;
        if (zzcomVar == null || zzcomVar.zzm() == null) {
            return null;
        }
        return zzcomVar.zzm().zzg();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzlc)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzby
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzx() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbej.zze     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzkX     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r1.zza(r0)     // Catch: java.lang.Throwable -> L47
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L47
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbcc r1 = com.google.android.gms.internal.ads.zzbcl.zzlc     // Catch: java.lang.Throwable -> L47
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L47
            java.lang.Object r1 = r2.zza(r1)     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L47
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L47
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "destroy must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L47
        L3c:
            com.google.android.gms.internal.ads.zzcom r0 = r3.zzi     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L45
            r0.zzb()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r3)
            return
        L45:
            monitor-exit(r3)
            return
        L47:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejt.zzx():void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzy(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbo zzboVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
    
        if (r3.zzg.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(com.google.android.gms.internal.ads.zzbcl.zzlc)).intValue()) goto L9;
     */
    @Override // com.google.android.gms.ads.internal.client.zzby
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzz() {
        /*
            r3 = this;
            monitor-enter(r3)
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbej.zzg     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzkY     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r1.zza(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L37
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r3.zzg     // Catch: java.lang.Throwable -> L4c
            int r0 = r0.clientJarVersion     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcc r1 = com.google.android.gms.internal.ads.zzbcl.zzlc     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.ads.zzbcj r2 = com.google.android.gms.ads.internal.client.zzbe.zzc()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r1 = r2.zza(r1)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L4c
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L4c
            if (r0 >= r1) goto L3c
        L37:
            java.lang.String r0 = "pause must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L4c
        L3c:
            com.google.android.gms.internal.ads.zzcom r0 = r3.zzi     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L4a
            com.google.android.gms.internal.ads.zzcws r0 = r0.zzn()     // Catch: java.lang.Throwable -> L4c
            r1 = 0
            r0.zzb(r1)     // Catch: java.lang.Throwable -> L4c
            monitor-exit(r3)
            return
        L4a:
            monitor-exit(r3)
            return
        L4c:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejt.zzz():void");
    }
}
