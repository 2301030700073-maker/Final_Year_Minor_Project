package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.DataApi;

/* loaded from: classes3.dex */
final class zzco implements zzb {
    final /* synthetic */ IntentFilter[] zza;

    public zzco(IntentFilter[] intentFilterArr) {
        this.zza = intentFilterArr;
    }

    @Override // com.google.android.gms.wearable.internal.zzb
    public final /* synthetic */ void zza(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj, ListenerHolder listenerHolder) {
        zzimVar.zzr(resultHolder, (DataApi.DataListener) obj, listenerHolder, this.zza);
    }
}
