package defpackage;

import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzoe;
import defpackage.AbstractC3884vr;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class UV {

    /* renamed from: do, reason: not valid java name */
    public final F2 f3924do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ NV f3925do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfy.zzm f3926do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3927do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BitSet f3928do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Integer, Long> f3929do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3930do;

    /* renamed from: if, reason: not valid java name */
    public final BitSet f3931if;

    public UV() {
        throw null;
    }

    public UV(NV nv, String str) {
        this.f3925do = nv;
        this.f3927do = str;
        this.f3930do = true;
        this.f3928do = new BitSet();
        this.f3931if = new BitSet();
        this.f3929do = new F2();
        this.f3924do = new F2();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2423do(NO no) {
        int mo1527do = no.mo1527do();
        Boolean bool = no.f2368do;
        if (bool != null) {
            this.f3931if.set(mo1527do, bool.booleanValue());
        }
        Boolean bool2 = no.f2370if;
        if (bool2 != null) {
            this.f3928do.set(mo1527do, bool2.booleanValue());
        }
        if (no.f2369do != null) {
            Integer valueOf = Integer.valueOf(mo1527do);
            Map<Integer, Long> map = this.f3929do;
            Long l = map.get(valueOf);
            long longValue = no.f2369do.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                map.put(Integer.valueOf(mo1527do), Long.valueOf(longValue));
            }
        }
        if (no.f2371if != null) {
            Integer valueOf2 = Integer.valueOf(mo1527do);
            F2 f2 = this.f3924do;
            List list = (List) f2.getOrDefault(valueOf2, null);
            if (list == null) {
                list = new ArrayList();
                f2.put(Integer.valueOf(mo1527do), list);
            }
            if (no.mo1526case()) {
                list.clear();
            }
            boolean zza = zzoe.zza();
            String str = this.f3927do;
            NV nv = this.f3925do;
            if (zza && nv.m7572else().m3012throws(str, C3684sQ.B) && no.mo1528try()) {
                list.clear();
            }
            if (!zzoe.zza() || !nv.m7572else().m3012throws(str, C3684sQ.B)) {
                list.add(Long.valueOf(no.f2371if.longValue() / 1000));
                return;
            }
            long longValue2 = no.f2371if.longValue() / 1000;
            if (list.contains(Long.valueOf(longValue2))) {
                return;
            }
            list.add(Long.valueOf(longValue2));
        }
    }

    public UV(NV nv, String str, zzfy.zzm zzmVar, BitSet bitSet, BitSet bitSet2, F2 f2, F2 f22) {
        this.f3925do = nv;
        this.f3927do = str;
        this.f3928do = bitSet;
        this.f3931if = bitSet2;
        this.f3929do = f2;
        this.f3924do = new F2();
        Iterator it = ((AbstractC3884vr.Cfor) f22.keySet()).iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) f22.getOrDefault(num, null));
            this.f3924do.put(num, arrayList);
        }
        this.f3930do = false;
        this.f3926do = zzmVar;
    }
}
