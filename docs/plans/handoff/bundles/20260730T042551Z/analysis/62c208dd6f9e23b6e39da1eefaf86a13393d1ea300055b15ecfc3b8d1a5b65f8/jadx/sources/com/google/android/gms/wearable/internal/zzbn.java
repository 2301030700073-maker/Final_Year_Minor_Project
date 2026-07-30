package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.ChannelApi;

/* loaded from: classes3.dex */
final class zzbn implements zzb {
    final /* synthetic */ String zza;
    final /* synthetic */ IntentFilter[] zzb;

    public zzbn(String str, IntentFilter[] intentFilterArr) {
        this.zza = str;
        this.zzb = intentFilterArr;
    }

    @Override // com.google.android.gms.wearable.internal.zzb
    public final /* bridge */ /* synthetic */ void zza(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj, ListenerHolder listenerHolder) {
        zzimVar.zzq(resultHolder, (ChannelApi.ChannelListener) obj, listenerHolder, this.zza, this.zzb);
    }
}
