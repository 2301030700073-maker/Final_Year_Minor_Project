package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzapy;
import com.google.android.gms.internal.ads.zzaqd;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbg implements zzapy {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbi zzb;

    zzbg(zzbl zzblVar, String str, zzbi zzbiVar) {
        this.zza = str;
        this.zzb = zzbiVar;
        Objects.requireNonNull(zzblVar);
    }

    @Override // com.google.android.gms.internal.ads.zzapy
    public final void zza(zzaqd zzaqdVar) {
        String str = this.zza;
        String zzaqdVar2 = zzaqdVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(zzaqdVar2).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(zzaqdVar2);
        String sb2 = sb.toString();
        int i = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
        this.zzb.zza((Object) null);
    }
}
