package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import defpackage.InterfaceC0263Hq;

/* loaded from: classes.dex */
final class zzv extends zzx {
    final /* synthetic */ InterfaceC0263Hq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzv(zzz zzzVar, GoogleApiClient googleApiClient, InterfaceC0263Hq interfaceC0263Hq) {
        super(googleApiClient);
        this.zza = interfaceC0263Hq;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) {
        zzazVar.zzF(ListenerHolders.createListenerKey(this.zza, InterfaceC0263Hq.class.getSimpleName()), new zzy(this));
    }
}
