package kotlinx.datetime.format;

import j$.time.DateTimeException;
import j$.time.ZoneOffset;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.UtcOffsetJvmKt;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.io.Sink$CC;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtcOffsetFormat extends AbstractDateTimeFormat {
    public final CachedFormatStructure actualFormat;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder implements AbstractDateTimeFormatBuilder, DateTimeFormatBuilder {
        public final Headers.Builder actualBuilder;

        public Builder(Headers.Builder builder) {
            this.actualBuilder = builder;
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
    }

    public UtcOffsetFormat(CachedFormatStructure cachedFormatStructure) {
        this.actualFormat = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final CachedFormatStructure getActualFormat() {
        return this.actualFormat;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable getEmptyIntermediate() {
        return UtcOffsetFormatKt.emptyIncompleteUtcOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable intermediateFromValue(LocalDateTime localDateTime) {
        IncompleteUtcOffset incompleteUtcOffset = new IncompleteUtcOffset(null, null, null, null);
        ZoneOffset zoneOffset = ((UtcOffset) localDateTime).zoneOffset;
        incompleteUtcOffset.offsetIsNegative = Boolean.valueOf(zoneOffset.getTotalSeconds() < 0);
        int abs = Math.abs(zoneOffset.getTotalSeconds());
        incompleteUtcOffset.offsetHours = Integer.valueOf(abs / 3600);
        incompleteUtcOffset.offsetMinutesOfHour = Integer.valueOf((abs / 60) % 60);
        incompleteUtcOffset.offsetSecondsOfMinute = Integer.valueOf(abs % 60);
        return incompleteUtcOffset;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object valueFromIntermediate(Copyable copyable) {
        IncompleteUtcOffset incompleteUtcOffset = (IncompleteUtcOffset) copyable;
        incompleteUtcOffset.getClass();
        int i = Intrinsics.areEqual(incompleteUtcOffset.offsetIsNegative, Boolean.TRUE) ? -1 : 1;
        Integer num = incompleteUtcOffset.offsetHours;
        Integer valueOf = num != null ? Integer.valueOf(num.intValue() * i) : null;
        Integer num2 = incompleteUtcOffset.offsetMinutesOfHour;
        Integer valueOf2 = num2 != null ? Integer.valueOf(num2.intValue() * i) : null;
        Integer num3 = incompleteUtcOffset.offsetSecondsOfMinute;
        Integer valueOf3 = num3 != null ? Integer.valueOf(num3.intValue() * i) : null;
        SynchronizedLazyImpl synchronizedLazyImpl = UtcOffsetJvmKt.isoFormat$delegate;
        try {
            if (valueOf != null) {
                ZoneOffset ofHoursMinutesSeconds = ZoneOffset.ofHoursMinutesSeconds(valueOf.intValue(), valueOf2 != null ? valueOf2.intValue() : 0, valueOf3 != null ? valueOf3.intValue() : 0);
                ofHoursMinutesSeconds.getClass();
                return new UtcOffset(ofHoursMinutesSeconds);
            }
            if (valueOf2 != null) {
                ZoneOffset ofHoursMinutesSeconds2 = ZoneOffset.ofHoursMinutesSeconds(valueOf2.intValue() / 60, valueOf2.intValue() % 60, valueOf3 != null ? valueOf3.intValue() : 0);
                ofHoursMinutesSeconds2.getClass();
                return new UtcOffset(ofHoursMinutesSeconds2);
            }
            ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds(valueOf3 != null ? valueOf3.intValue() : 0);
            ofTotalSeconds.getClass();
            return new UtcOffset(ofTotalSeconds);
        } catch (DateTimeException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
