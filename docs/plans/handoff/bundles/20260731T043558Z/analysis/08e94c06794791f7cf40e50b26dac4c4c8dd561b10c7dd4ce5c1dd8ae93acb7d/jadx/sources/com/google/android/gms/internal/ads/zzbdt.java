package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzbdz;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbdt {
    private final zzbdy zza;
    private final zzbdz.zzt.zza zzb;
    private final boolean zzc;

    private zzbdt() {
        this.zzb = zzbdz.zzt.zzx();
        this.zzc = false;
        this.zza = new zzbdy();
    }

    public static zzbdt zza() {
        return new zzbdt();
    }

    private final synchronized void zzd(int i) {
        zzbdz.zzt.zza zzaVar = this.zzb;
        zzaVar.zzE();
        zzaVar.zzD(com.google.android.gms.ads.internal.util.zzs.zzk());
        zzbdx zzbdxVar = new zzbdx(this.zza, zzaVar.zzbu().zzaN(), null);
        int i2 = i - 1;
        zzbdxVar.zzb(i2);
        zzbdxVar.zza();
        String num = Integer.toString(i2, 10);
        String.valueOf(num);
        com.google.android.gms.ads.internal.util.zze.zza("Logging Event with event code : ".concat(String.valueOf(num)));
    }

    private final synchronized void zze(int i) {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return;
        }
        File file = new File(zzftx.zza().zza(externalStorageDirectory, "clearcut_events.txt"));
        try {
            FileOutputStream create = SentryFileOutputStream.Factory.create(new FileOutputStream(file, true), file, true);
            try {
                try {
                    create.write(zzf(i).getBytes());
                } finally {
                    try {
                        create.close();
                    } catch (IOException unused) {
                        com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                    }
                }
            } catch (IOException unused2) {
                com.google.android.gms.ads.internal.util.zze.zza("Could not write Clearcut to file.");
                try {
                    create.close();
                } catch (IOException unused3) {
                    com.google.android.gms.ads.internal.util.zze.zza("Could not close Clearcut output stream.");
                }
            }
        } catch (FileNotFoundException unused4) {
            com.google.android.gms.ads.internal.util.zze.zza("Could not find file for Clearcut");
        }
    }

    private final synchronized String zzf(int i) {
        zzbdz.zzt.zza zzaVar;
        zzaVar = this.zzb;
        return String.format("id=%s,timestamp=%s,event=%s,data=%s\n", zzaVar.zzf(), Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime()), Integer.valueOf(i - 1), Base64.encodeToString(zzaVar.zzbu().zzaN(), 3));
    }

    public final synchronized void zzb(zzbds zzbdsVar) {
        if (this.zzc) {
            try {
                zzbdsVar.zza(this.zzb);
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "AdMobClearcutLogger.modify");
            }
        }
    }

    public final synchronized void zzc(int i) {
        if (this.zzc) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfK)).booleanValue()) {
                zze(i);
            } else {
                zzd(i);
            }
        }
    }

    public zzbdt(zzbdy zzbdyVar) {
        this.zzb = zzbdz.zzt.zzx();
        this.zza = zzbdyVar;
        this.zzc = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfJ)).booleanValue();
    }
}
