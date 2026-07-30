package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.CapabilityClient;
import com.google.android.gms.wearable.CapabilityInfo;

/* loaded from: classes3.dex */
final class zzam implements CapabilityClient.OnCapabilityChangedListener {
    final CapabilityClient.OnCapabilityChangedListener zza;
    final String zzb;

    public zzam(CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener, String str) {
        this.zza = onCapabilityChangedListener;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzam.class != obj.getClass()) {
            return false;
        }
        zzam zzamVar = (zzam) obj;
        if (this.zza.equals(zzamVar.zza)) {
            return this.zzb.equals(zzamVar.zzb);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    @Override // com.google.android.gms.wearable.CapabilityClient.OnCapabilityChangedListener, com.google.android.gms.wearable.CapabilityApi.CapabilityListener
    public final void onCapabilityChanged(CapabilityInfo capabilityInfo) {
        this.zza.onCapabilityChanged(capabilityInfo);
    }
}
