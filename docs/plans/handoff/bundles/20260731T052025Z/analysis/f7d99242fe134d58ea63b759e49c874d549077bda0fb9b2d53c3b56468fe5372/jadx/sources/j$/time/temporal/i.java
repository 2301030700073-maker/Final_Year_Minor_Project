package j$.time.temporal;

import j$.time.DateTimeException;
import j$.time.format.u;
import j$.time.format.v;
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
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class i implements TemporalField {
    public static final i JULIAN_DAY;
    public static final i MODIFIED_JULIAN_DAY;
    public static final i RATA_DIE;
    public static final /* synthetic */ i[] d;
    private static final long serialVersionUID = -7501623920830201812L;
    public final transient String a;
    public final transient p b;
    public final transient long c;

    static {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.FOREVER;
        i iVar = new i("JULIAN_DAY", 0, "JulianDay", chronoUnit, chronoUnit2, 2440588L);
        JULIAN_DAY = iVar;
        i iVar2 = new i("MODIFIED_JULIAN_DAY", 1, "ModifiedJulianDay", chronoUnit, chronoUnit2, 40587L);
        MODIFIED_JULIAN_DAY = iVar2;
        i iVar3 = new i("RATA_DIE", 2, "RataDie", chronoUnit, chronoUnit2, 719163L);
        RATA_DIE = iVar3;
        d = new i[]{iVar, iVar2, iVar3};
    }

    public i(String str, int i, String str2, ChronoUnit chronoUnit, ChronoUnit chronoUnit2, long j) {
        this.a = str2;
        this.b = p.f((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) d.clone();
    }

    @Override // j$.time.temporal.TemporalField
    public final long F(TemporalAccessor temporalAccessor) {
        return temporalAccessor.J(ChronoField.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.TemporalField
    public final Temporal J(Temporal temporal, long j) {
        if (this.b.e(j)) {
            return temporal.b(j$.com.android.tools.r8.a.S(j, this.c), ChronoField.EPOCH_DAY);
        }
        throw new DateTimeException("Invalid value: " + this.a + " " + j);
    }

    @Override // j$.time.temporal.TemporalField
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.TemporalField
    public final boolean k(TemporalAccessor temporalAccessor) {
        return temporalAccessor.d(ChronoField.EPOCH_DAY);
    }

    @Override // j$.time.temporal.TemporalField
    public final p m(TemporalAccessor temporalAccessor) {
        if (temporalAccessor.d(ChronoField.EPOCH_DAY)) {
            return this.b;
        }
        j$.nio.file.j.j(this, "Unsupported field: ");
        return null;
    }

    @Override // j$.time.temporal.TemporalField
    public final TemporalAccessor n(Map map, u uVar, v vVar) {
        long longValue = ((Long) map.remove(this)).longValue();
        j$.time.chrono.j A = j$.com.android.tools.r8.a.A(uVar);
        v vVar2 = v.LENIENT;
        long j = this.c;
        if (vVar == vVar2) {
            return A.h(j$.com.android.tools.r8.a.S(longValue, j));
        }
        this.b.b(longValue, this);
        return A.h(longValue - j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalField
    public final p u() {
        return this.b;
    }
}
