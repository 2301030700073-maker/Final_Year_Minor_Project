package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgtf extends zzgxr implements zzgzd {
    private static final zzgtf zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgti zze;

    static {
        zzgtf zzgtfVar = new zzgtf();
        zza = zzgtfVar;
        zzgxr.zzbZ(zzgtf.class, zzgtfVar);
    }

    private zzgtf() {
    }

    public static zzgtd zzb() {
        return (zzgtd) zza.zzaZ();
    }

    public static zzgtf zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgtf) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzg() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzh(zzgtf zzgtfVar, zzgti zzgtiVar) {
        zzgtiVar.getClass();
        zzgtfVar.zze = zzgtiVar;
        zzgtfVar.zzc |= 1;
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
            return new zzgtf();
        }
        zzgte zzgteVar = null;
        if (ordinal == 4) {
            return new zzgtd(zzgteVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgtf.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgti zzf() {
        zzgti zzgtiVar = this.zze;
        return zzgtiVar == null ? zzgti.zzc() : zzgtiVar;
    }
}
