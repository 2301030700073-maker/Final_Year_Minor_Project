package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzayj extends BroadcastReceiver {
    final /* synthetic */ zzayk zza;

    zzayj(zzayk zzaykVar) {
        Objects.requireNonNull(zzaykVar);
        this.zza = zzaykVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzd();
    }
}
