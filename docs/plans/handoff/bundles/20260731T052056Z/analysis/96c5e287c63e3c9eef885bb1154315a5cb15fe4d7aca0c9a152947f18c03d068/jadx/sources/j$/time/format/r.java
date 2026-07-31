package j$.time.format;

import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class r implements e {
    public final j$.time.temporal.n a;
    public final TextStyle b;
    public final b0 c;
    public volatile j d;

    public r(j$.time.temporal.n nVar, TextStyle textStyle, b0 b0Var) {
        this.a = nVar;
        this.b = textStyle;
        this.c = b0Var;
    }

    @Override // j$.time.format.e
    public final boolean f(y yVar, StringBuilder sb) {
        Long a = yVar.a(this.a);
        DateTimeFormatter dateTimeFormatter = yVar.b;
        if (a == null) {
            return false;
        }
        j$.time.chrono.a aVar = (j$.time.chrono.a) yVar.a.i(j$.time.temporal.o.b);
        String c = (aVar == null || aVar == j$.time.chrono.p.c) ? this.c.c(this.a, a.longValue(), this.b, dateTimeFormatter.b) : this.c.b(aVar, this.a, a.longValue(), this.b, dateTimeFormatter.b);
        if (c != null) {
            sb.append(c);
            return true;
        }
        if (this.d == null) {
            this.d = new j(this.a, 1, 19, f0.NORMAL);
        }
        return this.d.f(yVar, sb);
    }

    @Override // j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        b0 b0Var = this.c;
        j$.time.temporal.n nVar = this.a;
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException();
        }
        boolean z = wVar.c;
        DateTimeFormatter dateTimeFormatter = wVar.a;
        TextStyle textStyle = z ? this.b : null;
        j$.time.chrono.a d = wVar.d();
        Iterator e = (d == null || d == j$.time.chrono.p.c) ? b0Var.e(nVar, textStyle, dateTimeFormatter.b) : b0Var.d(d, nVar, textStyle, dateTimeFormatter.b);
        if (e != null) {
            while (e.hasNext()) {
                Map.Entry entry = (Map.Entry) e.next();
                String str = (String) entry.getKey();
                if (wVar.h(str, 0, charSequence, i, str.length())) {
                    return wVar.g(this.a, ((Long) entry.getValue()).longValue(), i, str.length() + i);
                }
            }
            if (nVar == j$.time.temporal.a.ERA && !wVar.c) {
                Iterator it = d.eras().iterator();
                while (it.hasNext()) {
                    String obj = ((j$.time.chrono.j) it.next()).toString();
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
        return this.d.g(wVar, charSequence, i);
    }

    public final String toString() {
        TextStyle textStyle = TextStyle.FULL;
        TextStyle textStyle2 = this.b;
        j$.time.temporal.n nVar = this.a;
        if (textStyle2 == textStyle) {
            return "Text(" + nVar + ")";
        }
        return "Text(" + nVar + "," + textStyle2 + ")";
    }
}
