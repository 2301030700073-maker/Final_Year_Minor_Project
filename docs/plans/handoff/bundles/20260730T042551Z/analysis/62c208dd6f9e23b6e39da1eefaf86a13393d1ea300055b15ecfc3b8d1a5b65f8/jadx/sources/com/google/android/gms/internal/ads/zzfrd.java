package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.Cif;
import defpackage.Creturn;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/* loaded from: classes.dex */
class zzfrd {
    static final String zza = new UUID(0, 0).toString();
    final zzfrc zzb;
    final zzfrb zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;

    public zzfrd(Context context, String str, String str2, String str3) {
        this.zzb = zzfrc.zzb(context);
        this.zzc = zzfrb.zza(context);
        this.zzd = str;
        this.zze = str.concat("_3p");
        this.zzf = str2;
        this.zzg = str2.concat("_3p");
        this.zzh = str3;
    }

    private final String zzh(String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes(Creturn.m7982new(str, str2, str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        StringBuilder m6916goto = Cif.m6916goto(this.zzh, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is ");
        m6916goto.append(str2 == null ? "null" : "not null");
        m6916goto.append(", hashKey is ");
        m6916goto.append(str3 != null ? "not null" : "null");
        throw new IllegalArgumentException(m6916goto.toString());
    }

    public final long zza(boolean z) {
        return this.zzb.zza(z ? this.zzg : this.zzf, -1L);
    }

    public final zzfra zzb(String str, String str2, long j, boolean z) {
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(zza)) {
                    String zze = zze(true);
                    String zzc = this.zzb.zzc("paid_3p_hash_key", null);
                    if (zze != null && zzc != null && !zze.equals(zzh(str, str2, zzc))) {
                        return zzc(str, str2);
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new zzfra();
        }
        boolean z2 = str != null;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            throw new IllegalStateException(this.zzh.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        long zza2 = zza(z2);
        if (zza2 != -1) {
            if (currentTimeMillis < zza2) {
                this.zzb.zzd(z2 ? this.zzg : this.zzf, Long.valueOf(currentTimeMillis));
            } else if (currentTimeMillis >= zza2 + j) {
                return zzc(str, str2);
            }
        }
        String zze2 = zze(z2);
        return (zze2 != null || z) ? new zzfra(zze2, zza(z2)) : zzc(str, str2);
    }

    public final zzfra zzc(String str, String str2) {
        if (str == null) {
            return zzd(UUID.randomUUID().toString(), false);
        }
        String uuid = UUID.randomUUID().toString();
        this.zzb.zzd("paid_3p_hash_key", uuid);
        return zzd(zzh(str, str2, uuid), true);
    }

    public final zzfra zzd(String str, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            throw new IllegalStateException(this.zzh.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        this.zzb.zzd(z ? this.zzg : this.zzf, Long.valueOf(currentTimeMillis));
        this.zzb.zzd(z ? this.zze : this.zzd, str);
        return new zzfra(str, currentTimeMillis);
    }

    public final String zze(boolean z) {
        return this.zzb.zzc(z ? this.zze : this.zzd, null);
    }

    public final void zzf(boolean z) {
        this.zzb.zze(z ? this.zzg : this.zzf);
        this.zzb.zze(z ? this.zze : this.zzd);
    }

    public final boolean zzg(boolean z) {
        return this.zzb.zzg(this.zzd);
    }
}
