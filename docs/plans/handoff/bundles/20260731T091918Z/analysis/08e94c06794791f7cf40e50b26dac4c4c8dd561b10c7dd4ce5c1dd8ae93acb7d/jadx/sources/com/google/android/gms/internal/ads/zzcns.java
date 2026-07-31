package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcns {
    private final Map zza;
    private final Map zzb;

    zzcns(Map map, Map map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfgf zzfgfVar) throws Exception {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        for (zzfgd zzfgdVar : zzfgfVar.zzb.zzc) {
            Map map = this.zza;
            String str = zzfgdVar.zza;
            if (!map.containsKey(str) || (jSONObject2 = zzfgdVar.zzb) == null) {
                Map map2 = this.zzb;
                if (map2.containsKey(str) && (jSONObject = zzfgdVar.zzb) != null) {
                    zzcnu zzcnuVar = (zzcnu) map2.get(str);
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String optString = jSONObject.optString(next);
                        if (optString != null) {
                            hashMap.put(next, optString);
                        }
                    }
                    zzcnuVar.zza(hashMap);
                }
            } else {
                ((zzcnv) map.get(str)).zza(jSONObject2);
            }
        }
    }
}
