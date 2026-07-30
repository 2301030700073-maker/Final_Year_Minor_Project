package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class zzayi extends BroadcastReceiver {
    final /* synthetic */ zzayl zza;

    public zzayi(zzayl zzaylVar) {
        this.zza = zzaylVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzj(3);
    }
}
