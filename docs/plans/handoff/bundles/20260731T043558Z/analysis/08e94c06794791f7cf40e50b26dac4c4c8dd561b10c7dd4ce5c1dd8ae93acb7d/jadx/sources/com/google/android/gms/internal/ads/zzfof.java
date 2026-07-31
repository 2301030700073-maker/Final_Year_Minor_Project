package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfof implements Comparator {
    final /* synthetic */ zzfom zza;

    zzfof(zzfom zzfomVar) {
        Objects.requireNonNull(zzfomVar);
        this.zza = zzfomVar;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        zzfod zzfodVar = (zzfod) obj;
        zzfod zzfodVar2 = (zzfod) obj2;
        Object zza = zzfodVar2.zza();
        zzfom zzfomVar = this.zza;
        int compare = Double.compare(zzfom.zzD(zzfomVar.zzb(zza)), zzfom.zzD(zzfomVar.zzb(zzfodVar.zza())));
        return compare == 0 ? Long.compare(zzfodVar.zzd(), zzfodVar2.zzd()) : compare;
    }
}
