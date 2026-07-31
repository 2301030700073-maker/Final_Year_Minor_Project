package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhyu extends zzhyy {
    zzhyu() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzhyy
    public final void zza() {
        if (!zzb()) {
            for (int i = 0; i < zzc(); i++) {
                Map.Entry zzd = zzd(i);
                if (((zzhwc) ((zzhyv) zzd).zza()).zzd()) {
                    zzd.setValue(Collections.unmodifiableList((List) zzd.getValue()));
                }
            }
            for (Map.Entry entry : zze()) {
                if (((zzhwc) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
