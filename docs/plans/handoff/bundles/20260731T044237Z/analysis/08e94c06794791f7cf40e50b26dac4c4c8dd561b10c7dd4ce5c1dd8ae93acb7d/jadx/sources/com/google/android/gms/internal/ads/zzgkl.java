package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgkl extends zzgjj {
    final /* synthetic */ zzgkn zza;
    private final zzgks zzb;

    zzgkl(zzgkn zzgknVar, zzgks zzgksVar) {
        Objects.requireNonNull(zzgknVar);
        this.zza = zzgknVar;
        this.zzb = zzgksVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgjk
    public final void zzb(Bundle bundle) {
        int i = bundle.getInt("statusCode", 8150);
        String string = bundle.getString("sessionToken");
        int i2 = bundle.getInt("uiMode", 0);
        zzgkq zzd = zzgkr.zzd();
        zzd.zza(i);
        if (string != null) {
            zzd.zzb(string);
        }
        zzd.zzc(i2);
        this.zzb.zza(zzd.zzd());
        if (i == 8157) {
            this.zza.zzd();
        }
    }
}
