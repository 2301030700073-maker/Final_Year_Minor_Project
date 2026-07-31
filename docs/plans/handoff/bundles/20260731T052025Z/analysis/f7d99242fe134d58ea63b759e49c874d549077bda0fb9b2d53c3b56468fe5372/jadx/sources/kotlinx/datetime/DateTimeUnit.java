package kotlinx.datetime;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlinx.datetime.internal.MathKt;
import kotlinx.datetime.serializers.DateBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.DateTimeUnitSerializer;
import kotlinx.datetime.serializers.DayBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.MonthBasedDateTimeUnitSerializer;
import kotlinx.datetime.serializers.TimeBasedDateTimeUnitSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Serializable(with = DateTimeUnitSerializer.class)
/* loaded from: classes.dex */
public abstract class DateTimeUnit {
    public static final Companion Companion = new Companion();
    public static final DayBased DAY;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final KSerializer serializer() {
            return DateTimeUnitSerializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable(with = DateBasedDateTimeUnitSerializer.class)
    public abstract class DateBased extends DateTimeUnit {
        public static final Companion Companion = new Companion();

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return DateBasedDateTimeUnitSerializer.INSTANCE;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable(with = DayBasedDateTimeUnitSerializer.class)
    public final class DayBased extends DateBased {
        public static final Companion Companion = new Companion();
        public final int days;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return DayBasedDateTimeUnitSerializer.INSTANCE;
            }
        }

        public DayBased(int i) {
            this.days = i;
            if (i > 0) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Unit duration must be positive, but was ", " days."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DayBased) {
                return this.days == ((DayBased) obj).days;
            }
            return false;
        }

        public final int hashCode() {
            return this.days ^ 65536;
        }

        public final String toString() {
            int i = this.days;
            return i % 7 == 0 ? DateTimeUnit.formatToString("WEEK", i / 7) : DateTimeUnit.formatToString("DAY", i);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable(with = MonthBasedDateTimeUnitSerializer.class)
    public final class MonthBased extends DateBased {
        public static final Companion Companion = new Companion();
        public final int months;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return MonthBasedDateTimeUnitSerializer.INSTANCE;
            }
        }

        public MonthBased(int i) {
            this.months = i;
            if (i > 0) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Unit duration must be positive, but was ", " months."));
            throw null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MonthBased) {
                return this.months == ((MonthBased) obj).months;
            }
            return false;
        }

        public final int hashCode() {
            return this.months ^ 131072;
        }

        public final String toString() {
            int i = this.months;
            return i % 1200 == 0 ? DateTimeUnit.formatToString("CENTURY", i / 1200) : i % 12 == 0 ? DateTimeUnit.formatToString("YEAR", i / 12) : i % 3 == 0 ? DateTimeUnit.formatToString("QUARTER", i / 3) : DateTimeUnit.formatToString("MONTH", i);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    @Serializable(with = TimeBasedDateTimeUnitSerializer.class)
    public final class TimeBased extends DateTimeUnit {
        public static final Companion Companion = new Companion();
        public final long nanoseconds;
        public final String unitName;
        public final long unitScale;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Companion {
            public final KSerializer serializer() {
                return TimeBasedDateTimeUnitSerializer.INSTANCE;
            }
        }

        public TimeBased(long j) {
            this.nanoseconds = j;
            if (j <= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Unit duration must be positive, but was ", j, " ns.");
                throw null;
            }
            if (j % 3600000000000L == 0) {
                this.unitName = "HOUR";
                this.unitScale = j / 3600000000000L;
                return;
            }
            if (j % 60000000000L == 0) {
                this.unitName = "MINUTE";
                this.unitScale = j / 60000000000L;
                return;
            }
            if (j % 1000000000 == 0) {
                this.unitName = "SECOND";
                this.unitScale = j / 1000000000;
            } else if (j % 1000000 == 0) {
                this.unitName = "MILLISECOND";
                this.unitScale = j / 1000000;
            } else if (j % 1000 == 0) {
                this.unitName = "MICROSECOND";
                this.unitScale = j / 1000;
            } else {
                this.unitName = "NANOSECOND";
                this.unitScale = j;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TimeBased) {
                return this.nanoseconds == ((TimeBased) obj).nanoseconds;
            }
            return false;
        }

        public final int hashCode() {
            long j = this.nanoseconds;
            return ((int) j) ^ ((int) (j >> 32));
        }

        public final TimeBased times(int i) {
            return new TimeBased(MathKt.safeMultiply(this.nanoseconds, i));
        }

        public final String toString() {
            String str = this.unitName;
            str.getClass();
            long j = this.unitScale;
            if (j == 1) {
                return str;
            }
            return j + '-' + str;
        }
    }

    static {
        new TimeBased(1L).times(1000).times(1000).times(1000).times(60).times(60);
        DAY = new DayBased(1);
        new DayBased(7);
        new MonthBased(1);
        long j = 1 * 3;
        int i = (int) j;
        if (j != i) {
            throw new ArithmeticException();
        }
        new MonthBased(i);
        long j2 = 1 * 12;
        int i2 = (int) j2;
        if (j2 != i2) {
            throw new ArithmeticException();
        }
        new MonthBased(i2);
        long j3 = i2 * 100;
        int i3 = (int) j3;
        if (j3 != i3) {
            throw new ArithmeticException();
        }
        new MonthBased(i3);
    }

    public static String formatToString(String str, int i) {
        if (i == 1) {
            return str;
        }
        return i + '-' + str;
    }
}
