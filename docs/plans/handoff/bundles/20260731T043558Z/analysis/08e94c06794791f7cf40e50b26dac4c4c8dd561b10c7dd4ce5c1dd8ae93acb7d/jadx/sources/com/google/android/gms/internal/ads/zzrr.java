package com.google.android.gms.internal.ads;

import androidx.media3.common.PlaybackException;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzrr extends IOException {
    public final int zza;

    public zzrr(Throwable th, int i) {
        super(th);
        this.zza = PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED;
    }
}
