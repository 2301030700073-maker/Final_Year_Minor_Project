package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgru extends zzgxr implements zzgzd {
    private static final zzgru zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgwj zzd = zzgwj.zzb;

    static {
        zzgru zzgruVar = new zzgru();
        zza = zzgruVar;
        zzgxr.zzbZ(zzgru.class, zzgruVar);
    }

    private zzgru() {
    }

    public static zzgrs zzb() {
        return (zzgrs) zza.zzaZ();
    }

    public static zzgru zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgru) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzg() {
        return zza.zzbN();
    }

    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzgru();
        }
        zzgrt zzgrtVar = null;
        if (ordinal == 4) {
            return new zzgrs(zzgrtVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgru.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgwj zzf() {
        return this.zzd;
    }
}
