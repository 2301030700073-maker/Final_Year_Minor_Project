package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgtv extends zzgxr implements zzgzd {
    private static final zzgtv zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgub zze;
    private zzgwj zzf = zzgwj.zzb;

    static {
        zzgtv zzgtvVar = new zzgtv();
        zza = zzgtvVar;
        zzgxr.zzbZ(zzgtv.class, zzgtvVar);
    }

    private zzgtv() {
    }

    public static zzgtt zzb() {
        return (zzgtt) zza.zzaZ();
    }

    public static zzgtv zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgtv) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static /* synthetic */ void zzi(zzgtv zzgtvVar, zzgub zzgubVar) {
        zzgubVar.getClass();
        zzgtvVar.zze = zzgubVar;
        zzgtvVar.zzc |= 1;
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
            return zzgxr.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzgtv();
        }
        zzgtu zzgtuVar = null;
        if (ordinal == 4) {
            return new zzgtt(zzgtuVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgtv.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgub zzf() {
        zzgub zzgubVar = this.zze;
        return zzgubVar == null ? zzgub.zzd() : zzgubVar;
    }

    public final zzgwj zzg() {
        return this.zzf;
    }
}
