package j$.time.format;

import j$.time.DayOfWeek;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class s extends j {
    public final char g;
    public final int h;

    public s(char c, int i, int i2, int i3, int i4) {
        super(null, i2, i3, f0.NOT_NEGATIVE, i4);
        this.g = c;
        this.h = i;
    }

    @Override // j$.time.format.j
    public final j d() {
        if (this.e == -1) {
            return this;
        }
        return new s(this.g, this.h, this.b, this.c, -1);
    }

    @Override // j$.time.format.j
    public final j e(int i) {
        return new s(this.g, this.h, this.b, this.c, this.e + i);
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final boolean f(y yVar, StringBuilder sb) {
        return h(yVar.b.b).f(yVar, sb);
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        return h(wVar.a.b).g(wVar, charSequence, i);
    }

    public final j h(Locale locale) {
        j$.time.temporal.r rVar;
        ConcurrentHashMap concurrentHashMap = j$.time.temporal.s.g;
        Objects.requireNonNull(locale, "locale");
        j$.time.temporal.s a = j$.time.temporal.s.a(DayOfWeek.a[((((int) ((r7.getFirstDayOfWeek() - 1) % 7)) + 7) + DayOfWeek.SUNDAY.ordinal()) % 7], Calendar.getInstance(new Locale(locale.getLanguage(), locale.getCountry())).getMinimalDaysInFirstWeek());
        char c = this.g;
        if (c == 'W') {
            rVar = a.d;
        } else {
            if (c == 'Y') {
                j$.time.temporal.r rVar2 = a.f;
                int i = this.h;
                if (i == 2) {
                    return new p(rVar2, 2, 2, p.h, this.e);
                }
                return new j(rVar2, i, 19, i < 4 ? f0.NORMAL : f0.EXCEEDS_PAD, this.e);
            }
            if (c == 'c' || c == 'e') {
                rVar = a.c;
            } else {
                if (c != 'w') {
                    throw new IllegalStateException("unreachable");
                }
                rVar = a.e;
            }
        }
        return new j(rVar, this.b, this.c, f0.NOT_NEGATIVE, this.e);
    }

    @Override // j$.time.format.j
    public final String toString() {
        StringBuilder sb = new StringBuilder(30);
        sb.append("Localized(");
        int i = this.h;
        char c = this.g;
        if (c != 'Y') {
            if (c == 'W') {
                sb.append("WeekOfMonth");
            } else if (c == 'c' || c == 'e') {
                sb.append("DayOfWeek");
            } else if (c == 'w') {
                sb.append("WeekOfWeekBasedYear");
            }
            sb.append(",");
            sb.append(i);
        } else if (i == 1) {
            sb.append("WeekBasedYear");
        } else if (i == 2) {
            sb.append("ReducedValue(WeekBasedYear,2,2,2000-01-01)");
        } else {
            sb.append("WeekBasedYear,");
            sb.append(i);
            sb.append(",19,");
            sb.append(i < 4 ? f0.NORMAL : f0.EXCEEDS_PAD);
        }
        sb.append(")");
        return sb.toString();
    }
}
