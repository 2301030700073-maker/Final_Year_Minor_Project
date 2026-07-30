package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbjv implements zzbjp {
    private final Context zza;
    private final Map zzb;

    public zzbjv(Context context, Map map) {
        this.zza = context;
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        char c;
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(this.zza)) {
            String str = (String) map.get("eventName");
            String str2 = (String) map.get("eventId");
            int hashCode = str.hashCode();
            if (hashCode == 94399) {
                if (str.equals("_aa")) {
                    c = 2;
                }
                c = 65535;
            } else if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("_ac")) {
                    c = 0;
                }
                c = 65535;
            }
            if (c == 0) {
                com.google.android.gms.ads.internal.zzv.zzo().zzj(this.zza, str2, (Map) this.zzb.get("_ac"));
            } else if (c == 1) {
                com.google.android.gms.ads.internal.zzv.zzo().zzk(this.zza, str2, (Map) this.zzb.get("_ai"));
            } else if (c != 2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("logScionEvent gmsg contained unsupported eventName");
            } else {
                com.google.android.gms.ads.internal.zzv.zzo().zzh(this.zza, str2);
            }
        }
    }
}
