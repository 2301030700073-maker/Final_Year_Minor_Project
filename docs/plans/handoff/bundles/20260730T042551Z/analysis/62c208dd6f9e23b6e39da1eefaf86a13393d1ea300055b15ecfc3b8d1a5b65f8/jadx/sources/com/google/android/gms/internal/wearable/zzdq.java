package com.google.android.gms.internal.wearable;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzdq extends zzea {
    public zzdq(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.wearable.zzea
    public final void zza() {
        if (!zzj()) {
            for (int i = 0; i < zzb(); i++) {
                Map.Entry zzg = zzg(i);
                if (((zzbn) zzg.getKey()).zzc()) {
                    zzg.setValue(DesugarCollections.unmodifiableList((List) zzg.getValue()));
                }
            }
            for (Map.Entry entry : zzc()) {
                if (((zzbn) entry.getKey()).zzc()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
