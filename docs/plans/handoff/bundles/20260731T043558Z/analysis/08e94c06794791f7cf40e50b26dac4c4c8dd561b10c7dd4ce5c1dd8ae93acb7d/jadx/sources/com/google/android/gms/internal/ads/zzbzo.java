package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbzo implements zzbzt {
    public static final /* synthetic */ int zzb = 0;
    private static final List zzc = Collections.synchronizedList(new ArrayList());
    boolean zza;
    private final zziaw zzd;
    private final LinkedHashMap zze;
    private final Context zzh;
    private final zzbzq zzi;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet zzk = new HashSet();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzbzo(Context context, VersionInfoParcel versionInfoParcel, zzbzq zzbzqVar, String str, zzbzp zzbzpVar) {
        Preconditions.checkNotNull(zzbzqVar, "SafeBrowsing config is not present.");
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap();
        this.zzi = zzbzqVar;
        Iterator it = zzbzqVar.zze.iterator();
        while (it.hasNext()) {
            this.zzk.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove("cookie".toLowerCase(Locale.ENGLISH));
        zziaw zzg = zzida.zzg();
        zzg.zzn(9);
        if (str != null) {
            zzg.zzb(str);
            zzg.zzc(str);
        }
        zziax zzc2 = zziay.zzc();
        String str2 = this.zzi.zza;
        if (str2 != null) {
            zzc2.zza(str2);
        }
        zzg.zzd((zziay) zzc2.zzbu());
        zzicm zzc3 = zzicn.zzc();
        zzc3.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str3 = versionInfoParcel.afmaVersion;
        if (str3 != null) {
            zzc3.zza(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zzc3.zzb(apkVersion);
        }
        zzg.zzk((zzicn) zzc3.zzbu());
        this.zzd = zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbzt
    public final zzbzq zza() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzbzt
    public final void zzb(String str) {
        synchronized (this.zzj) {
            if (str == null) {
                this.zzd.zzi();
            } else {
                this.zzd.zzh(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzt
    public final boolean zzc() {
        return this.zzi.zzc && !this.zzl;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
    @Override // com.google.android.gms.internal.ads.zzbzt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.view.View r8) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzbzq r0 = r7.zzi
            boolean r0 = r0.zzc
            if (r0 != 0) goto L8
            goto L85
        L8:
            boolean r0 = r7.zzl
            if (r0 != 0) goto L85
            com.google.android.gms.ads.internal.zzt.zzc()
            r0 = 1
            r1 = 0
            if (r8 != 0) goto L14
            goto L73
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
            goto L36
        L2b:
            r2 = move-exception
            goto L2f
        L2d:
            r2 = move-exception
            r3 = r1
        L2f:
            int r4 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r4 = "Fail to capture the web view"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r4, r2)
        L36:
            if (r3 != 0) goto L72
            int r2 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L69
            int r3 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L69
            if (r2 == 0) goto L61
            if (r3 != 0) goto L45
            goto L61
        L45:
            int r4 = r8.getWidth()     // Catch: java.lang.RuntimeException -> L69
            int r5 = r8.getHeight()     // Catch: java.lang.RuntimeException -> L69
            android.graphics.Bitmap$Config r6 = android.graphics.Bitmap.Config.RGB_565     // Catch: java.lang.RuntimeException -> L69
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r5, r6)     // Catch: java.lang.RuntimeException -> L69
            android.graphics.Canvas r5 = new android.graphics.Canvas     // Catch: java.lang.RuntimeException -> L69
            r5.<init>(r4)     // Catch: java.lang.RuntimeException -> L69
            r6 = 0
            r8.layout(r6, r6, r2, r3)     // Catch: java.lang.RuntimeException -> L69
            r8.draw(r5)     // Catch: java.lang.RuntimeException -> L69
            r1 = r4
            goto L73
        L61:
            java.lang.String r8 = "Width or height of view is zero"
            int r2 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.RuntimeException -> L69
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r8)     // Catch: java.lang.RuntimeException -> L69
            goto L73
        L69:
            r8 = move-exception
            int r2 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r2 = "Fail to capture the webview"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r2, r8)
            goto L73
        L72:
            r1 = r3
        L73:
            if (r1 != 0) goto L7b
            java.lang.String r8 = "Failed to capture the webview bitmap."
            com.google.android.gms.internal.ads.zzbzs.zza(r8)
            return
        L7b:
            r7.zzl = r0
            com.google.android.gms.internal.ads.zzbzn r8 = new com.google.android.gms.internal.ads.zzbzn
            r8.<init>()
            com.google.android.gms.ads.internal.util.zzs.zzh(r8)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbzo.zzd(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbzt
    public final void zze(String str, Map map, int i) {
        synchronized (this.zzj) {
            if (i == 3) {
                this.zzm = true;
            }
            LinkedHashMap linkedHashMap = this.zze;
            if (linkedHashMap.containsKey(str)) {
                if (i == 3) {
                    ((zzick) linkedHashMap.get(str)).zze(4);
                }
                return;
            }
            zzick zze = zzicl.zze();
            int zza = zzicj.zza(i);
            if (zza != 0) {
                zze.zze(zza);
            }
            zze.zza(linkedHashMap.size());
            zze.zzb(str);
            zzibj zzc2 = zzibm.zzc();
            if (!this.zzk.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : "";
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : "";
                    if (this.zzk.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        zzibh zzc3 = zzibi.zzc();
                        zzc3.zza(zzhvi.zzs(str2));
                        zzc3.zzb(zzhvi.zzs(str3));
                        zzc2.zza((zzibi) zzc3.zzbu());
                    }
                }
            }
            zze.zzc((zzibm) zzc2.zzbu());
            linkedHashMap.put(str, zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzt
    public final void zzf() {
        synchronized (this.zzj) {
            this.zze.keySet();
            ListenableFuture zza = zzgui.zza(Collections.emptyMap());
            zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzbzk
                @Override // com.google.android.gms.internal.ads.zzgtq
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    return zzbzo.this.zzh((Map) obj);
                }
            };
            zzgus zzgusVar = zzcbv.zzg;
            ListenableFuture zzj = zzgui.zzj(zza, zzgtqVar, zzgusVar);
            ListenableFuture zzi = zzgui.zzi(zzj, 10L, TimeUnit.SECONDS, zzcbv.zzd);
            zzgui.zzr(zzj, new zzbzj(this, zzi), zzgusVar);
            zzc.add(zzi);
        }
    }

    final /* synthetic */ void zzg(Bitmap bitmap) {
        zzhvh zzx = zzhvi.zzx();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzx);
        synchronized (this.zzj) {
            zziaw zziawVar = this.zzd;
            zzice zzc2 = zzicg.zzc();
            zzc2.zzb(zzx.zza());
            zzc2.zza("image/png");
            zzc2.zzc(2);
            zziawVar.zzj((zzicg) zzc2.zzbu());
        }
    }

    final /* synthetic */ ListenableFuture zzh(Map map) {
        int length;
        zzick zzickVar;
        ListenableFuture zzk;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        Object obj = this.zzj;
                        synchronized (obj) {
                            length = optJSONArray.length();
                            synchronized (obj) {
                                zzickVar = (zzick) this.zze.get(str);
                            }
                        }
                        if (zzickVar == null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 50);
                            sb.append("Cannot find the corresponding resource object for ");
                            sb.append(str);
                            zzbzs.zza(sb.toString());
                        } else {
                            for (int i = 0; i < length; i++) {
                                zzickVar.zzd(optJSONArray.getJSONObject(i).getString("threat_type"));
                            }
                            this.zza = (length > 0) | this.zza;
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzbhc.zza.zze()).booleanValue()) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get SafeBrowsing metadata", e);
                }
                return zzgui.zzc(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z = this.zza;
        if (!(z && this.zzi.zzg) && (!(this.zzm && this.zzi.zzf) && (z || !this.zzi.zzd))) {
            return zzgui.zza(null);
        }
        synchronized (this.zzj) {
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                this.zzd.zzf((zzicl) ((zzick) it.next()).zzbu());
            }
            zziaw zziawVar = this.zzd;
            zziawVar.zzl(this.zzf);
            zziawVar.zzm(this.zzg);
            if (zzbzs.zzb()) {
                String zza = zziawVar.zza();
                String zzg = zziawVar.zzg();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zza).length() + 38 + String.valueOf(zzg).length() + 15);
                sb2.append("Sending SB report\n  url: ");
                sb2.append(zza);
                sb2.append("\n  clickUrl: ");
                sb2.append(zzg);
                sb2.append("\n  resources: \n");
                StringBuilder sb3 = new StringBuilder(sb2.toString());
                for (zzicl zziclVar : zziawVar.zze()) {
                    sb3.append("    [");
                    sb3.append(zziclVar.zzd());
                    sb3.append("] ");
                    sb3.append(zziclVar.zzc());
                }
                zzbzs.zza(sb3.toString());
            }
            ListenableFuture zzb2 = new com.google.android.gms.ads.internal.util.zzbl(this.zzh).zzb(1, this.zzi.zzb, null, ((zzida) zziawVar.zzbu()).zzaN());
            if (zzbzs.zzb()) {
                zzb2.addListener(zzbzm.zza, zzcbv.zza);
            }
            zzk = zzgui.zzk(zzb2, zzbzl.zza, zzcbv.zzg);
        }
        return zzk;
    }
}
