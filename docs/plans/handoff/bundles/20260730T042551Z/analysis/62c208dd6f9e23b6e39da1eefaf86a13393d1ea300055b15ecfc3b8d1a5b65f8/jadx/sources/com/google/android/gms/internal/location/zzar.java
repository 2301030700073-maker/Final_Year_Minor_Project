package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import defpackage.AbstractC0241Gq;
import defpackage.RP;

/* loaded from: classes.dex */
final class zzar extends RP {
    private final ListenerHolder<AbstractC0241Gq> zza;

    public zzar(ListenerHolder<AbstractC0241Gq> listenerHolder) {
        this.zza = listenerHolder;
    }

    public final synchronized void zzc() {
        this.zza.clear();
    }

    @Override // defpackage.InterfaceC2692eQ
    public final void zzd(LocationResult locationResult) {
        this.zza.notifyListener(new zzap(this, locationResult));
    }

    @Override // defpackage.InterfaceC2692eQ
    public final void zze(LocationAvailability locationAvailability) {
        this.zza.notifyListener(new zzaq(this, locationAvailability));
    }
}
