package kotlinx.datetime;

import j$.time.DateTimeException;
import j$.time.format.DateTimeFormatter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.YearMonthSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = YearMonthSerializer.class)
/* loaded from: classes.dex */
public final class YearMonth implements Comparable<YearMonth>, java.io.Serializable {
    public static final Companion Companion = new Companion();
    public final j$.time.YearMonth value;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return YearMonthSerializer.INSTANCE;
        }
    }

    public YearMonth(int i, int i2) {
        try {
            j$.time.YearMonth of = j$.time.YearMonth.of(i, i2);
            of.getClass();
            this.value = of;
        } catch (DateTimeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        yearMonth2.getClass();
        return this.value.compareTo(yearMonth2.value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            return Intrinsics.areEqual(this.value, ((YearMonth) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        return this.value.hashCode();
    }

    public final String toString() {
        String format = ((DateTimeFormatter) YearMonthJvmKt.isoFormat$delegate.getValue()).format(this.value);
        format.getClass();
        return format;
    }

    public YearMonth(j$.time.YearMonth yearMonth) {
        yearMonth.getClass();
        this.value = yearMonth;
    }
}
