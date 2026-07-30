package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzhu extends zzhn {
    private final zzca zza;

    public zzhu(BaseImplementation.ResultHolder resultHolder, zzca zzcaVar) {
        super(resultHolder);
        this.zza = (zzca) Preconditions.checkNotNull(zzcaVar);
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzm(zzdt zzdtVar) {
        zzbv zzbvVar;
        if (zzdtVar.zzb != null) {
            zzbvVar = new zzbv(new ParcelFileDescriptor.AutoCloseOutputStream(zzdtVar.zzb));
            this.zza.zzc(new zzbu(zzbvVar));
        } else {
            zzbvVar = null;
        }
        zzI(new zzbp(new Status(zzdtVar.zza), zzbvVar));
    }
}
