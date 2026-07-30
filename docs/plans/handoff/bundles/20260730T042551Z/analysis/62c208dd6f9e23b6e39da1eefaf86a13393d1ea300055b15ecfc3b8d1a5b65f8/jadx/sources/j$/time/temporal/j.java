package j$.time.temporal;

import j$.time.chrono.AbstractC2961a;
import j$.time.chrono.AbstractC2962b;

/* loaded from: classes2.dex */
public abstract class j {
    public static final r a;
    public static final r b;
    public static final r c;

    static {
        h hVar = h.DAY_OF_QUARTER;
        a = h.QUARTER_OF_YEAR;
        b = h.WEEK_OF_WEEK_BASED_YEAR;
        c = h.WEEK_BASED_YEAR;
        i iVar = i.WEEK_BASED_YEARS;
        i iVar2 = i.WEEK_BASED_YEARS;
    }

    static boolean a(n nVar) {
        return ((AbstractC2961a) AbstractC2962b.r(nVar)).equals(j$.time.chrono.u.d);
    }
}
