package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbms implements zzblx {
    private final zzdyo zza;

    public zzbms(zzdyo zzdyoVar) {
        Preconditions.checkNotNull(zzdyoVar, "The Inspector Manager must not be null");
        this.zza = zzdyoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final void zza(Object obj, Map map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        long j = Long.MAX_VALUE;
        if (map.containsKey(PermissionsResponse.EXPIRES_KEY)) {
            try {
                j = Long.parseLong((String) map.get(PermissionsResponse.EXPIRES_KEY));
            } catch (NumberFormatException unused) {
            }
        }
        this.zza.zzi((String) map.get("extras"), j);
    }
}
