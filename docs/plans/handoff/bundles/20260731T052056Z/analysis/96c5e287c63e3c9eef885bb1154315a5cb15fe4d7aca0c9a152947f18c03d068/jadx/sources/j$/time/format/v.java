package j$.time.format;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class v {
    public static final j$.time.f h = new j$.time.f(3);
    public static final Map i;
    public v a;
    public final v b;
    public final List c;
    public final boolean d;
    public int e;
    public char f;
    public int g;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put('G', j$.time.temporal.a.ERA);
        hashMap.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        hashMap.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.g gVar = j$.time.temporal.i.a;
        hashMap.put('Q', gVar);
        hashMap.put('q', gVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        hashMap.put('M', aVar);
        hashMap.put('L', aVar);
        hashMap.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        hashMap.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        hashMap.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        hashMap.put('E', aVar2);
        hashMap.put('c', aVar2);
        hashMap.put('e', aVar2);
        hashMap.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        hashMap.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        hashMap.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        hashMap.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        hashMap.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        hashMap.put('S', aVar3);
        hashMap.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        hashMap.put('n', aVar3);
        hashMap.put('N', j$.time.temporal.a.NANO_OF_DAY);
        hashMap.put('g', j$.time.temporal.k.a);
    }

    public v() {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = null;
        this.d = false;
    }

    public final void a(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        c(dateTimeFormatter.c());
    }

    public final void b(j$.time.temporal.a aVar, int i2, int i3, boolean z) {
        if (i2 != i3 || z) {
            c(new f(aVar, i2, i3, z));
        } else {
            k(new f(aVar, i2, i3, z));
        }
    }

    public final int c(e eVar) {
        Objects.requireNonNull(eVar, "pp");
        v vVar = this.a;
        int i2 = vVar.e;
        if (i2 > 0) {
            if (eVar != null) {
                eVar = new l(eVar, i2, vVar.f);
            }
            vVar.e = 0;
            vVar.f = (char) 0;
        }
        ((ArrayList) vVar.c).add(eVar);
        this.a.g = -1;
        return ((ArrayList) r4.c).size() - 1;
    }

    public final void d(char c) {
        c(new c(c));
    }

    public final void e(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        int i2 = 1;
        if (str.length() == 1) {
            c(new c(str.charAt(0)));
        } else {
            c(new h(i2, str));
        }
    }

    public final void f(TextStyle textStyle) {
        Objects.requireNonNull(textStyle, "style");
        if (textStyle == TextStyle.FULL || textStyle == TextStyle.SHORT) {
            c(new h(0, textStyle));
        } else {
            j$.time.h.c("Style must be either full or short");
        }
    }

    public final void g(String str, String str2) {
        c(new k(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x03a9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.v.h(java.lang.String):void");
    }

    public final void i(j$.time.temporal.a aVar, Map map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        c(new r(aVar, textStyle, new a(new a0(Collections.singletonMap(textStyle, linkedHashMap)))));
    }

    public final void j(j$.time.temporal.n nVar, TextStyle textStyle) {
        Objects.requireNonNull(nVar, "field");
        Objects.requireNonNull(textStyle, "textStyle");
        c(new r(nVar, textStyle, b0.c));
    }

    public final void k(j jVar) {
        j d;
        v vVar = this.a;
        int i2 = vVar.g;
        if (i2 < 0) {
            vVar.g = c(jVar);
            return;
        }
        j jVar2 = (j) ((ArrayList) vVar.c).get(i2);
        int i3 = jVar.b;
        int i4 = jVar.c;
        if (i3 == i4 && jVar.d == f0.NOT_NEGATIVE) {
            d = jVar2.e(i4);
            c(jVar.d());
            this.a.g = i2;
        } else {
            d = jVar2.d();
            this.a.g = c(jVar);
        }
        ((ArrayList) this.a.c).set(i2, d);
    }

    public final void l(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "field");
        k(new j(nVar, 1, 19, f0.NORMAL));
    }

    public final void m(j$.time.temporal.n nVar, int i2) {
        Objects.requireNonNull(nVar, "field");
        if (i2 < 1 || i2 > 19) {
            j$.time.h.m("The width must be from 1 to 19 inclusive but was ", i2);
        } else {
            k(new j(nVar, i2, i2, f0.NOT_NEGATIVE));
        }
    }

    public final void n(j$.time.temporal.n nVar, int i2, int i3, f0 f0Var) {
        if (i2 == i3 && f0Var == f0.NOT_NEGATIVE) {
            m(nVar, i3);
            return;
        }
        Objects.requireNonNull(nVar, "field");
        Objects.requireNonNull(f0Var, "signStyle");
        if (i2 < 1 || i2 > 19) {
            j$.time.h.m("The minimum width must be from 1 to 19 inclusive but was ", i2);
            return;
        }
        if (i3 < 1 || i3 > 19) {
            j$.time.h.m("The maximum width must be from 1 to 19 inclusive but was ", i3);
            return;
        }
        if (i3 >= i2) {
            k(new j(nVar, i2, i3, f0Var));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
    }

    public final void o() {
        v vVar = this.a;
        if (vVar.b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        int size = ((ArrayList) vVar.c).size();
        v vVar2 = this.a;
        if (size <= 0) {
            this.a = vVar2.b;
            return;
        }
        d dVar = new d(vVar2.c, vVar2.d);
        this.a = this.a.b;
        c(dVar);
    }

    public final void p() {
        v vVar = this.a;
        vVar.g = -1;
        this.a = new v(vVar);
    }

    public final DateTimeFormatter q(e0 e0Var, j$.time.chrono.a aVar) {
        return r(Locale.getDefault(), e0Var, aVar);
    }

    public final DateTimeFormatter r(Locale locale, e0 e0Var, j$.time.chrono.a aVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.a.b != null) {
            o();
        }
        d dVar = new d(this.c, false);
        c0 c0Var = c0.a;
        return new DateTimeFormatter(dVar, locale, e0Var, aVar);
    }

    public v(v vVar) {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = vVar;
        this.d = true;
    }
}
