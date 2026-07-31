package com.google.android.gms.internal.ads;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgga {
    private final zzarn zza;
    private final long zzb;
    private final long zzc;
    private final String zzd;

    private zzgga(zzarn zzarnVar, long j, long j2, String str) {
        this.zza = zzarnVar;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = str;
    }

    static /* synthetic */ zzgga zza(zzarn zzarnVar, byte[] bArr) {
        zzarnVar.zza();
        zzarnVar.zzb(bArr);
        List list = (List) zzarnVar.zzc(Optional.empty());
        long longValue = ((Long) list.get(0)).longValue();
        long longValue2 = ((Long) list.get(1)).longValue();
        long longValue3 = ((Long) list.get(2)).longValue();
        zzarnVar.zzd(longValue, Optional.empty());
        return new zzgga(zzarnVar, longValue2, longValue3, "3.".concat(new String(zzarq.zza(), StandardCharsets.UTF_8)));
    }

    final /* synthetic */ String zzb(Map map) {
        return zzfyo.zza((byte[]) this.zza.zzd(this.zzb, Optional.of(map)), true);
    }

    final /* synthetic */ void zzc(Map map) {
        this.zza.zzd(this.zzc, Optional.of(map));
    }

    final /* synthetic */ String zzd() {
        return this.zzd;
    }
}
