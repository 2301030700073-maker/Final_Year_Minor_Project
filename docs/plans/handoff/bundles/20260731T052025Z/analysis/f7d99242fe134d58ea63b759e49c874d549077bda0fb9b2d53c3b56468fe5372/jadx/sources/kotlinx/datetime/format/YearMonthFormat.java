package kotlinx.datetime.format;

import j$.time.YearMonth;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.Month;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class YearMonthFormat extends AbstractDateTimeFormat {
    public final CachedFormatStructure actualFormat;

    public YearMonthFormat(CachedFormatStructure cachedFormatStructure) {
        this.actualFormat = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final CachedFormatStructure getActualFormat() {
        return this.actualFormat;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable getEmptyIntermediate() {
        return YearMonthFormatKt.emptyIncompleteYearMonth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable intermediateFromValue(LocalDateTime localDateTime) {
        IncompleteYearMonth incompleteYearMonth = new IncompleteYearMonth(null, null);
        YearMonth yearMonth = ((kotlinx.datetime.YearMonth) localDateTime).value;
        incompleteYearMonth.year = Integer.valueOf(yearMonth.getYear());
        yearMonth.getMonth().getClass();
        Month month = (Month) Month.$ENTRIES.get(r2.getValue() - 1);
        month.getClass();
        incompleteYearMonth.monthNumber = Integer.valueOf(month.ordinal() + 1);
        return incompleteYearMonth;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object valueFromIntermediate(Copyable copyable) {
        IncompleteYearMonth incompleteYearMonth = (IncompleteYearMonth) copyable;
        incompleteYearMonth.getClass();
        Integer num = incompleteYearMonth.year;
        YearMonthFormatKt.requireParsedField(num, "year");
        int intValue = num.intValue();
        Integer num2 = incompleteYearMonth.monthNumber;
        YearMonthFormatKt.requireParsedField(num2, "monthNumber");
        return new kotlinx.datetime.YearMonth(intValue, num2.intValue());
    }
}
