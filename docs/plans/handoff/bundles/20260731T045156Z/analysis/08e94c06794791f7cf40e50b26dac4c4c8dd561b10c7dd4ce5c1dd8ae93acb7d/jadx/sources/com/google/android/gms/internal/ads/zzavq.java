package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzavq extends zzhwo implements zzhya {
    private static final zzavq zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private zzhxa zzb = zzbM();
    private zzhvi zzc = zzhvi.zzb;
    private int zzd = 1;
    private int zze = 1;

    static {
        zzavq zzavqVar = new zzavq();
        zzf = zzavqVar;
        zzhwo.zzbu(zzavq.class, zzavqVar);
    }

    private zzavq() {
    }

    public static zzavp zza() {
        return (zzavp) zzf.zzbn();
    }

    final /* synthetic */ void zzb(zzhvi zzhviVar) {
        zzhxa zzhxaVar = this.zzb;
        if (!zzhxaVar.zza()) {
            this.zzb = zzhwo.zzbN(zzhxaVar);
        }
        this.zzb.add(zzhviVar);
    }

    final /* synthetic */ void zzc(zzhvi zzhviVar) {
        this.zza |= 1;
        this.zzc = zzhviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zza", "zzb", "zzc", "zzd", zzavk.zza, "zze", zzavg.zza});
        }
        if (ordinal == 3) {
            return new zzavq();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzavp(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzavq.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(int i) {
        this.zzd = 4;
        this.zza |= 2;
    }

    final /* synthetic */ void zzg(int i) {
        this.zze = i - 1;
        this.zza |= 4;
    }
}
