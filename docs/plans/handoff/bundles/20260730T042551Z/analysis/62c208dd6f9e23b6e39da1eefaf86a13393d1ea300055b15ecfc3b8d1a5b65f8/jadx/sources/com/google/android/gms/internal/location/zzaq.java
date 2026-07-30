package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import defpackage.AbstractC0241Gq;

/* loaded from: classes.dex */
final class zzaq implements ListenerHolder.Notifier<AbstractC0241Gq> {
    final /* synthetic */ LocationAvailability zza;

    public zzaq(zzar zzarVar, LocationAvailability locationAvailability) {
        this.zza = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(AbstractC0241Gq abstractC0241Gq) {
        abstractC0241Gq.getClass();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
