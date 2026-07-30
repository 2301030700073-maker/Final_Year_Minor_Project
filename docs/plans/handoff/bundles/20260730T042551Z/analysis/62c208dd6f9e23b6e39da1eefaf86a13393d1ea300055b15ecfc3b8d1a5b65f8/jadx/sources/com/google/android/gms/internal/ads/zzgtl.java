package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgtl extends zzgxr implements zzgzd {
    private static final zzgtl zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgto zze;

    static {
        zzgtl zzgtlVar = new zzgtl();
        zza = zzgtlVar;
        zzgxr.zzbZ(zzgtl.class, zzgtlVar);
    }

    private zzgtl() {
    }

    public static zzgtj zzb() {
        return (zzgtj) zza.zzaZ();
    }

    public static zzgtl zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgtl) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzg() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzh(zzgtl zzgtlVar, zzgto zzgtoVar) {
        zzgtoVar.getClass();
        zzgtlVar.zze = zzgtoVar;
        zzgtlVar.zzc |= 1;
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
            return new zzgtl();
        }
        zzgtk zzgtkVar = null;
        if (ordinal == 4) {
            return new zzgtj(zzgtkVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgtl.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgto zzf() {
        zzgto zzgtoVar = this.zze;
        return zzgtoVar == null ? zzgto.zzd() : zzgtoVar;
    }
}
