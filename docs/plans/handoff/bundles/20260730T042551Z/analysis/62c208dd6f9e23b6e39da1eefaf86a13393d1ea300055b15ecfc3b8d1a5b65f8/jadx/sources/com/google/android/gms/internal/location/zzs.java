package com.google.android.gms.internal.location;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationRequest;
import defpackage.InterfaceC0263Hq;

/* loaded from: classes.dex */
final class zzs extends zzx {
    final /* synthetic */ LocationRequest zza;
    final /* synthetic */ InterfaceC0263Hq zzb;
    final /* synthetic */ Looper zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzz zzzVar, GoogleApiClient googleApiClient, LocationRequest locationRequest, InterfaceC0263Hq interfaceC0263Hq, Looper looper) {
        super(googleApiClient);
        this.zza = locationRequest;
        this.zzb = interfaceC0263Hq;
        this.zzc = looper;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) {
        zzazVar.zzC(this.zza, ListenerHolders.createListenerHolder(this.zzb, zzbj.zza(this.zzc), InterfaceC0263Hq.class.getSimpleName()), new zzy(this));
    }
}
