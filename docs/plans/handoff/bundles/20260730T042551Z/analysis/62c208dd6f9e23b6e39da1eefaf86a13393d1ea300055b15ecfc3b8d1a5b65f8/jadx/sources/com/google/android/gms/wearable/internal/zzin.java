package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.CapabilityApi;

/* loaded from: classes3.dex */
final class zzin implements ListenerHolder.Notifier {
    final /* synthetic */ zzao zza;

    public zzin(zzao zzaoVar) {
        this.zza = zzaoVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        ((CapabilityApi.CapabilityListener) obj).onCapabilityChanged(this.zza);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
