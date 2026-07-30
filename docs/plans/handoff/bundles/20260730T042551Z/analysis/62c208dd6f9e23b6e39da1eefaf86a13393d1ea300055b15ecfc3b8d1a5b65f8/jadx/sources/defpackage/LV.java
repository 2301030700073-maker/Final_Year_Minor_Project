package defpackage;

import android.util.Pair;
import com.google.android.gms.ads.nonagon.signalgeneration.zzu;
import com.google.android.gms.ads.nonagon.signalgeneration.zzv;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class LV extends LinkedHashMap {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzv f1960do;

    public LV(zzv zzvVar) {
        this.f1960do = zzvVar;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        synchronized (this.f1960do) {
            int size = size();
            zzv zzvVar = this.f1960do;
            if (size <= zzvVar.f10093do) {
                return false;
            }
            zzvVar.f10097do.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
            return size() > this.f1960do.f10093do;
        }
    }
}
