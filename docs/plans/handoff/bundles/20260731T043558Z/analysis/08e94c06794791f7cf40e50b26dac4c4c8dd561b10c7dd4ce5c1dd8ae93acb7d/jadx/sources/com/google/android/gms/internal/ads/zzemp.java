package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzemp extends zzcrn {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzemp(zzemt zzemtVar, View view, zzcgy zzcgyVar, zzctm zzctmVar, zzffv zzffvVar) {
        super(view, null, zzctmVar, zzffvVar);
        Objects.requireNonNull(zzemtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcrn
    public final zzdaa zze(Set set) {
        return new zzdaa(Collections.emptySet());
    }
}
