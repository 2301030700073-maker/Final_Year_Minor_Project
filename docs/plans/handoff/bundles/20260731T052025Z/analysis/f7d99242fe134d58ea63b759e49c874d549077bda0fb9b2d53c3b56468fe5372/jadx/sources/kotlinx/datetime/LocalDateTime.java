package kotlinx.datetime;

import j$.time.chrono.ChronoLocalDateTime;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.datetime.format.LocalDateTimeFormatKt;
import kotlinx.datetime.serializers.LocalDateTimeSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = LocalDateTimeSerializer.class)
/* loaded from: classes.dex */
public final class LocalDateTime implements Comparable<LocalDateTime>, java.io.Serializable {
    public static final Companion Companion = new Companion();
    public final j$.time.LocalDateTime value;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return LocalDateTimeSerializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Formats {
        public static final LocalDateTimeFormat ISO = (LocalDateTimeFormat) LocalDateTimeFormatKt.ISO_DATETIME$delegate.getValue();
    }

    static {
        j$.time.LocalDateTime localDateTime = j$.time.LocalDateTime.MIN;
        localDateTime.getClass();
        new LocalDateTime(localDateTime);
        j$.time.LocalDateTime localDateTime2 = j$.time.LocalDateTime.MAX;
        localDateTime2.getClass();
        new LocalDateTime(localDateTime2);
    }

    public LocalDateTime(LocalDate localDate, LocalTime localTime) {
        j$.time.LocalDateTime of = j$.time.LocalDateTime.of(localDate.value, localTime.value);
        of.getClass();
        this.value = of;
    }

    @Override // java.lang.Comparable
    public final int compareTo(LocalDateTime localDateTime) {
        LocalDateTime localDateTime2 = localDateTime;
        localDateTime2.getClass();
        return this.value.compareTo((ChronoLocalDateTime<?>) localDateTime2.value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            return Intrinsics.areEqual(this.value, ((LocalDateTime) obj).value);
        }
        return false;
    }

    public final LocalDate getDate() {
        j$.time.LocalDate e = this.value.e();
        e.getClass();
        return new LocalDate(e);
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        String localDateTime = this.value.toString();
        localDateTime.getClass();
        return localDateTime;
    }

    public LocalDateTime(j$.time.LocalDateTime localDateTime) {
        localDateTime.getClass();
        this.value = localDateTime;
    }
}
