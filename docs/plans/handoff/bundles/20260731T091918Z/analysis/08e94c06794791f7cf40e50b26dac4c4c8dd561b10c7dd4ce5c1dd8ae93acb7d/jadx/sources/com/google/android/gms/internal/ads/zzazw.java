package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzazw extends zzhwo implements zzhya {
    private static final zzazw zzh;
    private static volatile zzhyh zzi;
    private int zza;
    private long zzc;
    private long zzf;
    private zzhvi zzb = zzhvi.zzb;
    private String zzd = "";
    private String zze = "";
    private String zzg = "";

    static {
        zzazw zzazwVar = new zzazw();
        zzh = zzazwVar;
        zzhwo.zzbu(zzazw.class, zzazwVar);
    }

    private zzazw() {
    }

    public static zzazv zza() {
        return (zzazv) zzh.zzbn();
    }

    final /* synthetic */ void zzb(zzhvi zzhviVar) {
        this.zza |= 1;
        this.zzb = zzhviVar;
    }

    final /* synthetic */ void zzc(long j) {
        this.zza |= 2;
        this.zzc = j;
    }

    final /* synthetic */ void zzd(String str) {
        str.getClass();
        this.zza |= 4;
        this.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzh, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ည\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဂ\u0004\u0006ဈ\u0005", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzazw();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzazv(bArr);
        }
        if (ordinal == 5) {
            return zzh;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzi;
        if (zzhyhVar == null) {
            synchronized (zzazw.class) {
                zzhyhVar = zzi;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzh);
                    zzi = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(String str) {
        str.getClass();
        this.zza |= 8;
        this.zze = str;
    }

    final /* synthetic */ void zzg(long j) {
        this.zza |= 16;
        this.zzf = j;
    }

    final /* synthetic */ void zzh(String str) {
        str.getClass();
        this.zza |= 32;
        this.zzg = str;
    }
}
