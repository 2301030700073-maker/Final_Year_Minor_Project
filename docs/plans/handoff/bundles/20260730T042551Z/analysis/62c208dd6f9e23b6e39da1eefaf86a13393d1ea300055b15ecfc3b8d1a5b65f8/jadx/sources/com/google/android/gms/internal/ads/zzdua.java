package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdua {
    private final Context zzf;
    private final WeakReference zzg;
    private final zzdpm zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdsh zzl;
    private final VersionInfoParcel zzm;
    private final zzdcr zzo;
    private final zzfhk zzp;
    private boolean zza = false;
    private boolean zzb = false;
    private boolean zzc = false;
    private final zzcab zze = new zzcab();
    private final Map zzn = new ConcurrentHashMap();
    private boolean zzq = true;
    private final long zzd = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();

    public zzdua(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdpm zzdpmVar, ScheduledExecutorService scheduledExecutorService, zzdsh zzdshVar, VersionInfoParcel versionInfoParcel, zzdcr zzdcrVar, zzfhk zzfhkVar) {
        this.zzh = zzdpmVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdshVar;
        this.zzm = versionInfoParcel;
        this.zzo = zzdcrVar;
        this.zzp = zzfhkVar;
        zzv("com.google.android.gms.ads.MobileAds", false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);
    }

    public static /* bridge */ /* synthetic */ void zzj(final zzdua zzduaVar, String str) {
        int i = 5;
        final zzfgw zza = zzfgv.zza(zzduaVar.zzf, 5);
        zza.zzi();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final zzfgw zza2 = zzfgv.zza(zzduaVar.zzf, i);
                zza2.zzi();
                zza2.zzd(next);
                final Object obj = new Object();
                final zzcab zzcabVar = new zzcab();
                InterfaceFutureC3942wq zzo = zzgch.zzo(zzcabVar, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbW)).longValue(), TimeUnit.SECONDS, zzduaVar.zzk);
                zzduaVar.zzl.zzc(next);
                zzduaVar.zzo.zzc(next);
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
                zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtq
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdua.this.zzq(obj, zzcabVar, next, elapsedRealtime, zza2);
                    }
                }, zzduaVar.zzi);
                arrayList.add(zzo);
                final zzdtz zzdtzVar = new zzdtz(zzduaVar, obj, next, elapsedRealtime, zza2, zzcabVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        int i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            String optString = jSONObject2.optString("format", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                                    jSONArray = jSONArray;
                                }
                            }
                            JSONArray jSONArray2 = jSONArray;
                            arrayList2.add(new zzblx(optString, bundle));
                            i2++;
                            jSONArray = jSONArray2;
                        }
                    } catch (JSONException unused) {
                    }
                }
                zzduaVar.zzv(next, false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);
                try {
                    final zzfdh zzc = zzduaVar.zzh.zzc(next, new JSONObject());
                    zzduaVar.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdua.this.zzn(next, zzdtzVar, zzc, arrayList2);
                        }
                    });
                } catch (zzfcq e) {
                    try {
                        String str2 = "Failed to create Adapter.";
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmP)).booleanValue()) {
                            str2 = "Failed to create Adapter. " + e.getMessage();
                        }
                        zzdtzVar.zze(str2);
                    } catch (RemoteException e2) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
                    }
                }
                i = 5;
            }
            zzgch.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdtr
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzdua.this.zzf(zza);
                    return null;
                }
            }, zzduaVar.zzi);
        } catch (JSONException e3) {
            com.google.android.gms.ads.internal.util.zze.zzb("Malformed CLD response", e3);
            zzduaVar.zzo.zza("MalformedJson");
            zzduaVar.zzl.zza("MalformedJson");
            zzduaVar.zze.zzd(e3);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e3, "AdapterInitializer.updateAdapterStatus");
            zzfhk zzfhkVar = zzduaVar.zzp;
            zza.zzh(e3);
            zza.zzg(false);
            zzfhkVar.zzb(zza.zzm());
        }
    }

    private final synchronized InterfaceFutureC3942wq zzu() {
        String zzc = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zzc();
        if (!TextUtils.isEmpty(zzc)) {
            return zzgch.zzh(zzc);
        }
        final zzcab zzcabVar = new zzcab();
        com.google.android.gms.ads.internal.zzv.zzp().zzi().zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdts
            @Override // java.lang.Runnable
            public final void run() {
                zzdua.this.zzo(zzcabVar);
            }
        });
        return zzcabVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbln(str, z, i, str2));
    }

    public final /* synthetic */ Object zzf(zzfgw zzfgwVar) {
        this.zze.zzc(Boolean.TRUE);
        zzfgwVar.zzg(true);
        this.zzp.zzb(zzfgwVar.zzm());
        return null;
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbln zzblnVar = (zzbln) this.zzn.get(str);
            arrayList.add(new zzbln(str, zzblnVar.zzb, zzblnVar.zzc, zzblnVar.zzd));
        }
        return arrayList;
    }

    public final void zzl() {
        this.zzq = false;
    }

    public final /* synthetic */ void zzm() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            zzv("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - this.zzd));
            this.zzl.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zzo.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zze.zzd(new Exception());
        }
    }

    public final /* synthetic */ void zzn(String str, zzblr zzblrVar, zzfdh zzfdhVar, List list) {
        try {
            try {
                if (Objects.equals(str, "com.google.ads.mediation.admob.AdMobAdapter")) {
                    zzblrVar.zzf();
                    return;
                }
                Context context = (Context) this.zzg.get();
                if (context == null) {
                    context = this.zzf;
                }
                zzfdhVar.zzi(context, zzblrVar, list);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            }
        } catch (RemoteException e2) {
            throw new zzfvl(e2);
        } catch (zzfcq unused) {
            zzblrVar.zze("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
        }
    }

    public final /* synthetic */ void zzo(final zzcab zzcabVar) {
        this.zzi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdtu
            @Override // java.lang.Runnable
            public final void run() {
                String zzc = com.google.android.gms.ads.internal.zzv.zzp().zzi().zzg().zzc();
                boolean isEmpty = TextUtils.isEmpty(zzc);
                zzcab zzcabVar2 = zzcabVar;
                if (isEmpty) {
                    zzcabVar2.zzd(new Exception());
                } else {
                    zzcabVar2.zzc(zzc);
                }
            }
        });
    }

    public final /* synthetic */ void zzp() {
        this.zzl.zze();
        this.zzo.zze();
        this.zzb = true;
    }

    public final /* synthetic */ void zzq(Object obj, zzcab zzcabVar, String str, long j, zzfgw zzfgwVar) {
        synchronized (obj) {
            if (!zzcabVar.isDone()) {
                zzv(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime() - j));
                this.zzl.zzb(str, "timeout");
                this.zzo.zzb(str, "timeout");
                zzfhk zzfhkVar = this.zzp;
                zzfgwVar.zzc("Timeout");
                zzfgwVar.zzg(false);
                zzfhkVar.zzb(zzfgwVar.zzm());
                zzcabVar.zzc(Boolean.FALSE);
            }
        }
    }

    public final void zzr() {
        if (!((Boolean) zzber.zza.zze()).booleanValue()) {
            if (this.zzm.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbV)).intValue() && this.zzq) {
                if (this.zza) {
                    return;
                }
                synchronized (this) {
                    if (this.zza) {
                        return;
                    }
                    this.zzl.zzf();
                    this.zzo.zzf();
                    this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdua.this.zzp();
                        }
                    }, this.zzi);
                    this.zza = true;
                    InterfaceFutureC3942wq zzu = zzu();
                    this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtp
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdua.this.zzm();
                        }
                    }, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbX)).longValue(), TimeUnit.SECONDS);
                    zzgch.zzr(zzu, new zzdty(this), this.zzi);
                    return;
                }
            }
        }
        if (this.zza) {
            return;
        }
        zzv("com.google.android.gms.ads.MobileAds", true, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);
        this.zze.zzc(Boolean.FALSE);
        this.zza = true;
        this.zzb = true;
    }

    public final void zzs(final zzblu zzbluVar) {
        this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdtt
            @Override // java.lang.Runnable
            public final void run() {
                zzdua zzduaVar = zzdua.this;
                try {
                    zzbluVar.zzb(zzduaVar.zzg());
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                }
            }
        }, this.zzj);
    }

    public final boolean zzt() {
        return this.zzb;
    }
}
