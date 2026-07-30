package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
final class zzbrx implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbrz zza;

    public zzbrx(zzbrz zzbrzVar) {
        this.zza = zzbrzVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        zzbrz zzbrzVar = this.zza;
        Intent zzb = zzbrzVar.zzb();
        com.google.android.gms.ads.internal.zzv.zzq();
        context = zzbrzVar.zzb;
        com.google.android.gms.ads.internal.util.zzs.zzT(context, zzb);
    }
}
