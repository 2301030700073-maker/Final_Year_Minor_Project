package com.google.android.gms.internal.play_billing;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzja extends zzjf {
    public zzja() {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzjf
    public final void zza() {
        if (!zzj()) {
            for (int i = 0; i < zzc(); i++) {
                Map.Entry zzg = zzg(i);
                if (((zzha) ((zzjb) zzg).zza()).zze()) {
                    zzg.setValue(DesugarCollections.unmodifiableList((List) zzg.getValue()));
                }
            }
            for (Map.Entry entry : zzd()) {
                if (((zzha) entry.getKey()).zze()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
