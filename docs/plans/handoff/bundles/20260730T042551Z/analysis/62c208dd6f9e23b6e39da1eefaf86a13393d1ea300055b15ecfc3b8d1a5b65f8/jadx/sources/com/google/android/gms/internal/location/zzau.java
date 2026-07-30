package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import defpackage.AbstractBinderC3272lQ;
import defpackage.InterfaceC0263Hq;

/* loaded from: classes.dex */
final class zzau extends AbstractBinderC3272lQ {
    private final ListenerHolder<InterfaceC0263Hq> zza;

    public zzau(ListenerHolder<InterfaceC0263Hq> listenerHolder) {
        this.zza = listenerHolder;
    }

    public final synchronized void zzc() {
        this.zza.clear();
    }

    @Override // defpackage.InterfaceC3390nQ
    public final synchronized void zzd(Location location) {
        this.zza.notifyListener(new zzat(this, location));
    }
}
