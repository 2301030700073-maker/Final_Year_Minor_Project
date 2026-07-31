package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhvy {
    static final zzhvy zza = new zzhvy(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private static volatile zzhvy zzd;
    private final Map zze;

    zzhvy() {
        this.zze = new HashMap();
    }

    public static zzhvy zza() {
        int i = zzhuv.zza;
        return zza;
    }

    public static zzhvy zzb() {
        zzhvy zzhvyVar = zzd;
        if (zzhvyVar != null) {
            return zzhvyVar;
        }
        synchronized (zzhvy.class) {
            zzhvy zzhvyVar2 = zzd;
            if (zzhvyVar2 != null) {
                return zzhvyVar2;
            }
            int i = zzhuv.zza;
            zzhvy zzb2 = zzhwg.zzb(zzhvy.class);
            zzd = zzb2;
            return zzb2;
        }
    }

    public final zzhwm zzc(zzhxz zzhxzVar, int i) {
        return (zzhwm) this.zze.get(new zzhvx(zzhxzVar, i));
    }

    zzhvy(boolean z) {
        this.zze = Collections.emptyMap();
    }
}
