package kotlinx.datetime.format;

import kotlinx.datetime.internal.DecimalFraction;
import kotlinx.datetime.internal.format.parser.Copyable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncompleteLocalDateTime implements DateFieldContainer, TimeFieldContainer, Copyable {
    public final IncompleteLocalDate date;
    public final IncompleteLocalTime time;

    public /* synthetic */ IncompleteLocalDateTime() {
        this(new IncompleteLocalDate(), new IncompleteLocalTime());
    }

    @Override // kotlinx.datetime.internal.format.parser.Copyable
    public final Object copy() {
        IncompleteLocalDate incompleteLocalDate = this.date;
        IncompleteYearMonth incompleteYearMonth = incompleteLocalDate.yearMonth;
        IncompleteLocalDate incompleteLocalDate2 = new IncompleteLocalDate(new IncompleteYearMonth(incompleteYearMonth.year, incompleteYearMonth.monthNumber), incompleteLocalDate.day, incompleteLocalDate.dayOfWeek, incompleteLocalDate.dayOfYear);
        IncompleteLocalTime incompleteLocalTime = this.time;
        return new IncompleteLocalDateTime(incompleteLocalDate2, new IncompleteLocalTime(incompleteLocalTime.hour, incompleteLocalTime.hourOfAmPm, incompleteLocalTime.amPm, incompleteLocalTime.minute, incompleteLocalTime.second, incompleteLocalTime.nanosecond));
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final AmPmMarker getAmPm() {
        return this.time.amPm;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDay() {
        return this.date.day;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDayOfWeek() {
        return this.date.dayOfWeek;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final Integer getDayOfYear() {
        return this.date.dayOfYear;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final DecimalFraction getFractionOfSecond() {
        return this.time.getFractionOfSecond();
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getHour() {
        return this.time.hour;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getHourOfAmPm() {
        return this.time.hourOfAmPm;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getMinute() {
        return this.time.minute;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getMonthNumber() {
        return this.date.yearMonth.monthNumber;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final Integer getSecond() {
        return this.time.second;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final Integer getYear() {
        return this.date.yearMonth.year;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setAmPm(AmPmMarker amPmMarker) {
        this.time.amPm = amPmMarker;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDay(Integer num) {
        this.date.day = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDayOfWeek(Integer num) {
        this.date.dayOfWeek = num;
    }

    @Override // kotlinx.datetime.format.DateFieldContainer
    public final void setDayOfYear(Integer num) {
        this.date.dayOfYear = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setFractionOfSecond(DecimalFraction decimalFraction) {
        this.time.setFractionOfSecond(decimalFraction);
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setHour(Integer num) {
        this.time.hour = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setHourOfAmPm(Integer num) {
        this.time.hourOfAmPm = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setMinute(Integer num) {
        this.time.minute = num;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setMonthNumber(Integer num) {
        this.date.yearMonth.monthNumber = num;
    }

    @Override // kotlinx.datetime.format.TimeFieldContainer
    public final void setSecond(Integer num) {
        this.time.second = num;
    }

    @Override // kotlinx.datetime.format.YearMonthFieldContainer
    public final void setYear(Integer num) {
        this.date.yearMonth.year = num;
    }

    public IncompleteLocalDateTime(IncompleteLocalDate incompleteLocalDate, IncompleteLocalTime incompleteLocalTime) {
        this.date = incompleteLocalDate;
        this.time = incompleteLocalTime;
    }
}
