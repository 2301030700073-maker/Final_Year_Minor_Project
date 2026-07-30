package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcjy extends com.google.android.gms.ads.internal.client.zzcy {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private final zzdpm zzc;
    private final zzecy zzd;
    private final zzejj zze;
    private final zzdua zzf;
    private final zzbyi zzg;
    private final zzdpr zzh;
    private final zzduv zzi;
    private final zzbfe zzj;
    private final zzfhk zzk;
    private final zzfdf zzl;
    private final zzctj zzm;
    private final zzdrw zzn;
    private boolean zzo = false;
    private final Long zzp = Long.valueOf(com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime());

    public zzcjy(Context context, VersionInfoParcel versionInfoParcel, zzdpm zzdpmVar, zzecy zzecyVar, zzejj zzejjVar, zzdua zzduaVar, zzbyi zzbyiVar, zzdpr zzdprVar, zzduv zzduvVar, zzbfe zzbfeVar, zzfhk zzfhkVar, zzfdf zzfdfVar, zzctj zzctjVar, zzdrw zzdrwVar) {
        this.zza = context;
        this.zzb = versionInfoParcel;
        this.zzc = zzdpmVar;
        this.zzd = zzecyVar;
        this.zze = zzejjVar;
        this.zzf = zzduaVar;
        this.zzg = zzbyiVar;
        this.zzh = zzdprVar;
        this.zzi = zzduvVar;
        this.zzj = zzbfeVar;
        this.zzk = zzfhkVar;
        this.zzl = zzfdfVar;
        this.zzm = zzctjVar;
        this.zzn = zzdrwVar;
    }

    public final void zzb() {
        if (com.google.android.gms.ads.internal.zzv.zzp().zzi().zzM()) {
            String zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzi();
            if (com.google.android.gms.ads.internal.zzv.zzt().zzj(this.zza, zzi, this.zzb.afmaVersion)) {
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzp().zzi().zzx(false);
            com.google.android.gms.ads.internal.zzv.zzp().zzi().zzw(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
    }

    public final void zzc(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map zze = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zze();
        if (zze.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzc.zzd()) {
            HashMap hashMap = new HashMap();
            Iterator it = zze.values().iterator();
            while (it.hasNext()) {
                for (zzbox zzboxVar : ((zzboy) it.next()).zza) {
                    String str = zzboxVar.zzb;
                    for (String str2 : zzboxVar.zza) {
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
                    zzecz zza = this.zzd.zza(str3, jSONObject);
                    if (zza != null) {
                        zzfdh zzfdhVar = (zzfdh) zza.zzb;
                        if (!zzfdhVar.zzC() && zzfdhVar.zzB()) {
                            zzfdhVar.zzj(this.zza, (zzeet) zza.zzc, (List) entry.getValue());
                            com.google.android.gms.ads.internal.util.client.zzo.zze("Initialized rewarded video mediation adapter " + str3);
                        }
                    }
                } catch (zzfcq e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e);
                }
            }
        }
    }

    public final /* synthetic */ void zzd() {
        zzfdn.zzb(this.zza, true);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized float zze() {
        return com.google.android.gms.ads.internal.zzv.zzs().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final String zzf() {
        return this.zzb.afmaVersion;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final List zzg() {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzh(String str) {
        this.zze.zzg(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzi() {
        this.zzf.zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzj(boolean z) {
        try {
            zzfrb.zza(this.zza).zzc(z);
            if (z) {
                return;
            }
            try {
                if (this.zza.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                } else {
                    throw new IOException("Failed to remove query_info_shared_prefs");
                }
            } catch (IOException e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "clearStorageOnGpidPubDisable_scar");
            }
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized void zzk() {
        if (this.zzo) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Mobile ads is initialized already.");
            return;
        }
        zzbcl.zza(this.zza);
        com.google.android.gms.ads.internal.zzv.zzp().zzu(this.zza, this.zzb);
        this.zzm.zzd();
        com.google.android.gms.ads.internal.zzv.zzc().zzi(this.zza);
        this.zzo = true;
        this.zzf.zzr();
        this.zze.zze();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzed)).booleanValue()) {
            this.zzh.zzd();
        }
        this.zzi.zzg();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue()) {
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjt
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjy.this.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkO)).booleanValue()) {
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjw
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjy.this.zzx();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdb)).booleanValue()) {
            zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcju
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjy.this.zzd();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeG)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeH)).booleanValue()) {
                zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcjy.this.zzw();
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    @Override // com.google.android.gms.ads.internal.client.zzcz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzl(java.lang.String r12, defpackage.InterfaceC0456Qm r13) {
        /*
            r11 = this;
            android.content.Context r0 = r11.zza
            com.google.android.gms.internal.ads.zzbcl.zza(r0)
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzei
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L2d
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: android.os.RemoteException -> L21 java.lang.RuntimeException -> L23
            android.content.Context r0 = r11.zza     // Catch: android.os.RemoteException -> L21 java.lang.RuntimeException -> L23
            java.lang.String r0 = com.google.android.gms.ads.internal.util.zzs.zzq(r0)     // Catch: android.os.RemoteException -> L21 java.lang.RuntimeException -> L23
            goto L2f
        L21:
            r0 = move-exception
            goto L24
        L23:
            r0 = move-exception
        L24:
            java.lang.String r1 = "NonagonMobileAdsSettingManager_AppId"
            com.google.android.gms.internal.ads.zzbzm r2 = com.google.android.gms.ads.internal.zzv.zzp()
            r2.zzw(r0, r1)
        L2d:
            java.lang.String r0 = ""
        L2f:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 1
            if (r2 != r1) goto L38
            r6 = r12
            goto L39
        L38:
            r6 = r0
        L39:
            boolean r12 = android.text.TextUtils.isEmpty(r6)
            if (r12 == 0) goto L40
            goto L93
        L40:
            com.google.android.gms.internal.ads.zzbcc r12 = com.google.android.gms.internal.ads.zzbcl.zzeb
            com.google.android.gms.internal.ads.zzbcj r0 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r12 = r0.zza(r12)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            com.google.android.gms.internal.ads.zzbcc r0 = com.google.android.gms.internal.ads.zzbcl.zzba
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r1 = r1.zza(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r12 = r12 | r1
            com.google.android.gms.internal.ads.zzbcj r1 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r0 = r1.zza(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L7d
            java.lang.Object r12 = defpackage.BinderC3652rv.o(r13)
            java.lang.Runnable r12 = (java.lang.Runnable) r12
            com.google.android.gms.internal.ads.zzcjx r13 = new com.google.android.gms.internal.ads.zzcjx
            r13.<init>()
            goto L7f
        L7d:
            r13 = 0
            r2 = r12
        L7f:
            r7 = r13
            if (r2 == 0) goto L93
            android.content.Context r4 = r11.zza
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r5 = r11.zzb
            com.google.android.gms.internal.ads.zzfhk r8 = r11.zzk
            com.google.android.gms.internal.ads.zzdrw r9 = r11.zzn
            java.lang.Long r10 = r11.zzp
            com.google.android.gms.ads.internal.zzf r3 = com.google.android.gms.ads.internal.zzv.zza()
            r3.zza(r4, r5, r6, r7, r8, r9, r10)
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjy.zzl(java.lang.String, Qm):void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzm(com.google.android.gms.ads.internal.client.zzdl zzdlVar) {
        this.zzi.zzh(zzdlVar, zzduu.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzn(InterfaceC0456Qm interfaceC0456Qm, String str) {
        if (interfaceC0456Qm == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        if (context == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Context is null. Failed to open debug menu.");
            return;
        }
        com.google.android.gms.ads.internal.util.zzau zzauVar = new com.google.android.gms.ads.internal.util.zzau(context);
        zzauVar.zzn(str);
        zzauVar.zzo(this.zzb.afmaVersion);
        zzauVar.zzr();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzo(zzbpe zzbpeVar) {
        this.zzl.zzf(zzbpeVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized void zzp(boolean z) {
        com.google.android.gms.ads.internal.zzv.zzs().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized void zzq(float f) {
        com.google.android.gms.ads.internal.zzv.zzs().zzd(f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized void zzr(String str) {
        zzbcl.zza(this.zza);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeb)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zza().zza(this.zza, this.zzb, str, null, this.zzk, null, null);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzs(zzblu zzbluVar) {
        this.zzf.zzs(zzbluVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjn)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzz(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final void zzu(com.google.android.gms.ads.internal.client.zzfv zzfvVar) {
        this.zzg.zzn(this.zza, zzfvVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcz
    public final synchronized boolean zzv() {
        return com.google.android.gms.ads.internal.zzv.zzs().zze();
    }

    public final /* synthetic */ void zzw() {
        com.google.android.gms.ads.internal.zzv.zzf().zzb(this.zza, this.zzn);
    }

    public final /* synthetic */ void zzx() {
        this.zzj.zza(new zzbum());
    }
}
