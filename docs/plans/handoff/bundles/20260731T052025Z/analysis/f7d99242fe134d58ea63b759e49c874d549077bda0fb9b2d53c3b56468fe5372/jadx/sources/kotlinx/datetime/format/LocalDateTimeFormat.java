package kotlinx.datetime.format;

import j$.time.LocalTime;
import kotlin.jvm.functions.Function1;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.io.Sink$CC;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalDateTimeFormat extends AbstractDateTimeFormat {
    public final CachedFormatStructure actualFormat;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements AbstractDateTimeFormatBuilder, AbstractWithYearMonthBuilder, DateTimeFormatBuilder, DateTimeFormatBuilder.WithTime {
        public final Headers.Builder actualBuilder;

        public Builder(Headers.Builder builder) {
            this.actualBuilder = builder;
        }

        public final void addFormatStructureForDate(FormatStructure formatStructure) {
            this.actualBuilder.add(formatStructure);
        }

        public final void addFormatStructureForTime(FormatStructure formatStructure) {
            this.actualBuilder.add(formatStructure);
        }

        @Override // kotlinx.datetime.format.AbstractWithYearMonthBuilder
        public final void addFormatStructureForYearMonth(BasicFormatStructure basicFormatStructure) {
            addFormatStructureForDate(basicFormatStructure);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final /* synthetic */ void appendAlternativeParsingImpl(Function1[] function1Arr, Function1 function1) {
            Sink$CC.$default$appendAlternativeParsingImpl(this, function1Arr, function1);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final /* synthetic */ void appendOptionalImpl(String str, Function1 function1) {
            Sink$CC.$default$appendOptionalImpl(this, str, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder
        public final /* synthetic */ void chars(String str) {
            Sink$CC.$default$chars(this, str);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final AbstractDateTimeFormatBuilder createEmpty() {
            return new Builder(new Headers.Builder(11));
        }

        public final void day() {
            addFormatStructureForDate(new BasicFormatStructure(new DayDirective()));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final Headers.Builder getActualBuilder() {
            return this.actualBuilder;
        }

        public final void hour() {
            addFormatStructureForTime(new BasicFormatStructure(new HourDirective()));
        }

        public final void minute() {
            addFormatStructureForTime(new BasicFormatStructure(new MinuteDirective()));
        }

        public final /* synthetic */ void monthNumber() {
            addFormatStructureForYearMonth(new BasicFormatStructure(new MonthDirective()));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void second(Padding padding) {
            padding.getClass();
            addFormatStructureForTime(new BasicFormatStructure(new SecondDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void secondFraction() {
            addFormatStructureForTime(new BasicFormatStructure(new FractionalSecondDirective()));
        }

        public final /* synthetic */ void year() {
            addFormatStructureForYearMonth(new BasicFormatStructure(new YearDirective()));
        }
    }

    public LocalDateTimeFormat(CachedFormatStructure cachedFormatStructure) {
        this.actualFormat = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final CachedFormatStructure getActualFormat() {
        return this.actualFormat;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable getEmptyIntermediate() {
        return LocalDateTimeFormatKt.emptyIncompleteLocalDateTime;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable intermediateFromValue(LocalDateTime localDateTime) {
        IncompleteLocalDateTime incompleteLocalDateTime = new IncompleteLocalDateTime();
        incompleteLocalDateTime.date.populateFrom(localDateTime.getDate());
        LocalTime localTime = localDateTime.value.toLocalTime();
        localTime.getClass();
        incompleteLocalDateTime.time.populateFrom(new kotlinx.datetime.LocalTime(localTime));
        return incompleteLocalDateTime;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object valueFromIntermediate(Copyable copyable) {
        IncompleteLocalDateTime incompleteLocalDateTime = (IncompleteLocalDateTime) copyable;
        incompleteLocalDateTime.getClass();
        return new LocalDateTime(incompleteLocalDateTime.date.toLocalDate(), incompleteLocalDateTime.time.toLocalTime());
    }
}
