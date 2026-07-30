package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.InterfaceFutureC3942wq;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbxp implements zzbxu {
    public static final /* synthetic */ int zzb = 0;
    private static final List zzc = DesugarCollections.synchronizedList(new ArrayList());
    boolean zza;
    private final zzhbn zzd;
    private final LinkedHashMap zze;
    private final Context zzh;
    private final zzbxr zzi;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet zzk = new HashSet();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzbxp(Context context, VersionInfoParcel versionInfoParcel, zzbxr zzbxrVar, String str, zzbxq zzbxqVar) {
        Preconditions.checkNotNull(zzbxrVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap();
        this.zzi = zzbxrVar;
        Iterator it = zzbxrVar.zze.iterator();
        while (it.hasNext()) {
            this.zzk.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzhbn zzc2 = zzhdm.zzc();
        zzc2.zzn(9);
        zzc2.zzj(str);
        zzc2.zzh(str);
        zzhbo zzc3 = zzhbp.zzc();
        String str2 = this.zzi.zza;
        if (str2 != null) {
            zzc3.zza(str2);
        }
        zzc2.zzg((zzhbp) zzc3.zzbr());
        zzhdd zzc4 = zzhde.zzc();
        zzc4.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str3 = versionInfoParcel.afmaVersion;
        if (str3 != null) {
            zzc4.zza(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zzc4.zzb(apkVersion);
        }
        zzc2.zzf((zzhde) zzc4.zzbr());
        this.zzd = zzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final zzbxr zza() {
        return this.zzi;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzb(Map map) {
        zzhdb zzhdbVar;
        InterfaceFutureC3942wq zzm;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.zzj) {
                            int length = optJSONArray.length();
                            synchronized (this.zzj) {
                                zzhdbVar = (zzhdb) this.zze.get(str);
                            }
                            if (zzhdbVar == null) {
                                zzbxt.zza("Cannot find the corresponding resource object for " + str);
                            } else {
                                for (int i = 0; i < length; i++) {
                                    zzhdbVar.zza(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                this.zza = (length > 0) | this.zza;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzbet.zza.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to get SafeBrowsing metadata", e);
                }
                return zzgch.zzg(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z = this.zza;
        if (!(z && this.zzi.zzg) && (!(this.zzm && this.zzi.zzf) && (z || !this.zzi.zzd))) {
            return zzgch.zzh(null);
        }
        synchronized (this.zzj) {
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                this.zzd.zzc((zzhdc) ((zzhdb) it.next()).zzbr());
            }
            this.zzd.zza(this.zzf);
            this.zzd.zzb(this.zzg);
            if (zzbxt.zzb()) {
                StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + this.zzd.zzl() + "\n  clickUrl: " + this.zzd.zzk() + "\n  resources: \n");
                for (zzhdc zzhdcVar : this.zzd.zzm()) {
                    sb.append("    [");
                    sb.append(zzhdcVar.zzc());
                    sb.append("] ");
                    sb.append(zzhdcVar.zzg());
                }
                zzbxt.zza(sb.toString());
            }
            InterfaceFutureC3942wq zzb2 = new com.google.android.gms.ads.internal.util.zzbo(this.zzh).zzb(1, this.zzi.zzb, null, ((zzhdm) this.zzd.zzbr()).zzaV());
            if (zzbxt.zzb()) {
                zzb2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbxt.zza("Pinged SB successfully.");
                    }
                }, zzbzw.zza);
            }
            zzm = zzgch.zzm(zzb2, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzbxn
                @Override // com.google.android.gms.internal.ads.zzfuc
                public final Object apply(Object obj) {
                    int i2 = zzbxp.zzb;
                    return null;
                }
            }, zzbzw.zzg);
        }
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final void zzd(String str, Map map, int i) {
        synchronized (this.zzj) {
            if (i == 3) {
                this.zzm = true;
            }
            if (this.zze.containsKey(str)) {
                if (i == 3) {
                    ((zzhdb) this.zze.get(str)).zze(4);
                }
                return;
            }
            zzhdb zzd = zzhdc.zzd();
            int zza = zzhda.zza(i);
            if (zza != 0) {
                zzd.zze(zza);
            }
            zzd.zzb(this.zze.size());
            zzd.zzd(str);
            zzhca zzc2 = zzhcd.zzc();
            if (!this.zzk.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    if (this.zzk.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzhby zzc3 = zzhbz.zzc();
                        zzc3.zza(zzgwj.zzw(str2));
                        zzc3.zzb(zzgwj.zzw(str3));
                        zzc2.zza((zzhbz) zzc3.zzbr());
                    }
                }
            }
            zzd.zzc((zzhcd) zzc2.zzbr());
            this.zze.put(str, zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final void zze() {
        synchronized (this.zzj) {
            this.zze.keySet();
            InterfaceFutureC3942wq zzh = zzgch.zzh(Collections.emptyMap());
            zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.internal.ads.zzbxk
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    return zzbxp.this.zzb((Map) obj);
                }
            };
            zzgcs zzgcsVar = zzbzw.zzg;
            InterfaceFutureC3942wq zzn = zzgch.zzn(zzh, zzgboVar, zzgcsVar);
            InterfaceFutureC3942wq zzo = zzgch.zzo(zzn, 10L, TimeUnit.SECONDS, zzbzw.zzd);
            zzgch.zzr(zzn, new zzbxo(this, zzo), zzgcsVar);
            zzc.add(zzo);
        }
    }

    public final /* synthetic */ void zzf(Bitmap bitmap) {
        zzgwh zzt = zzgwj.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzt);
        synchronized (this.zzj) {
            zzhbn zzhbnVar = this.zzd;
            zzhcv zzc2 = zzhcx.zzc();
            zzc2.zza(zzt.zzb());
            zzc2.zzb("image/png");
            zzc2.zzc(2);
            zzhbnVar.zzi((zzhcx) zzc2.zzbr());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x006f  */
    @Override // com.google.android.gms.internal.ads.zzbxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(android.view.View r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzbxr r0 = r7.zzi
            boolean r0 = r0.zzc
            if (r0 != 0) goto L8
            goto L7f
        L8:
            boolean r0 = r7.zzl
            if (r0 != 0) goto L7f
            com.google.android.gms.ads.internal.zzv.zzq()
            r0 = 1
            r1 = 0
            if (r8 != 0) goto L14
            goto L6d
        L14:
            boolean r2 = r8.isDrawingCacheEnabled()     // Catch: java.lang.RuntimeException -> L2d
            r8.setDrawingCacheEnabled(r0)     // Catch: java.lang.RuntimeException -> L2d
            android.graphics.Bitmap r3 = r8.getDrawingCache()     // Catch: java.lang.RuntimeException -> L2d
            if (r3 == 0) goto L26
            android.graphics.Bitmap r3 = android.graphics.Bitmap.createBitmap(r3)     // Catch: java.lang.RuntimeException -> L2d
            goto L27
        L26:
            r3 = r1
        L27:
            r8.setDrawingCacheEnabled(r2)     // Catch: java.lang.RuntimeException -> L2b
            goto L34
        L2b:
            r2 = move-exception
            goto L2f
        L2d:
            r2 = move-exception
            r3 = r1
        L2f:
            java.lang.String r4 = "Fail to capture the web view"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r4, r2)
        L34:
            if (r3 != 0) goto L6c
            int r2 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L65
            int r3 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L65
            if (r2 == 0) goto L5f
            if (r3 != 0) goto L43
            goto L5f
        L43:
            int r4 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L65
            int r5 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r5, r6)     // Catch: java.lang.RuntimeException -> L65
            android.graphics.Canvas r5 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L65
            r5.<init>(r4)     // Catch: java.lang.RuntimeException -> L65
            r6 = 0
            r8.layout(r6, r6, r2, r3)     // Catch: java.lang.RuntimeException -> L65
            r8.draw(r5)     // Catch: java.lang.RuntimeException -> L65
            r1 = r4
            goto L6d
        L5f:
            java.lang.String r8 = "Width or height of view is zero"
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r8)     // Catch: java.lang.RuntimeException -> L65
            goto L6d
        L65:
            r8 = move-exception
            java.lang.String r2 = "Fail to capture the webview"
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r2, r8)
            goto L6d
        L6c:
            r1 = r3
        L6d:
            if (r1 != 0) goto L75
            java.lang.String r8 = "Failed to capture the webview bitmap."
            com.google.android.gms.internal.ads.zzbxt.zza(r8)
            return
        L75:
            r7.zzl = r0
            com.google.android.gms.internal.ads.zzbxl r8 = new com.google.android.gms.internal.ads.zzbxl
            r8.<init>()
            com.google.android.gms.ads.internal.util.zzs.zzh(r8)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbxp.zzg(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final void zzh(String str) {
        synchronized (this.zzj) {
            if (str == null) {
                this.zzd.zzd();
            } else {
                this.zzd.zze(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxu
    public final boolean zzi() {
        return PlatformVersion.isAtLeastKitKat() && this.zzi.zzc && !this.zzl;
    }
}
