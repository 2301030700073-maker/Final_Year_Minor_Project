package kotlinx.datetime;

import j$.time.DateTimeException;
import j$.time.chrono.ChronoLocalDate;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.LocalDateSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = LocalDateSerializer.class)
/* loaded from: classes.dex */
public final class LocalDate implements Comparable<LocalDate>, java.io.Serializable {
    public static final Companion Companion = new Companion();
    public final j$.time.LocalDate value;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return LocalDateSerializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Formats {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
        }
    }

    static {
        j$.time.LocalDate localDate = j$.time.LocalDate.MIN;
        localDate.getClass();
        new LocalDate(localDate);
        j$.time.LocalDate localDate2 = j$.time.LocalDate.MAX;
        localDate2.getClass();
        new LocalDate(localDate2);
    }

    public LocalDate(int i, int i2, int i3) {
        try {
            j$.time.LocalDate of = j$.time.LocalDate.of(i, i2, i3);
            of.getClass();
            this.value = of;
        } catch (DateTimeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(LocalDate localDate) {
        LocalDate localDate2 = localDate;
        localDate2.getClass();
        return this.value.compareTo((ChronoLocalDate) localDate2.value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDate) {
            return Intrinsics.areEqual(this.value, ((LocalDate) obj).value);
        }
        return false;
    }

    public final DayOfWeek getDayOfWeek() {
        this.value.getDayOfWeek().getClass();
        return (DayOfWeek) DayOfWeek.$ENTRIES.get(r1.getValue() - 1);
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        String localDate = this.value.toString();
        localDate.getClass();
        return localDate;
    }

    public LocalDate(j$.time.LocalDate localDate) {
        localDate.getClass();
        this.value = localDate;
    }
}
