package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzftj {
    private static final Object zzf = new Object();
    private final Context zza;
    private final SharedPreferences zzb;
    private final String zzc;
    private final zzfsq zzd;
    private boolean zze;

    public zzftj(Context context, zzbaa zzbaaVar, zzfsq zzfsqVar, boolean z) {
        this.zze = false;
        this.zza = context;
        this.zzc = Integer.toString(zzbaaVar.zza());
        this.zzb = context.getSharedPreferences("pcvmspf", 0);
        this.zzd = zzfsqVar;
        this.zze = z;
    }

    private final File zze(String str) {
        return new File(new File(this.zza.getDir("pccache", 0), this.zzc), str);
    }

    private final String zzf() {
        String str = this.zzc;
        String.valueOf(str);
        return "FBAMTD".concat(String.valueOf(str));
    }

    private final String zzg() {
        String str = this.zzc;
        String.valueOf(str);
        return "LATMTD".concat(String.valueOf(str));
    }

    private static String zzh(zzbac zzbacVar) {
        zzbah zzi = zzbai.zzi();
        zzi.zza(zzbacVar.zza().zza());
        zzi.zzb(zzbacVar.zza().zzb());
        zzi.zzd(zzbacVar.zza().zzd());
        zzi.zze(zzbacVar.zza().zze());
        zzi.zzc(zzbacVar.zza().zzc());
        return Hex.bytesToStringLowercase(((zzbai) zzi.zzbu()).zzaN());
    }

    private final void zzi(int i, long j) {
        this.zzd.zza(i, j);
    }

    private final void zzj(int i, long j, String str) {
        this.zzd.zzb(i, j, str);
    }

    private final zzbai zzk(int i) {
        String string = i == 1 ? this.zzb.getString(zzg(), null) : this.zzb.getString(zzf(), null);
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzhvi zzhviVar = zzhvi.zzb;
            return zzbai.zzh(zzhvi.zzr(stringToBytes, 0, stringToBytes.length), this.zze ? zzhvy.zza() : zzhvy.zzb());
        } catch (zzhxd unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(zzbac zzbacVar, zzfti zzftiVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzbai zzk = zzk(1);
            String zza = zzbacVar.zza().zza();
            if (zzk != null && zzk.zza().equals(zza)) {
                zzi(4014, currentTimeMillis);
                return false;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            File zze = zze(zza);
            if (zze.exists()) {
                String str = true != zze.isDirectory() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1";
                String str2 = true != zze.isFile() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1";
                StringBuilder sb = new StringBuilder(str.length() + 5 + str2.length());
                sb.append("d:");
                sb.append(str);
                sb.append(",f:");
                sb.append(str2);
                zzj(4023, currentTimeMillis2, sb.toString());
                zzi(4015, currentTimeMillis2);
            } else if (!zze.mkdirs()) {
                zzj(4024, currentTimeMillis2, "cw:".concat(true != zze.canWrite() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1"));
                zzi(4015, currentTimeMillis2);
                return false;
            }
            File zze2 = zze(zza);
            File file = new File(zze2, "pcam.jar");
            File file2 = new File(zze2, "pcbc");
            if (!zzftd.zzb(file, zzbacVar.zzb().zzv())) {
                zzi(4016, currentTimeMillis);
                return false;
            }
            if (!zzftd.zzb(file2, zzbacVar.zzc().zzv())) {
                zzi(4017, currentTimeMillis);
                return false;
            }
            if (zzftiVar != null && !zzftiVar.zza(file)) {
                zzi(4018, currentTimeMillis);
                zzftd.zze(zze2);
                return false;
            }
            String zzh = zzh(zzbacVar);
            long currentTimeMillis3 = System.currentTimeMillis();
            SharedPreferences sharedPreferences = this.zzb;
            String string = sharedPreferences.getString(zzg(), null);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(zzg(), zzh);
            if (string != null) {
                edit.putString(zzf(), string);
            }
            if (!edit.commit()) {
                zzi(4019, currentTimeMillis3);
                return false;
            }
            HashSet hashSet = new HashSet();
            zzbai zzk2 = zzk(1);
            if (zzk2 != null) {
                hashSet.add(zzk2.zza());
            }
            zzbai zzk3 = zzk(2);
            if (zzk3 != null) {
                hashSet.add(zzk3.zza());
            }
            for (File file3 : new File(this.zza.getDir("pccache", 0), this.zzc).listFiles()) {
                if (!hashSet.contains(file3.getName())) {
                    zzftd.zze(file3);
                }
            }
            zzi(5014, currentTimeMillis);
            return true;
        }
    }

    public final boolean zzb(zzbac zzbacVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            if (!zzftd.zzb(new File(zze(zzbacVar.zza().zza()), "pcbc"), zzbacVar.zzc().zzv())) {
                zzi(4020, currentTimeMillis);
                return false;
            }
            String zzh = zzh(zzbacVar);
            SharedPreferences.Editor edit = this.zzb.edit();
            edit.putString(zzg(), zzh);
            boolean commit = edit.commit();
            if (commit) {
                zzi(5015, currentTimeMillis);
            } else {
                zzi(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    public final zzftb zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzbai zzk = zzk(1);
            if (zzk == null) {
                zzi(4022, currentTimeMillis);
                return null;
            }
            File zze = zze(zzk.zza());
            File file = new File(zze, "pcam.jar");
            if (!file.exists()) {
                file = new File(zze, "pcam");
            }
            File file2 = new File(zze, "pcbc");
            File file3 = new File(zze, "pcopt");
            zzi(5016, currentTimeMillis);
            return new zzftb(zzk, file, file2, file3);
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zzf) {
            zzbai zzk = zzk(1);
            if (zzk == null) {
                zzi(4025, currentTimeMillis);
                return false;
            }
            File zze = zze(zzk.zza());
            if (!new File(zze, "pcam.jar").exists()) {
                zzi(4026, currentTimeMillis);
                return false;
            }
            if (new File(zze, "pcbc").exists()) {
                zzi(5019, currentTimeMillis);
                return true;
            }
            zzi(4027, currentTimeMillis);
            return false;
        }
    }
}
