package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
final class zzid extends zzhn {
    private final List zza;

    public zzid(BaseImplementation.ResultHolder resultHolder, List list) {
        super(resultHolder);
        this.zza = list;
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzC(zzgu zzguVar) {
        zzI(new zzcq(zzhf.zza(zzguVar.zza), zzguVar.zzb));
        if (zzguVar.zza != 0) {
            Iterator it = this.zza.iterator();
            while (it.hasNext()) {
                ((FutureTask) it.next()).cancel(true);
            }
        }
    }
}
