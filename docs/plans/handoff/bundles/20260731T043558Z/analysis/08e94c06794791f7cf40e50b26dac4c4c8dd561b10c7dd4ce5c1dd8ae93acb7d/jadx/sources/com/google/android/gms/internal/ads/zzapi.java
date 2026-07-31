package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.DefaultLoadControl;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzapi {
    private int zza = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
    private int zzb;

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final void zzc(zzaqd zzaqdVar) throws zzaqd {
        int i = this.zzb + 1;
        this.zzb = i;
        int i2 = this.zza;
        this.zza = i2 + i2;
        if (i > 1) {
            throw zzaqdVar;
        }
    }
}
