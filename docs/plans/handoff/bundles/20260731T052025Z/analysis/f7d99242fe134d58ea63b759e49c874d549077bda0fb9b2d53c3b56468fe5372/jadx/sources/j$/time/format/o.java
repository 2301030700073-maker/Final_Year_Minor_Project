package j$.time.format;

import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalField;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class o implements e {
    public final TemporalField a;
    public final w b;
    public final a c;
    public volatile h d;

    public o(TemporalField temporalField, w wVar, a aVar) {
        this.a = temporalField;
        this.b = wVar;
        this.c = aVar;
    }

    @Override // j$.time.format.e
    public final boolean k(r rVar, StringBuilder sb) {
        String g;
        Long a = rVar.a(this.a);
        DateTimeFormatter dateTimeFormatter = rVar.b;
        if (a == null) {
            return false;
        }
        j$.time.chrono.j jVar = (j$.time.chrono.j) rVar.a.L(j$.time.temporal.n.b);
        if (jVar == null || jVar == j$.time.chrono.q.c) {
            a aVar = this.c;
            long longValue = a.longValue();
            w wVar = this.b;
            Locale locale = dateTimeFormatter.b;
            g = aVar.a.g(longValue, wVar);
        } else {
            a aVar2 = this.c;
            long longValue2 = a.longValue();
            w wVar2 = this.b;
            Locale locale2 = dateTimeFormatter.b;
            g = aVar2.a.g(longValue2, wVar2);
        }
        if (g != null) {
            sb.append(g);
            return true;
        }
        if (this.d == null) {
            this.d = new h(this.a, 1, 19, SignStyle.NORMAL);
        }
        return this.d.k(rVar, sb);
    }

    @Override // j$.time.format.e
    public final int m(p pVar, CharSequence charSequence, int i) {
        a aVar = this.c;
        TemporalField temporalField = this.a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = pVar.c;
        DateTimeFormatter dateTimeFormatter = pVar.a;
        Iterator it = null;
        w wVar = z ? this.b : null;
        j$.time.chrono.j jVar = pVar.c().c;
        if (jVar == null && (jVar = pVar.a.e) == null) {
            jVar = j$.time.chrono.q.c;
        }
        if (jVar == null || jVar == j$.time.chrono.q.c) {
            Locale locale = dateTimeFormatter.b;
            List list = (List) ((HashMap) ((Map) aVar.a.c)).get(wVar);
            if (list != null) {
                it = list.iterator();
            }
        } else {
            Locale locale2 = dateTimeFormatter.b;
            List list2 = (List) ((HashMap) ((Map) aVar.a.c)).get(wVar);
            if (list2 != null) {
                it = list2.iterator();
            }
        }
        Iterator it2 = it;
        if (it2 != null) {
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str = (String) entry.getKey();
                if (pVar.g(str, 0, charSequence, i, str.length())) {
                    return pVar.f(this.a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (temporalField == ChronoField.ERA && !pVar.c) {
                Iterator it3 = jVar.z().iterator();
                while (it3.hasNext()) {
                    String obj = ((j$.time.chrono.k) it3.next()).toString();
                    if (pVar.g(obj, 0, charSequence, i, obj.length())) {
                        return pVar.f(this.a, r8.getValue(), i, obj.length() + i);
                    }
                }
            }
            if (pVar.c) {
                return ~i;
            }
        }
        if (this.d == null) {
            this.d = new h(this.a, 1, 19, SignStyle.NORMAL);
        }
        return this.d.m(pVar, charSequence, i);
    }

    public final String toString() {
        w wVar = w.FULL;
        w wVar2 = this.b;
        TemporalField temporalField = this.a;
        if (wVar2 == wVar) {
            return "Text(" + temporalField + ")";
        }
        return "Text(" + temporalField + "," + wVar2 + ")";
    }
}
