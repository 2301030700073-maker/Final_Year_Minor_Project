package com.google.android.gms.internal.ads;

import androidx.media3.common.PlaybackException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzrw implements zzrz {
    zzrw() {
    }

    @Override // com.google.android.gms.internal.ads.zzrz
    public final zzrs zza(zzru zzruVar, zzv zzvVar) {
        if (zzvVar.zzs == null) {
            return null;
        }
        return new zzsa(new zzrr(new zzsc(1), PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED));
    }

    @Override // com.google.android.gms.internal.ads.zzrz
    public final int zzb(zzv zzvVar) {
        return zzvVar.zzs != null ? 1 : 0;
    }
}
