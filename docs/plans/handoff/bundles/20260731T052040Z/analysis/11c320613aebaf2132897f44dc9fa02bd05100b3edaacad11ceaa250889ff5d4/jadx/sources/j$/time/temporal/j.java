package j$.time.temporal;

import j$.time.DateTimeException;
import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'JULIAN_DAY' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class j implements p {
    public static final j JULIAN_DAY;
    public static final j MODIFIED_JULIAN_DAY;
    public static final j RATA_DIE;
    public static final /* synthetic */ j[] d;
    private static final long serialVersionUID = -7501623920830201812L;
    public final transient String a;
    public final transient s b;
    public final transient long c;

    static {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.FOREVER;
        j jVar = new j("JULIAN_DAY", 0, "JulianDay", chronoUnit, chronoUnit2, 2440588L);
        JULIAN_DAY = jVar;
        j jVar2 = new j("MODIFIED_JULIAN_DAY", 1, "ModifiedJulianDay", chronoUnit, chronoUnit2, 40587L);
        MODIFIED_JULIAN_DAY = jVar2;
        j jVar3 = new j("RATA_DIE", 2, "RataDie", chronoUnit, chronoUnit2, 719163L);
        RATA_DIE = jVar3;
        d = new j[]{jVar, jVar2, jVar3};
    }

    public j(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, long j) {
        this.a = str2;
        this.b = s.f((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) d.clone();
    }

    @Override // j$.time.temporal.p
    public final long F(TemporalAccessor temporalAccessor) {
        return temporalAccessor.M(a.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.p
    public final l H(l lVar, long j) {
        if (this.b.e(j)) {
            return lVar.c(j$.com.android.tools.r8.a.U(j, this.c), a.EPOCH_DAY);
        }
        throw new DateTimeException("Invalid value: " + this.a + " " + j);
    }

    @Override // j$.time.temporal.p
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.p
    public final boolean k(TemporalAccessor temporalAccessor) {
        return temporalAccessor.e(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.p
    public final s n(TemporalAccessor temporalAccessor) {
        if (temporalAccessor.e(a.EPOCH_DAY)) {
            return this.b;
        }
        j$.nio.file.m.j(this, "Unsupported field: ");
        return null;
    }

    @Override // j$.time.temporal.p
    public final TemporalAccessor o(Map map, d0 d0Var, e0 e0Var) {
        long longValue = ((Long) map.remove(this)).longValue();
        j$.time.chrono.l B = j$.com.android.tools.r8.a.B(d0Var);
        e0 e0Var2 = e0.LENIENT;
        long j = this.c;
        if (e0Var == e0Var2) {
            return B.h(j$.com.android.tools.r8.a.U(longValue, j));
        }
        this.b.b(longValue, this);
        return B.h(longValue - j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }

    @Override // j$.time.temporal.p
    public final s u() {
        return this.b;
    }
}
