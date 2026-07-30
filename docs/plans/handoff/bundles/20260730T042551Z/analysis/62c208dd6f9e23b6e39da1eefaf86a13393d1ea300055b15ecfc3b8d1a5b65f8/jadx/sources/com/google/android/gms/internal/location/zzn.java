package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import defpackage.AbstractC0241Gq;

/* loaded from: classes.dex */
final class zzn extends zzx {
    final /* synthetic */ AbstractC0241Gq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzn(zzz zzzVar, GoogleApiClient googleApiClient, AbstractC0241Gq abstractC0241Gq) {
        super(googleApiClient);
        this.zza = abstractC0241Gq;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) {
        zzazVar.zzH(ListenerHolders.createListenerKey(this.zza, AbstractC0241Gq.class.getSimpleName()), new zzy(this));
    }
}
