package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
final class zzhw extends zzhn {
    public zzhw(BaseImplementation.ResultHolder resultHolder) {
        super(resultHolder);
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzt(zzeh zzehVar) {
        ArrayList arrayList = new ArrayList();
        List list = zzehVar.zzb;
        if (list != null) {
            arrayList.addAll(list);
        }
        zzI(new zzgb(zzhf.zza(zzehVar.zza), arrayList));
    }
}
