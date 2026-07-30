package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamite.DynamiteModule;
import defpackage.BinderC3652rv;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzn {
    private static volatile zzag zze;
    private static Context zzg;
    static final zzl zza = new zzf(zzj.zze("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
    static final zzl zzb = new zzg(zzj.zze("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
    static final zzl zzc = new zzh(zzj.zze("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
    static final zzl zzd = new zzi(zzj.zze("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
    private static final Object zzf = new Object();

    public static zzx zza(String str, zzj zzjVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzh(str, zzjVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static zzx zzb(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, true);
    }

    public static zzx zzc(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, false);
    }

    public static /* synthetic */ String zzd(boolean z, String str, zzj zzjVar) {
        String str2 = true != (!z && zzh(str, zzjVar, true, false).zza) ? "not allowed" : "debug cert rejected";
        MessageDigest zza2 = AndroidUtilsLight.zza("SHA-256");
        Preconditions.checkNotNull(zza2);
        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza2.digest(zzjVar.zzf())), Boolean.valueOf(z), "12451000.false");
    }

    public static synchronized void zze(Context context) {
        synchronized (zzn.class) {
            if (zzg == null) {
                if (context != null) {
                    zzg = context.getApplicationContext();
                }
            }
        }
    }

    public static boolean zzf() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zzj();
            z = zze.zzg();
        } catch (RemoteException | DynamiteModule.Cdo unused) {
            z = false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return z;
    }

    public static boolean zzg() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zzj();
            z = zze.zzi();
        } catch (RemoteException | DynamiteModule.Cdo unused) {
            z = false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return z;
    }

    private static zzx zzh(final String str, final zzj zzjVar, final boolean z, boolean z2) {
        try {
            zzj();
            Preconditions.checkNotNull(zzg);
            try {
                return zze.zzh(new zzs(str, zzjVar, z, z2), new BinderC3652rv(zzg.getPackageManager())) ? zzx.zzb() : new zzv(new Callable() { // from class: com.google.android.gms.common.zze
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzn.zzd(z, str, zzjVar);
                    }
                }, null);
            } catch (RemoteException e) {
                return zzx.zzd("module call", e);
            }
        } catch (DynamiteModule.Cdo e2) {
            return zzx.zzd("module init: ".concat(String.valueOf(e2.getMessage())), e2);
        }
    }

    private static zzx zzi(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        zzx zzd2;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzj();
                zzo zzoVar = new zzo(str, z, false, new BinderC3652rv(zzg), false, true);
                try {
                    zzq zze2 = z4 ? zze.zze(zzoVar) : zze.zzf(zzoVar);
                    if (zze2.zzb()) {
                        zzd2 = zzx.zzf(zze2.zzc());
                    } else {
                        String zza2 = zze2.zza();
                        PackageManager.NameNotFoundException nameNotFoundException = zze2.zzd() == 4 ? new PackageManager.NameNotFoundException() : null;
                        if (zza2 == null) {
                            zza2 = "error checking package certificate";
                        }
                        zzd2 = zzx.zzg(zze2.zzc(), zze2.zzd(), zza2, nameNotFoundException);
                    }
                } catch (RemoteException e) {
                    zzd2 = zzx.zzd("module call", e);
                }
            } catch (DynamiteModule.Cdo e2) {
                zzd2 = zzx.zzd("module init: ".concat(String.valueOf(e2.getMessage())), e2);
            }
            return zzd2;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static void zzj() {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            if (zze == null) {
                zze = zzaf.zzb(DynamiteModule.m5606for(zzg, DynamiteModule.f10181do, "com.google.android.gms.googlecertificates").m5610if("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }
}
