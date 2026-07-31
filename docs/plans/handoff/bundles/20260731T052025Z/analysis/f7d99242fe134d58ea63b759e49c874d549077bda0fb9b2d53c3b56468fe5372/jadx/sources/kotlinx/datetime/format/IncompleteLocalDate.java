package kotlinx.datetime.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import j$.time.DateTimeException;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.datetime.DayOfWeek;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.LocalDateJvmKt;
import kotlinx.datetime.Month;
import kotlinx.datetime.internal.MathKt;
import kotlinx.datetime.internal.format.parser.Copyable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncompleteLocalDate implements YearMonthFieldContainer, DateFieldContainer, Copyable {
    public Integer day;
    public Integer dayOfWeek;
    public Integer dayOfYear;
    public final IncompleteYearMonth yearMonth;

    public IncompleteLocalDate(IncompleteYearMonth incompleteYearMonth, Integer num, Integer num2, Integer num3) {
        this.yearMonth = incompleteYearMonth;
        this.day = num;
        this.dayOfWeek = num2;
        this.dayOfYear = num3;
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        IncompleteYearMonth incompleteYearMonth = this.yearMonth;
        return new IncompleteLocalDate(new IncompleteYearMonth(incompleteYearMonth.year, incompleteYearMonth.monthNumber), this.day, this.dayOfWeek, this.dayOfYear);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IncompleteLocalDate)) {
            return false;
        }
        IncompleteLocalDate incompleteLocalDate = (IncompleteLocalDate) obj;
        return Intrinsics.areEqual(this.yearMonth, incompleteLocalDate.yearMonth) && Intrinsics.areEqual(this.day, incompleteLocalDate.day) && Intrinsics.areEqual(this.dayOfWeek, incompleteLocalDate.dayOfWeek) && Intrinsics.areEqual(this.dayOfYear, incompleteLocalDate.dayOfYear);
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDay() {
        return this.day;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDayOfWeek() {
        return this.dayOfWeek;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDayOfYear() {
        return this.dayOfYear;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getMonthNumber() {
        return this.yearMonth.monthNumber;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getYear() {
        return this.yearMonth.year;
    }

    public final int hashCode() {
        int hashCode = this.yearMonth.hashCode() * 29791;
        Integer num = this.day;
        int hashCode2 = ((num != null ? num.hashCode() : 0) * 961) + hashCode;
        Integer num2 = this.dayOfWeek;
        int hashCode3 = ((num2 != null ? num2.hashCode() : 0) * 31) + hashCode2;
        Integer num3 = this.dayOfYear;
        return hashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    public final void populateFrom(LocalDate localDate) {
        j$.time.LocalDate localDate2 = localDate.value;
        Integer valueOf = Integer.valueOf(localDate2.getYear());
        IncompleteYearMonth incompleteYearMonth = this.yearMonth;
        incompleteYearMonth.year = valueOf;
        localDate2.getMonth().getClass();
        Month month = (Month) Month.$ENTRIES.get(r1.getValue() - 1);
        month.getClass();
        incompleteYearMonth.monthNumber = Integer.valueOf(month.ordinal() + 1);
        this.day = Integer.valueOf(localDate2.getDayOfMonth());
        DayOfWeek dayOfWeek = localDate.getDayOfWeek();
        dayOfWeek.getClass();
        this.dayOfWeek = Integer.valueOf(dayOfWeek.ordinal() + 1);
        this.dayOfYear = Integer.valueOf(localDate2.getDayOfYear());
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDay(Integer num) {
        this.day = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDayOfWeek(Integer num) {
        this.dayOfWeek = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDayOfYear(Integer num) {
        this.dayOfYear = num;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setMonthNumber(Integer num) {
        this.yearMonth.monthNumber = num;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setYear(Integer num) {
        this.yearMonth.year = num;
    }

    public final LocalDate toLocalDate() {
        LocalDate localDate;
        long safeMultiply;
        long epochDay;
        int i;
        long j;
        LocalDate localDate2;
        IncompleteYearMonth incompleteYearMonth = this.yearMonth;
        Integer num = incompleteYearMonth.year;
        YearMonthFormatKt.requireParsedField(num, "year");
        int intValue = num.intValue();
        Integer num2 = this.dayOfYear;
        if (num2 == null) {
            Integer num3 = incompleteYearMonth.monthNumber;
            YearMonthFormatKt.requireParsedField(num3, "monthNumber");
            int intValue2 = num3.intValue();
            Integer num4 = this.day;
            YearMonthFormatKt.requireParsedField(num4, "day");
            localDate2 = new LocalDate(intValue, intValue2, num4.intValue());
            i = 1;
        } else {
            LocalDate localDate3 = new LocalDate(intValue, 1, 1);
            int intValue3 = num2.intValue() - 1;
            DateTimeUnit.Companion.getClass();
            DateTimeUnit.DayBased dayBased = DateTimeUnit.DAY;
            dayBased.getClass();
            long j2 = intValue3;
            int i2 = LocalDateJvmKt.$r8$clinit;
            j$.time.LocalDate localDate4 = localDate3.value;
            try {
                safeMultiply = MathKt.safeMultiply(j2, dayBased.days);
                epochDay = localDate4.toEpochDay();
                i = 1;
                localDate = localDate3;
                j = epochDay + safeMultiply;
            } catch (Exception e) {
                e = e;
                localDate = localDate3;
            }
            try {
                if (!((safeMultiply ^ epochDay) < 0) && !((epochDay ^ j) >= 0)) {
                    throw new ArithmeticException();
                }
                long j3 = LocalDateJvmKt.minEpochDay;
                if (j > LocalDateJvmKt.maxEpochDay || j3 > j) {
                    throw new DateTimeException("The resulting day " + j + " is out of supported LocalDate range.");
                }
                j$.time.LocalDate ofEpochDay = j$.time.LocalDate.ofEpochDay(j);
                ofEpochDay.getClass();
                LocalDate localDate5 = new LocalDate(ofEpochDay);
                if (ofEpochDay.getYear() != intValue) {
                    throw new InstantFormatException("Can not create a LocalDate from the given input: the day of year is " + num2 + ", which is not a valid day of year for the year " + intValue);
                }
                Integer num5 = incompleteYearMonth.monthNumber;
                EnumEntriesList enumEntriesList = Month.$ENTRIES;
                if (num5 != null) {
                    j$.time.Month month = ofEpochDay.getMonth();
                    month.getClass();
                    Month month2 = (Month) enumEntriesList.get(month.getValue() - 1);
                    month2.getClass();
                    int ordinal = month2.ordinal() + 1;
                    Integer num6 = incompleteYearMonth.monthNumber;
                    if (num6 == null || ordinal != num6.intValue()) {
                        StringBuilder sb = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                        sb.append(num2);
                        sb.append(", which is ");
                        j$.time.Month month3 = ofEpochDay.getMonth();
                        month3.getClass();
                        sb.append((Month) enumEntriesList.get(month3.getValue() - 1));
                        Integer num7 = incompleteYearMonth.monthNumber;
                        sb.append(", but ");
                        sb.append(num7);
                        sb.append(" was specified as the month number");
                        throw new InstantFormatException(sb.toString());
                    }
                }
                if (this.day != null) {
                    int dayOfMonth = ofEpochDay.getDayOfMonth();
                    Integer num8 = this.day;
                    if (num8 == null || dayOfMonth != num8.intValue()) {
                        StringBuilder sb2 = new StringBuilder("Can not create a LocalDate from the given input: the day of year is ");
                        sb2.append(num2);
                        sb2.append(", which is the day ");
                        sb2.append(ofEpochDay.getDayOfMonth());
                        sb2.append(" of ");
                        j$.time.Month month4 = ofEpochDay.getMonth();
                        month4.getClass();
                        sb2.append((Month) enumEntriesList.get(month4.getValue() - 1));
                        Integer num9 = this.day;
                        sb2.append(", but ");
                        sb2.append(num9);
                        sb2.append(" was specified as the day of month");
                        throw new InstantFormatException(sb2.toString());
                    }
                }
                localDate2 = localDate5;
            } catch (Exception e2) {
                e = e2;
                if (!(e instanceof DateTimeException) && !(e instanceof ArithmeticException)) {
                    throw e;
                }
                throw new SerializationException("The result of adding " + j2 + " of " + dayBased + " to " + localDate + " is out of LocalDate range.", e);
            }
        }
        Integer num10 = this.dayOfWeek;
        if (num10 != null) {
            int intValue4 = num10.intValue();
            DayOfWeek dayOfWeek = localDate2.getDayOfWeek();
            dayOfWeek.getClass();
            if (intValue4 != dayOfWeek.ordinal() + i) {
                StringBuilder sb3 = new StringBuilder("Can not create a LocalDate from the given input: the day of week is ");
                if (i > intValue4 || intValue4 >= 8) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Expected ISO day-of-week number in 1..7, got ", intValue4));
                    return null;
                }
                sb3.append((DayOfWeek) DayOfWeek.$ENTRIES.get(intValue4 - i));
                sb3.append(" but the date is ");
                sb3.append(localDate2);
                sb3.append(", which is a ");
                sb3.append(localDate2.getDayOfWeek());
                throw new InstantFormatException(sb3.toString());
            }
        }
        return localDate2;
    }

    public final String toString() {
        Integer num = this.dayOfYear;
        IncompleteYearMonth incompleteYearMonth = this.yearMonth;
        if (num == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(incompleteYearMonth);
            sb.append('-');
            Object obj = this.day;
            if (obj == null) {
                obj = "??";
            }
            sb.append(obj);
            sb.append(" (day of week is ");
            Object obj2 = this.dayOfWeek;
            sb.append(obj2 != null ? obj2 : "??");
            sb.append(')');
            return sb.toString();
        }
        if (this.day == null && incompleteYearMonth.monthNumber == null) {
            StringBuilder sb2 = new StringBuilder("(");
            Object obj3 = incompleteYearMonth.year;
            if (obj3 == null) {
                obj3 = "??";
            }
            sb2.append(obj3);
            sb2.append(")-");
            sb2.append(this.dayOfYear);
            sb2.append(" (day of week is ");
            Object obj4 = this.dayOfWeek;
            sb2.append(obj4 != null ? obj4 : "??");
            sb2.append(')');
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(incompleteYearMonth);
        sb3.append('-');
        Object obj5 = this.day;
        if (obj5 == null) {
            obj5 = "??";
        }
        sb3.append(obj5);
        sb3.append(" (day of week is ");
        Object obj6 = this.dayOfWeek;
        sb3.append(obj6 != null ? obj6 : "??");
        sb3.append(", day of year is ");
        sb3.append(this.dayOfYear);
        sb3.append(')');
        return sb3.toString();
    }

    public /* synthetic */ IncompleteLocalDate() {
        this(new IncompleteYearMonth(null, null), null, null, null);
    }
}
