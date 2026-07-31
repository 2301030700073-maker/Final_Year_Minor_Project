package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.LinkedHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzifc {
    final LinkedHashMap zza;

    zzifc(int i) {
        this.zza = zzife.zzc(i);
    }

    final zzifc zza(Object obj, zzifq zzifqVar) {
        zzifp.zza(obj, SDKConstants.PARAM_KEY);
        zzifp.zza(zzifqVar, "provider");
        this.zza.put(obj, zzifqVar);
        return this;
    }
}
