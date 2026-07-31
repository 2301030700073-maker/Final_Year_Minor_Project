package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgpp extends zzgpk {
    public final zzgpp zzb(Object obj, Object... objArr) {
        List asList = Arrays.asList(objArr);
        if (obj == null) {
            Iterator it = asList.iterator();
            StringBuilder sb = new StringBuilder("[");
            boolean z = true;
            while (it.hasNext()) {
                if (!z) {
                    sb.append(", ");
                }
                sb.append(it.next());
                z = false;
            }
            sb.append(AbstractJsonLexerKt.END_LIST);
            throw new NullPointerException("null key in entry: null=".concat(sb.toString()));
        }
        Iterator it2 = asList.iterator();
        if (it2.hasNext()) {
            zzgoz zzgozVar = (zzgoz) zza().get(obj);
            if (zzgozVar == null) {
                zzgozVar = zzgpo.zzs(asList instanceof Set ? Math.max(4, ((Set) asList).size()) : 4);
                zza().put(obj, zzgozVar);
            }
            while (it2.hasNext()) {
                Object next = it2.next();
                zzgoc.zza(obj, next);
                zzgozVar.zzd(next);
            }
        }
        return this;
    }

    public final zzgpr zzc() {
        Map map = this.zza;
        if (map == null) {
            return zzgou.zza;
        }
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return zzgou.zza;
        }
        zzgpg zzgpgVar = new zzgpg(entrySet.size());
        int i = 0;
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            zzgpo zzo = zzgpo.zzo(((zzgpn) entry.getValue()).zzi());
            if (!zzo.isEmpty()) {
                zzgpgVar.zza(key, zzo);
                i += zzo.size();
            }
        }
        return new zzgpr(zzgpgVar.zzc(), i, null);
    }
}
