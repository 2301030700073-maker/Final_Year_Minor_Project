package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.ExoPlayer;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbhj {
    public static final zzbge zza = zzbge.zza("gads:trustless_token_for_decagon:enabled", true);
    public static final zzbge zzb;

    static {
        zzbge.zza("gads:invalidate_token_at_refresh_start", true);
        zzbge.zza("gms:expose_token_for_gma:enabled", true);
        zzbge.zza("gads:referesh_rate_limit", false);
        zzb = zzbge.zzb("gads:timeout_for_trustless_token:millis", ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        zzbge.zza("gads:token_anonymization:enabled", true);
        zzbge.zzb("gads:cached_token:ttl_millis", 10800000L);
    }
}
