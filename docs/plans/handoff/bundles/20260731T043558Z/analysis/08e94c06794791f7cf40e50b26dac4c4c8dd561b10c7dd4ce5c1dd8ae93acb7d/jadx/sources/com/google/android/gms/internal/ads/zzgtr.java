package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgtr extends zzgtt {
    zzgtr(zzgpa zzgpaVar, boolean z) {
        super(zzgpaVar, z);
        zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgtt
    public final /* bridge */ /* synthetic */ Object zzD(List list) {
        ArrayList zzb = zzgqe.zzb(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgts zzgtsVar = (zzgts) it.next();
            zzb.add(zzgtsVar != null ? zzgtsVar.zza : null);
        }
        return Collections.unmodifiableList(zzb);
    }
}
