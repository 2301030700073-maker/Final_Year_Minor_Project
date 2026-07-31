package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public final j f(Locale locale) {
        j$.time.temporal.t tVar;
        ConcurrentHashMap concurrentHashMap = j$.time.temporal.u.g;
        Objects.requireNonNull(locale, "locale");
        j$.time.temporal.u a = j$.time.temporal.u.a(j$.time.c.a[((((int) ((r7.getFirstDayOfWeek() - 1) % 7)) + 7) + j$.time.c.SUNDAY.ordinal()) % 7], Calendar.getInstance(new Locale(locale.getLanguage(), locale.getCountry())).getMinimalDaysInFirstWeek());
        char c = this.g;
        if (c == 'W') {
            tVar = a.d;
        } else {
            if (c == 'Y') {
                j$.time.temporal.t tVar2 = a.f;
                int i = this.h;
                if (i == 2) {
                    return new p(tVar2, 2, 2, p.h, this.e);
                }
                return new j(tVar2, i, 19, i < 4 ? f0.NORMAL : f0.EXCEEDS_PAD, this.e);
            }
            if (c == 'c' || c == 'e') {
                tVar = a.c;
            } else {
                if (c != 'w') {
                    throw new IllegalStateException("unreachable");
                }
                tVar = a.e;
            }
        }
        return new j(tVar, this.b, this.c, f0.NOT_NEGATIVE, this.e);
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final boolean k(y yVar, StringBuilder sb) {
        return f(yVar.b.b).k(yVar, sb);
    }

    @Override // j$.time.format.j, j$.time.format.e
    public final int n(w wVar, CharSequence charSequence, int i) {
        return f(wVar.a.b).n(wVar, charSequence, i);
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
