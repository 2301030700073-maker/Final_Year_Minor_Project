package j$.time.format;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class v {
    public static final j$.desugar.sun.nio.fs.m h = new j$.desugar.sun.nio.fs.m(6);
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
        c(dateTimeFormatter.d());
    }

    public final void b(j$.time.temporal.a aVar, int i2, int i3, boolean z) {
        if (i2 != i3 || z) {
            c(new f(aVar, i2, i3, z));
        } else {
            l(new f(aVar, i2, i3, z));
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

    public final void f(FormatStyle formatStyle, FormatStyle formatStyle2) {
        if (formatStyle == null && formatStyle2 == null) {
            j$.nio.file.m.c("Either the date or time style must be non-null");
        } else {
            c(new i(formatStyle, formatStyle2));
        }
    }

    public final void g(g0 g0Var) {
        Objects.requireNonNull(g0Var, TtmlNode.TAG_STYLE);
        if (g0Var == g0.FULL || g0Var == g0.SHORT) {
            c(new h(0, g0Var));
        } else {
            j$.nio.file.m.c("Style must be either full or short");
        }
    }

    public final void h(String str, String str2) {
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
    public final void i(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.v.i(java.lang.String):void");
    }

    public final void j(j$.time.temporal.a aVar, Map map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        g0 g0Var = g0.FULL;
        c(new r(aVar, g0Var, new a(new a0(Collections.singletonMap(g0Var, linkedHashMap)))));
    }

    public final void k(j$.time.temporal.p pVar, g0 g0Var) {
        Objects.requireNonNull(pVar, "field");
        Objects.requireNonNull(g0Var, "textStyle");
        c(new r(pVar, g0Var, b0.c));
    }

    public final void l(j jVar) {
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

    public final void m(j$.time.temporal.p pVar) {
        Objects.requireNonNull(pVar, "field");
        l(new j(pVar, 1, 19, f0.NORMAL));
    }

    public final void n(j$.time.temporal.p pVar, int i2) {
        Objects.requireNonNull(pVar, "field");
        if (i2 < 1 || i2 > 19) {
            j$.nio.file.m.n("The width must be from 1 to 19 inclusive but was ", i2);
        } else {
            l(new j(pVar, i2, i2, f0.NOT_NEGATIVE));
        }
    }

    public final void o(j$.time.temporal.p pVar, int i2, int i3, f0 f0Var) {
        if (i2 == i3 && f0Var == f0.NOT_NEGATIVE) {
            n(pVar, i3);
            return;
        }
        Objects.requireNonNull(pVar, "field");
        Objects.requireNonNull(f0Var, "signStyle");
        if (i2 < 1 || i2 > 19) {
            j$.nio.file.m.n("The minimum width must be from 1 to 19 inclusive but was ", i2);
            return;
        }
        if (i3 < 1 || i3 > 19) {
            j$.nio.file.m.n("The maximum width must be from 1 to 19 inclusive but was ", i3);
            return;
        }
        if (i3 >= i2) {
            l(new j(pVar, i2, i3, f0Var));
            return;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i3 + " < " + i2);
    }

    public final void p() {
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

    public final void q() {
        v vVar = this.a;
        vVar.g = -1;
        this.a = new v(vVar);
    }

    public final DateTimeFormatter r(e0 e0Var, j$.time.chrono.l lVar) {
        return s(Locale.getDefault(), e0Var, lVar);
    }

    public final DateTimeFormatter s(Locale locale, e0 e0Var, j$.time.chrono.l lVar) {
        Objects.requireNonNull(locale, "locale");
        while (this.a.b != null) {
            p();
        }
        return new DateTimeFormatter(new d(this.c, false), locale, c0.a, e0Var, lVar);
    }

    public v(v vVar) {
        this.a = this;
        this.c = new ArrayList();
        this.g = -1;
        this.b = vVar;
        this.d = true;
    }
}
