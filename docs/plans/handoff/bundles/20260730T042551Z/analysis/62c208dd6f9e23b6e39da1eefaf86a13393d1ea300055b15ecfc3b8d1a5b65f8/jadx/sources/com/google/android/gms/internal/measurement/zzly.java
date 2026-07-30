package com.google.android.gms.internal.measurement;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class zzly extends zzlv {
    public zzly() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final void zzd() {
        if (!zze()) {
            for (int i = 0; i < zza(); i++) {
                Map.Entry zza = zza(i);
                if (((zzjo) zza.getKey()).zze()) {
                    zza.setValue(DesugarCollections.unmodifiableList((List) zza.getValue()));
                }
            }
            for (Map.Entry entry : zzb()) {
                if (((zzjo) entry.getKey()).zze()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzd();
    }
}
