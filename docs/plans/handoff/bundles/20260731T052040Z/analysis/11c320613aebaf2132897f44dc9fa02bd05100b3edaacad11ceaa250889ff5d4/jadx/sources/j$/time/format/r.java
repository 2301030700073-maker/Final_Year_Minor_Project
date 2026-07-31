package j$.time.format;

import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class r implements e {
    public final j$.time.temporal.p a;
    public final g0 b;
    public final b0 c;
    public volatile j d;

    public r(j$.time.temporal.p pVar, g0 g0Var, b0 b0Var) {
        this.a = pVar;
        this.b = g0Var;
        this.c = b0Var;
    }

    @Override // j$.time.format.e
    public final boolean k(y yVar, StringBuilder sb) {
        Long a = yVar.a(this.a);
        DateTimeFormatter dateTimeFormatter = yVar.b;
        if (a == null) {
            return false;
        }
        j$.time.chrono.l lVar = (j$.time.chrono.l) yVar.a.F(j$.time.temporal.q.b);
        String c = (lVar == null || lVar == j$.time.chrono.s.c) ? this.c.c(this.a, a.longValue(), this.b, dateTimeFormatter.b) : this.c.b(lVar, this.a, a.longValue(), this.b, dateTimeFormatter.b);
        if (c != null) {
            sb.append(c);
            return true;
        }
        if (this.d == null) {
            this.d = new j(this.a, 1, 19, f0.NORMAL);
        }
        return this.d.k(yVar, sb);
    }

    @Override // j$.time.format.e
    public final int n(w wVar, CharSequence charSequence, int i) {
        b0 b0Var = this.c;
        j$.time.temporal.p pVar = this.a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = wVar.c;
        DateTimeFormatter dateTimeFormatter = wVar.a;
        g0 g0Var = z ? this.b : null;
        j$.time.chrono.l d = wVar.d();
        Iterator e = (d == null || d == j$.time.chrono.s.c) ? b0Var.e(pVar, g0Var, dateTimeFormatter.b) : b0Var.d(d, pVar, g0Var, dateTimeFormatter.b);
        if (e != null) {
            while (e.hasNext()) {
                Map.Entry entry = (Map.Entry) e.next();
                String str = (String) entry.getKey();
                if (wVar.h(str, 0, charSequence, i, str.length())) {
                    return wVar.g(this.a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (pVar == j$.time.temporal.a.ERA && !wVar.c) {
                Iterator it = d.A().iterator();
                while (it.hasNext()) {
                    String obj = ((j$.time.chrono.m) it.next()).toString();
                    if (wVar.h(obj, 0, charSequence, i, obj.length())) {
                        return wVar.g(this.a, r8.getValue(), i, obj.length() + i);
                    }
                }
            }
            if (wVar.c) {
                return ~i;
            }
        }
        if (this.d == null) {
            this.d = new j(this.a, 1, 19, f0.NORMAL);
        }
        return this.d.n(wVar, charSequence, i);
    }

    public final String toString() {
        g0 g0Var = g0.FULL;
        g0 g0Var2 = this.b;
        j$.time.temporal.p pVar = this.a;
        if (g0Var2 == g0Var) {
            return "Text(" + pVar + ")";
        }
        return "Text(" + pVar + "," + g0Var2 + ")";
    }
}
