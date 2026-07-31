package com.google.android.gms.internal.ads;

import com.facebook.AuthenticationTokenClaims;
import org.apache.commons.lang3.time.DateUtils;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfyn extends zzhwo implements zzhya {
    private static final zzfyn zzi;
    private static volatile zzhyh zzj;
    private int zza;
    private boolean zzc;
    private boolean zzd;
    private long zzh;
    private boolean zzb = true;
    private long zze = AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED;
    private long zzf = DateUtils.MILLIS_PER_HOUR;
    private String zzg = "https://pagead2.googlesyndication.com/mads/asp";

    static {
        zzfyn zzfynVar = new zzfyn();
        zzi = zzfynVar;
        zzhwo.zzbu(zzfyn.class, zzfynVar);
    }

    private zzfyn() {
    }

    public static zzfym zze() {
        return (zzfym) zzi.zzbn();
    }

    public static zzfyn zzg() {
        return zzi;
    }

    public final boolean zza() {
        return this.zzd;
    }

    public final long zzb() {
        return this.zzf;
    }

    public final String zzc() {
        return this.zzg;
    }

    public final long zzd() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzi, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဈ\u0005\u0007ဂ\u0006", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (ordinal == 3) {
            return new zzfyn();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfym(bArr);
        }
        if (ordinal == 5) {
            return zzi;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzj;
        if (zzhyhVar == null) {
            synchronized (zzfyn.class) {
                zzhyhVar = zzj;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzi);
                    zzj = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzh(boolean z) {
        this.zza |= 4;
        this.zzd = z;
    }

    final /* synthetic */ void zzi(long j) {
        this.zza |= 64;
        this.zzh = j;
    }
}
