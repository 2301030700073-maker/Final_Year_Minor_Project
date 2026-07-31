package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfvk extends zzhwo implements zzhya {
    private static final zzfvk zzb;
    private static volatile zzhyh zzc;
    private zzhxt zza = zzhxt.zza();

    static {
        zzfvk zzfvkVar = new zzfvk();
        zzb = zzfvkVar;
        zzhwo.zzbu(zzfvk.class, zzfvkVar);
    }

    private zzfvk() {
    }

    public static zzfvk zzc(InputStream inputStream) throws IOException {
        return (zzfvk) zzhwo.zzbW(zzb, inputStream);
    }

    public static zzfvk zzd() {
        return zzb;
    }

    public final int zza() {
        return this.zza.size();
    }

    public final Map zzb() {
        return Collections.unmodifiableMap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zza", zzfvj.zza});
        }
        if (ordinal == 3) {
            return new zzfvk();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfvi(bArr);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzc;
        if (zzhyhVar == null) {
            synchronized (zzfvk.class) {
                zzhyhVar = zzc;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzb);
                    zzc = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ Map zze() {
        if (!this.zza.zze()) {
            this.zza = this.zza.zzc();
        }
        return this.zza;
    }
}
