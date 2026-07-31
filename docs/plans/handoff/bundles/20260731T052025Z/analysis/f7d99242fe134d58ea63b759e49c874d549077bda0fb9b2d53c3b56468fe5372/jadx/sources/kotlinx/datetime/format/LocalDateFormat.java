package kotlinx.datetime.format;

import kotlin.jvm.functions.Function1;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.io.Sink$CC;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalDateFormat extends AbstractDateTimeFormat {
    public final CachedFormatStructure actualFormat;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements AbstractDateTimeFormatBuilder, AbstractWithYearMonthBuilder, DateTimeFormatBuilder {
        public final /* synthetic */ int $r8$classId;
        public final Headers.Builder actualBuilder;

        public /* synthetic */ Builder(Headers.Builder builder, int i) {
            this.$r8$classId = i;
            this.actualBuilder = builder;
        }

        public void addFormatStructureForDate(FormatStructure formatStructure) {
            this.actualBuilder.add(formatStructure);
        }

        @Override // kotlinx.datetime.format.AbstractWithYearMonthBuilder
        public final void addFormatStructureForYearMonth(BasicFormatStructure basicFormatStructure) {
            switch (this.$r8$classId) {
                case 0:
                    addFormatStructureForDate(basicFormatStructure);
                    break;
                default:
                    this.actualBuilder.add((FormatStructure) basicFormatStructure);
                    break;
            }
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final /* synthetic */ void appendAlternativeParsingImpl(Function1[] function1Arr, Function1 function1) {
            int i = this.$r8$classId;
            Sink$CC.$default$appendAlternativeParsingImpl(this, function1Arr, function1);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final /* synthetic */ void appendOptionalImpl(String str, Function1 function1) {
            int i = this.$r8$classId;
            Sink$CC.$default$appendOptionalImpl(this, str, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder
        public final /* synthetic */ void chars(String str) {
            int i = this.$r8$classId;
            Sink$CC.$default$chars(this, str);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final AbstractDateTimeFormatBuilder createEmpty() {
            switch (this.$r8$classId) {
                case 0:
                    return new Builder(new Headers.Builder(11), 0);
                default:
                    return new Builder(new Headers.Builder(11), 1);
            }
        }

        public void day() {
            addFormatStructureForDate(new BasicFormatStructure(new DayDirective()));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final Headers.Builder getActualBuilder() {
            int i = this.$r8$classId;
            return this.actualBuilder;
        }

        public final /* synthetic */ void monthNumber() {
            int i = this.$r8$classId;
            addFormatStructureForYearMonth(new BasicFormatStructure(new MonthDirective()));
        }

        public final /* synthetic */ void year() {
            int i = this.$r8$classId;
            addFormatStructureForYearMonth(new BasicFormatStructure(new YearDirective()));
        }
    }

    public LocalDateFormat(CachedFormatStructure cachedFormatStructure) {
        this.actualFormat = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final CachedFormatStructure getActualFormat() {
        return this.actualFormat;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable getEmptyIntermediate() {
        return LocalDateFormatKt.emptyIncompleteLocalDate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable intermediateFromValue(LocalDateTime localDateTime) {
        IncompleteLocalDate incompleteLocalDate = new IncompleteLocalDate();
        incompleteLocalDate.populateFrom((LocalDate) localDateTime);
        return incompleteLocalDate;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object valueFromIntermediate(Copyable copyable) {
        IncompleteLocalDate incompleteLocalDate = (IncompleteLocalDate) copyable;
        incompleteLocalDate.getClass();
        return incompleteLocalDate.toLocalDate();
    }
}
