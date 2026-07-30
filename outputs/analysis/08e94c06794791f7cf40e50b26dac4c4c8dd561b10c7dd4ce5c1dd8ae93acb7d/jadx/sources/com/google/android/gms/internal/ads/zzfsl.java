package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfsl extends zzhwo implements zzhya {
    private static final zzfsl zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private zzhww zzb = zzbC();
    private String zzc = "";
    private String zzd = "";
    private String zze = "";

    static {
        zzfsl zzfslVar = new zzfsl();
        zzf = zzfslVar;
        zzhwo.zzbu(zzfsl.class, zzfslVar);
    }

    private zzfsl() {
    }

    public static zzfsk zza() {
        return (zzfsk) zzf.zzbn();
    }

    final /* synthetic */ void zzb(String str) {
        str.getClass();
        this.zza |= 1;
        this.zzc = str;
    }

    final /* synthetic */ void zzd(int i) {
        zzhww zzhwwVar = this.zzb;
        if (!zzhwwVar.zza()) {
            this.zzb = zzhwo.zzbD(zzhwwVar);
        }
        this.zzb.zzi(2);
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zza", "zzb", zzfsj.zza, "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzfsl();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfsk(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzfsl.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
