package kotlinx.datetime.format;

import kotlin.jvm.functions.Function1;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.io.Sink$CC;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalTimeFormat extends AbstractDateTimeFormat {
    public final CachedFormatStructure actualFormat;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements AbstractDateTimeFormatBuilder, DateTimeFormatBuilder.WithTime {
        public final Headers.Builder actualBuilder;

        public Builder(Headers.Builder builder) {
            this.actualBuilder = builder;
        }

        public final void addFormatStructureForTime(FormatStructure formatStructure) {
            this.actualBuilder.add(formatStructure);
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

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final Headers.Builder getActualBuilder() {
            return this.actualBuilder;
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
    }

    public LocalTimeFormat(CachedFormatStructure cachedFormatStructure) {
        this.actualFormat = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final CachedFormatStructure getActualFormat() {
        return this.actualFormat;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable getEmptyIntermediate() {
        return LocalTimeFormatKt.emptyIncompleteLocalTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable intermediateFromValue(LocalDateTime localDateTime) {
        IncompleteLocalTime incompleteLocalTime = new IncompleteLocalTime();
        incompleteLocalTime.populateFrom((LocalTime) localDateTime);
        return incompleteLocalTime;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object valueFromIntermediate(Copyable copyable) {
        IncompleteLocalTime incompleteLocalTime = (IncompleteLocalTime) copyable;
        incompleteLocalTime.getClass();
        return incompleteLocalTime.toLocalTime();
    }
}
