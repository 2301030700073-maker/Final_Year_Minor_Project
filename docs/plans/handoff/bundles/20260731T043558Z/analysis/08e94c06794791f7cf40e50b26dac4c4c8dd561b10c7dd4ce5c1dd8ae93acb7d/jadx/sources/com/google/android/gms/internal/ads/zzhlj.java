package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhlj extends zzhwo implements zzhya {
    private static final zzhlj zze;
    private static volatile zzhyh zzf;
    private String zza = "";
    private int zzb;
    private int zzc;
    private int zzd;

    static {
        zzhlj zzhljVar = new zzhlj();
        zze = zzhljVar;
        zzhwo.zzbu(zzhlj.class, zzhljVar);
    }

    private zzhlj() {
    }

    public static zzhli zza() {
        return (zzhli) zze.zzbn();
    }

    final /* synthetic */ void zzb(String str) {
        str.getClass();
        this.zza = str;
    }

    final /* synthetic */ void zzc(int i) {
        this.zzc = i;
    }

    final /* synthetic */ void zzd(zzhlt zzhltVar) {
        this.zzd = zzhltVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhlj();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhli(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhlj.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(int i) {
        this.zzb = zzhky.zza(i);
    }
}
