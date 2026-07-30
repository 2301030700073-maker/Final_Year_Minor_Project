package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import defpackage.InterfaceC0263Hq;

/* loaded from: classes.dex */
final class zzat implements ListenerHolder.Notifier<InterfaceC0263Hq> {
    final /* synthetic */ Location zza;

    public zzat(zzau zzauVar, Location location) {
        this.zza = location;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(InterfaceC0263Hq interfaceC0263Hq) {
        interfaceC0263Hq.m888do();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
