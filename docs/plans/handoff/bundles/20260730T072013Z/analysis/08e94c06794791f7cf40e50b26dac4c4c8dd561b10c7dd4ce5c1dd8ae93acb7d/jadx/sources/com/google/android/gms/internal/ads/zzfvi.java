package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfvi extends zzhwi implements zzhya {
    private zzfvi() {
        throw null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    /* synthetic */ zzfvi(byte[] r1) {
        /*
            r0 = this;
            com.google.android.gms.internal.ads.zzfvk r1 = com.google.android.gms.internal.ads.zzfvk.zzg()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvi.<init>(byte[]):void");
    }

    public final zzfvi zza(String str) {
        str.getClass();
        zzbg();
        ((zzfvk) this.zza).zze().remove(str);
        return this;
    }

    public final Map zzb() {
        return Collections.unmodifiableMap(((zzfvk) this.zza).zzb());
    }

    public final zzfvi zzc(String str, zzfvg zzfvgVar) {
        str.getClass();
        zzfvgVar.getClass();
        zzbg();
        ((zzfvk) this.zza).zze().put(str, zzfvgVar);
        return this;
    }
}
