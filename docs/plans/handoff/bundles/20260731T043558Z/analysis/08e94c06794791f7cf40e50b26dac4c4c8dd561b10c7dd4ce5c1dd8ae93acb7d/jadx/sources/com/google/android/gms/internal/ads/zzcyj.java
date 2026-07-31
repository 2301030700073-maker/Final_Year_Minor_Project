package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcyj {
    public static final zzbzt zza(Context context, VersionInfoParcel versionInfoParcel, zzffu zzffuVar, zzbzp zzbzpVar) {
        zzbzq zzbzqVar = zzffuVar.zzA;
        if (zzbzqVar == null) {
            return null;
        }
        zzffz zzffzVar = zzffuVar.zzs;
        return new zzbzo(context, versionInfoParcel, zzbzqVar, zzffzVar == null ? null : zzffzVar.zzb, zzbzpVar);
    }
}
