package com.google.android.gms.internal.location;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationRequest;
import defpackage.AbstractC0241Gq;

/* loaded from: classes.dex */
final class zzt extends zzx {
    final /* synthetic */ LocationRequest zza;
    final /* synthetic */ AbstractC0241Gq zzb;
    final /* synthetic */ Looper zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzz zzzVar, GoogleApiClient googleApiClient, LocationRequest locationRequest, AbstractC0241Gq abstractC0241Gq, Looper looper) {
        super(googleApiClient);
        this.zza = locationRequest;
        this.zzb = abstractC0241Gq;
        this.zzc = looper;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) {
        zzazVar.zzB(zzba.zza(null, this.zza), ListenerHolders.createListenerHolder(this.zzb, zzbj.zza(this.zzc), AbstractC0241Gq.class.getSimpleName()), new zzy(this));
    }
}
