package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzht extends zzhn {
    private final zzca zza;

    public zzht(BaseImplementation.ResultHolder resultHolder, zzca zzcaVar) {
        super(resultHolder);
        this.zza = (zzca) Preconditions.checkNotNull(zzcaVar);
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzl(zzdr zzdrVar) {
        zzbt zzbtVar;
        if (zzdrVar.zzb != null) {
            zzbtVar = new zzbt(new ParcelFileDescriptor.AutoCloseInputStream(zzdrVar.zzb));
            this.zza.zzc(new zzbs(zzbtVar));
        } else {
            zzbtVar = null;
        }
        zzI(new zzbo(new Status(zzdrVar.zza), zzbtVar));
    }
}
