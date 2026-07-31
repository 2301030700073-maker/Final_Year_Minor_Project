package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes3.dex */
public final class zzbez {
    String zzd;
    Context zze;
    String zzf;
    private AtomicBoolean zzh;
    private File zzi;
    final BlockingQueue zza = new ArrayBlockingQueue(100);
    final LinkedHashMap zzb = new LinkedHashMap();
    final Map zzc = new HashMap();
    private final HashSet zzg = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    private final void zzg(Map map, zzbfi zzbfiVar) {
        Uri.Builder buildUpon = Uri.parse(this.zzd).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (zzbfiVar != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(zzbfiVar.zza())) {
                sb.append("&it=");
                sb.append(zzbfiVar.zza());
            }
            if (!TextUtils.isEmpty(zzbfiVar.zzb())) {
                sb.append("&blat=");
                sb.append(zzbfiVar.zzb());
            }
            uri = sb.toString();
        }
        if (!this.zzh.get()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            com.google.android.gms.ads.internal.util.zzs.zzP(this.zze, this.zzf, uri);
            return;
        }
        File file = this.zzi;
        if (file == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                fileOutputStream = SentryFileOutputStream.Factory.create(new FileOutputStream(file, true), file, true);
                fileOutputStream.write(uri.getBytes());
                fileOutputStream.write(10);
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter: Cannot close file: sdk_csi_data.txt.", e);
                }
            } catch (IOException e2) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e2);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                    }
                }
            }
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                }
            }
            throw th;
        }
    }

    public final void zza(Context context, String str, String str2, Map map) {
        File externalStorageDirectory;
        this.zze = context;
        this.zzf = str;
        this.zzd = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.zzh = atomicBoolean;
        atomicBoolean.set(((Boolean) zzbgp.zzc.zze()).booleanValue());
        if (this.zzh.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzi = new File(zzftx.zza().zza(externalStorageDirectory, "sdk_csi_data.txt"));
        }
        for (Map.Entry entry : map.entrySet()) {
            this.zzb.put((String) entry.getKey(), (String) entry.getValue());
        }
        zzcbv.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbey
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbez.this.zzf();
            }
        });
        Map map2 = this.zzc;
        zzbff zzbffVar = zzbff.zzb;
        map2.put("action", zzbffVar);
        map2.put(FirebaseAnalytics.Param.AD_FORMAT, zzbffVar);
        map2.put("e", zzbff.zzc);
    }

    public final boolean zzb(zzbfj zzbfjVar) {
        return this.zza.offer(zzbfjVar);
    }

    final Map zzc(Map map, Map map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            linkedHashMap.put(str, zzd(str).zza((String) linkedHashMap.get(str), str2));
        }
        return linkedHashMap;
    }

    public final zzbff zzd(String str) {
        zzbff zzbffVar = (zzbff) this.zzc.get(str);
        return zzbffVar != null ? zzbffVar : zzbff.zza;
    }

    public final void zze(String str) {
        if (this.zzg.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, this.zzf);
        linkedHashMap.put("ue", str);
        zzg(zzc(this.zzb, linkedHashMap), null);
    }

    final /* synthetic */ void zzf() {
        while (true) {
            try {
                zzbfj zzbfjVar = (zzbfj) this.zza.take();
                zzbfi zzc = zzbfjVar.zzc();
                if (!TextUtils.isEmpty(zzc.zza())) {
                    zzg(zzc(this.zzb, zzbfjVar.zze()), zzc);
                }
            } catch (InterruptedException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }
}
