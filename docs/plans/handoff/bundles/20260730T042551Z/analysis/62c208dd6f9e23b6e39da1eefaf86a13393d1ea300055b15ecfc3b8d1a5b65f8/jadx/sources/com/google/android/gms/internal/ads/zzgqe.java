package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgqe extends zzgxr implements zzgzd {
    private static final zzgqe zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgqh zze;

    static {
        zzgqe zzgqeVar = new zzgqe();
        zza = zzgqeVar;
        zzgxr.zzbZ(zzgqe.class, zzgqeVar);
    }

    private zzgqe() {
    }

    public static zzgqc zzb() {
        return (zzgqc) zza.zzaZ();
    }

    public static zzgqe zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgqe) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static /* synthetic */ void zzh(zzgqe zzgqeVar, zzgqh zzgqhVar) {
        zzgqhVar.getClass();
        zzgqeVar.zze = zzgqhVar;
        zzgqeVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzgqe();
        }
        zzgqd zzgqdVar = null;
        if (ordinal == 4) {
            return new zzgqc(zzgqdVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgqe.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgqh zzf() {
        zzgqh zzgqhVar = this.zze;
        return zzgqhVar == null ? zzgqh.zzd() : zzgqhVar;
    }
}
