package defpackage;

import com.google.android.gms.internal.measurement.zzo;
import java.util.Map;

/* loaded from: classes3.dex */
public final class NS implements zzo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IS f2380do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f2381do;

    public NS(IS is, String str) {
        this.f2381do = str;
        this.f2380do = is;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String zza(String str) {
        Map map = (Map) this.f2380do.f1515do.getOrDefault(this.f2381do, null);
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (String) map.get(str);
    }
}
