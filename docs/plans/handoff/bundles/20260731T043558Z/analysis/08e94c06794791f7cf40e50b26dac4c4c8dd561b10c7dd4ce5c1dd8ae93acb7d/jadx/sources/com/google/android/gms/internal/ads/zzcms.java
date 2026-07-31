package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcms extends com.google.android.gms.ads.internal.client.zzda {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final zzdsy zzc;
    private final zzehm zzd;
    private final zzeno zze;
    private final zzdxt zzf;
    private final zzcaf zzg;
    private final zzdtd zzh;
    private final zzdyo zzi;
    private final zzbho zzj;
    private final zzflp zzk;
    private final zzfhj zzl;
    private final zzcvz zzm;
    private final zzdvi zzn;
    private boolean zzo = false;
    private final Long zzp = Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime());

    zzcms(Context context, VersionInfoParcel versionInfoParcel, zzdsy zzdsyVar, zzehm zzehmVar, zzeno zzenoVar, zzdxt zzdxtVar, zzcaf zzcafVar, zzdtd zzdtdVar, zzdyo zzdyoVar, zzbho zzbhoVar, zzflp zzflpVar, zzfhj zzfhjVar, zzcvz zzcvzVar, zzdvi zzdviVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = zzdsyVar;
        this.zzd = zzehmVar;
        this.zze = zzenoVar;
        this.zzf = zzdxtVar;
        this.zzg = zzcafVar;
        this.zzh = zzdtdVar;
        this.zzi = zzdyoVar;
        this.zzj = zzbhoVar;
        this.zzk = zzflpVar;
        this.zzl = zzfhjVar;
        this.zzm = zzcvzVar;
        this.zzn = zzdviVar;
    }

    final void zzb() {
        if (com.google.android.gms.ads.internal.zzt.zzh().zzo().zzJ()) {
            String zzL = com.google.android.gms.ads.internal.zzt.zzh().zzo().zzL();
            if (com.google.android.gms.ads.internal.zzt.zzo().zze(this.zza, zzL, this.zzb.afmaVersion)) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzh().zzo().zzK(false);
            com.google.android.gms.ads.internal.zzt.zzh().zzo().zzM("");
        }
    }

    final /* synthetic */ void zzc() {
        zzfhs.zza(this.zza, true);
    }

    final /* synthetic */ void zzd() {
        com.google.android.gms.ads.internal.zzt.zzn().zza(this.zza, this.zzn);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zze() {
        if (this.zzo) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Mobile ads is initialized already.");
            return;
        }
        Context context = this.zza;
        zzbeu.zza(context);
        com.google.android.gms.ads.internal.zzt.zzh().zze(context, this.zzb, this.zzn);
        this.zzm.zzc();
        com.google.android.gms.ads.internal.zzt.zzj().zza(context);
        this.zzo = true;
        this.zzf.zzc();
        this.zze.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeD)).booleanValue()) {
            this.zzh.zza();
        }
        this.zzi.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzki)).booleanValue()) {
            zzcbv.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmr
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcms.this.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlW)).booleanValue()) {
            zzcbv.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmo
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcms.this.zzw();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdx)).booleanValue()) {
            zzcbv.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmm
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcms.this.zzc();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfi)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfj)).booleanValue()) {
                zzcbv.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmn
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcms.this.zzd();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzf(float f) {
        com.google.android.gms.ads.internal.zzt.zzi().zza(f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzg(String str) {
        Context context = this.zza;
        zzbeu.zza(context);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeB)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzl().zza(context, this.zzb, str, null, this.zzk, null, null, this.zzi.zzs());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzh(boolean z) {
        com.google.android.gms.ads.internal.zzt.zzi().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzi(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Context is null. Failed to open debug menu.");
        } else {
            com.google.android.gms.ads.internal.util.zzat zzatVar = new com.google.android.gms.ads.internal.util.zzat(context);
            zzatVar.zzc(str);
            zzatVar.zzd(this.zzb.afmaVersion);
            zzatVar.zzb();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003e  */
    @Override // com.google.android.gms.ads.internal.client.zzdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.String r13, com.google.android.gms.dynamic.IObjectWrapper r14) {
        /*
            r12 = this;
            android.content.Context r0 = r12.zza
            com.google.android.gms.internal.ads.zzbeu.zza(r0)
            com.google.android.gms.internal.ads.zzbel r1 = com.google.android.gms.internal.ads.zzbeu.zzeI
            com.google.android.gms.internal.ads.zzbes r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzd(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L2b
            com.google.android.gms.ads.internal.zzt.zzc()     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            java.lang.String r0 = com.google.android.gms.ads.internal.util.zzs.zzt(r0)     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            goto L2d
        L1f:
            r0 = move-exception
            goto L22
        L21:
            r0 = move-exception
        L22:
            java.lang.String r1 = "NonagonMobileAdsSettingManager_AppId"
            com.google.android.gms.internal.ads.zzcbj r2 = com.google.android.gms.ads.internal.zzt.zzh()
            r2.zzg(r0, r1)
        L2b:
            java.lang.String r0 = ""
        L2d:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 1
            if (r2 != r1) goto L36
            r6 = r13
            goto L37
        L36:
            r6 = r0
        L37:
            boolean r13 = android.text.TextUtils.isEmpty(r6)
            if (r13 == 0) goto L3e
            goto L97
        L3e:
            com.google.android.gms.internal.ads.zzbel r13 = com.google.android.gms.internal.ads.zzbeu.zzeB
            com.google.android.gms.internal.ads.zzbes r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r13 = r0.zzd(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            com.google.android.gms.internal.ads.zzbel r0 = com.google.android.gms.internal.ads.zzbeu.zzbj
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r1.zzd(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r13 = r13 | r1
            com.google.android.gms.internal.ads.zzbes r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L7b
            java.lang.Object r13 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r14)
            java.lang.Runnable r13 = (java.lang.Runnable) r13
            com.google.android.gms.internal.ads.zzcmp r14 = new com.google.android.gms.internal.ads.zzcmp
            r14.<init>()
            goto L7d
        L7b:
            r14 = 0
            r2 = r13
        L7d:
            r7 = r14
            if (r2 == 0) goto L97
            android.content.Context r4 = r12.zza
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r5 = r12.zzb
            com.google.android.gms.internal.ads.zzflp r8 = r12.zzk
            com.google.android.gms.internal.ads.zzdvi r9 = r12.zzn
            java.lang.Long r10 = r12.zzp
            com.google.android.gms.internal.ads.zzdyo r13 = r12.zzi
            com.google.android.gms.ads.internal.zzf r3 = com.google.android.gms.ads.internal.zzt.zzl()
            boolean r11 = r13.zzs()
            r3.zza(r4, r5, r6, r7, r8, r9, r10, r11)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcms.zzj(java.lang.String, com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized float zzk() {
        return com.google.android.gms.ads.internal.zzt.zzi().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized boolean zzl() {
        return com.google.android.gms.ads.internal.zzt.zzi().zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final String zzm() {
        return this.zzb.afmaVersion;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzn(String str) {
        this.zze.zze(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzo(zzbrj zzbrjVar) throws RemoteException {
        this.zzl.zzc(zzbrjVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzp(zzbod zzbodVar) throws RemoteException {
        this.zzf.zzb(zzbodVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final List zzq() throws RemoteException {
        return this.zzf.zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzr(com.google.android.gms.ads.internal.client.zzfv zzfvVar) throws RemoteException {
        this.zzg.zzb(this.zza, zzfvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzs() {
        this.zzf.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzt(com.google.android.gms.ads.internal.client.zzdn zzdnVar) throws RemoteException {
        this.zzi.zzo(zzdnVar, zzdyn.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzu(boolean z) throws RemoteException {
        try {
            Context context = this.zza;
            zzfwu.zza(context).zzb(z);
            if (z) {
                return;
            }
            try {
                if (context.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                } else {
                    throw new IOException("Failed to remove query_info_shared_prefs");
                }
            } catch (IOException e) {
                com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "clearStorageOnGpidPubDisable_scar");
            }
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzv(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzku)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().zzt(str);
        }
    }

    final /* synthetic */ void zzw() {
        this.zzj.zza(new zzbwj());
    }

    final /* synthetic */ void zzx(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map zzf = com.google.android.gms.ads.internal.zzt.zzh().zzo().zzi().zzf();
        if (zzf.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzc.zzc()) {
            HashMap hashMap = new HashMap();
            Iterator it = zzf.values().iterator();
            while (it.hasNext()) {
                for (zzbrc zzbrcVar : ((zzbrd) it.next()).zza) {
                    String str = zzbrcVar.zzb;
                    for (String str2 : zzbrcVar.zza) {
                        if (!hashMap.containsKey(str2)) {
                            hashMap.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((List) hashMap.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : hashMap.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzehn zza = this.zzd.zza(str3, jSONObject);
                    if (zza != null) {
                        zzfhl zzfhlVar = (zzfhl) zza.zzb;
                        if (!zzfhlVar.zzn() && zzfhlVar.zzq()) {
                            zzfhlVar.zzr(this.zza, (zzeja) zza.zzc, (List) entry.getValue());
                            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 45);
                            sb.append("Initialized rewarded video mediation adapter ");
                            sb.append(str3);
                            String sb2 = sb.toString();
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
                        }
                    }
                } catch (zzfgu e) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + 56);
                    sb3.append("Failed to initialize rewarded video mediation adapter \"");
                    sb3.append(str3);
                    sb3.append("\"");
                    String sb4 = sb3.toString();
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj(sb4, e);
                }
            }
        }
    }
}
