package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zziau extends zzhwo implements zzhya {
    private static final zziau zzy;
    private static volatile zzhyh zzz;
    private int zza;
    private int zzb;
    private boolean zzc;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzp;
    private long zzu;
    private boolean zzw;
    private String zzd = "";
    private zzhxa zze = zzhwo.zzbM();
    private String zzj = "";
    private zzhxa zzo = zzbM();
    private zzhww zzv = zzbC();
    private zzhww zzx = zzbC();

    static {
        zziau zziauVar = new zziau();
        zzy = zziauVar;
        zzhwo.zzbu(zziau.class, zziauVar);
    }

    private zziau() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzy, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"zza", "zzb", zziat.zza, "zzc", "zzd", "zze", "zzf", zziar.zza, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zziaq.class, "zzp", "zzu", "zzv", zziai.zza(), "zzw", "zzx", zzias.zza});
        }
        if (ordinal == 3) {
            return new zziau();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzian(bArr);
        }
        if (ordinal == 5) {
            return zzy;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzz;
        if (zzhyhVar == null) {
            synchronized (zziau.class) {
                zzhyhVar = zzz;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzy);
                    zzz = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
