package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeqt implements zzexy {
    private final Bundle zza;

    zzeqt(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = this.zza;
        zzcxq zzcxqVar = (zzcxq) obj;
        if (bundle.isEmpty()) {
            return;
        }
        zzcxqVar.zza.putBundle("installed_adapter_data", bundle);
    }
}
