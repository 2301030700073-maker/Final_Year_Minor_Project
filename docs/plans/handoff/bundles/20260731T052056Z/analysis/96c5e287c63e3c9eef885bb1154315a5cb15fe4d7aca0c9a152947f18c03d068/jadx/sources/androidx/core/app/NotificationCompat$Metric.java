package androidx.core.app;

import android.os.Bundle;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.work.Operation$State;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.temporal.ChronoUnit;
import j$.util.Objects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$Metric {
    public final String mLabel;
    public final int mSemanticStyle;
    public final MetricValue mValue;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FixedDate extends MetricValue {
        public final int mFormat;
        public final LocalDate mValue;

        public FixedDate(LocalDate localDate, int i) {
            this.mValue = localDate;
            Operation$State.checkArgument(i >= 0 && i <= 2, "Invalid format: %s", Integer.valueOf(i));
            this.mFormat = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedDate)) {
                return false;
            }
            FixedDate fixedDate = (FixedDate) obj;
            if (this == fixedDate) {
                return true;
            }
            return this.mValue.equals(fixedDate.mValue) && this.mFormat == fixedDate.mFormat;
        }

        public final int hashCode() {
            return Objects.hash(this.mValue, Integer.valueOf(this.mFormat));
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            bundle.putLong("value", this.mValue.toEpochDay());
            bundle.putInt("format", this.mFormat);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(FixedDate.class.getSimpleName());
            sb.append("{mValue=");
            sb.append(this.mValue);
            sb.append(", mFormat=");
            return Modifier.CC.m(sb, this.mFormat, "}");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FixedFloat extends MetricValue {
        public final int mMaxFractionDigits;
        public final int mMinFractionDigits;
        public final String mUnit;
        public final float mValue;

        public FixedFloat(float f, String str, int i, int i2) {
            this.mValue = f;
            this.mUnit = NotificationCompat$Builder.safeCharSequenceToString(str);
            Operation$State.checkArgument(i >= 0 && i <= 6, "Invalid minFractionDigits: %s", Integer.valueOf(i));
            Operation$State.checkArgument(i2 >= 0 && i2 <= 6, "Invalid maxFractionDigits: %s", Integer.valueOf(i2));
            Operation$State.checkArgument(i <= i2, "Invalid minFractionDigits/maxFractionDigits: %s/%s", Integer.valueOf(i), Integer.valueOf(i2));
            this.mMinFractionDigits = i;
            this.mMaxFractionDigits = i2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedFloat)) {
                return false;
            }
            FixedFloat fixedFloat = (FixedFloat) obj;
            if (this == fixedFloat) {
                return true;
            }
            return this.mValue == fixedFloat.mValue && Objects.equals(this.mUnit, fixedFloat.mUnit) && this.mMinFractionDigits == fixedFloat.mMinFractionDigits && this.mMaxFractionDigits == fixedFloat.mMaxFractionDigits;
        }

        public final int hashCode() {
            return Objects.hash(Float.valueOf(this.mValue), this.mUnit, Integer.valueOf(this.mMinFractionDigits), Integer.valueOf(this.mMaxFractionDigits));
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            bundle.putFloat("value", this.mValue);
            bundle.putString("unit", this.mUnit);
            bundle.putInt("minDigits", this.mMinFractionDigits);
            bundle.putInt("maxDigits", this.mMaxFractionDigits);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(FixedFloat.class.getSimpleName());
            sb.append("{mValue=");
            sb.append(this.mValue);
            sb.append(", mUnit=");
            sb.append(this.mUnit);
            sb.append(", mMinFractionDigits=");
            sb.append(this.mMinFractionDigits);
            sb.append(", mMaxFractionDigits=");
            return Modifier.CC.m(sb, this.mMaxFractionDigits, "}");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FixedInt extends MetricValue {
        public final String mUnit;
        public final int mValue;

        public FixedInt(int i, String str) {
            this.mValue = i;
            this.mUnit = NotificationCompat$Builder.safeCharSequenceToString(str);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedInt)) {
                return false;
            }
            FixedInt fixedInt = (FixedInt) obj;
            if (this == fixedInt) {
                return true;
            }
            return this.mValue == fixedInt.mValue && Objects.equals(this.mUnit, fixedInt.mUnit);
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.mValue), this.mUnit);
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            bundle.putInt("value", this.mValue);
            bundle.putString("unit", this.mUnit);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(FixedInt.class.getSimpleName());
            sb.append("{mValue=");
            sb.append(this.mValue);
            sb.append(", mUnit=");
            return Animation.CC.m(sb, this.mUnit, "}");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FixedText extends MetricValue {
        public final String mUnit;
        public final String mValue;

        public FixedText(String str, String str2) {
            Objects.requireNonNull(str);
            this.mValue = NotificationCompat$Builder.safeCharSequenceToString(str);
            this.mUnit = NotificationCompat$Builder.safeCharSequenceToString(str2);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedText)) {
                return false;
            }
            FixedText fixedText = (FixedText) obj;
            if (this == fixedText) {
                return true;
            }
            return Objects.equals(this.mValue, fixedText.mValue) && Objects.equals(this.mUnit, fixedText.mUnit);
        }

        public final int hashCode() {
            return Objects.hash(this.mValue, this.mUnit);
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            bundle.putString("value", this.mValue);
            bundle.putString("unit", this.mUnit);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(FixedText.class.getSimpleName());
            sb.append("{mValue=");
            sb.append(this.mValue);
            sb.append(", mUnit=");
            return Animation.CC.m(sb, this.mUnit, "}");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FixedTime extends MetricValue {
        public final LocalTime mValue;

        public FixedTime(LocalTime localTime) {
            this.mValue = localTime.truncatedTo(ChronoUnit.SECONDS);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof FixedTime)) {
                return false;
            }
            FixedTime fixedTime = (FixedTime) obj;
            if (this == fixedTime) {
                return true;
            }
            return Objects.equals(this.mValue, fixedTime.mValue);
        }

        public final int hashCode() {
            return Objects.hash(this.mValue);
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            bundle.putLong("value", this.mValue.toSecondOfDay());
        }

        public final String toString() {
            return FixedTime.class.getSimpleName() + "{mValue=" + this.mValue + "}";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class MetricValue {
        public abstract void toBundle(Bundle bundle);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TimeDifference extends MetricValue {
        public final boolean mCountDown;
        public final int mFormat;
        public final Duration mPausedDuration;
        public final Long mZeroElapsedRealtime;
        public final Instant mZeroTime;

        public TimeDifference(Instant instant, Long l, Duration duration, boolean z, int i) {
            Operation$State.checkArgument(((instant != null ? 1 : 0) + (l != null ? 1 : 0)) + (duration != null ? 1 : 0) == 1, "Exactly one of zeroTime, zeroElapsedRealtime, or pausedDuration must be present; received %s,%s,%s", instant, l, duration);
            Operation$State.checkArgument(i >= 1 && i <= 2, "Invalid format: %s", Integer.valueOf(i));
            this.mZeroTime = instant;
            this.mZeroElapsedRealtime = l;
            this.mPausedDuration = duration;
            this.mCountDown = z;
            this.mFormat = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof TimeDifference)) {
                return false;
            }
            TimeDifference timeDifference = (TimeDifference) obj;
            if (this == timeDifference) {
                return true;
            }
            return Objects.equals(this.mZeroTime, timeDifference.mZeroTime) && Objects.equals(this.mZeroElapsedRealtime, timeDifference.mZeroElapsedRealtime) && Objects.equals(this.mPausedDuration, timeDifference.mPausedDuration) && this.mCountDown == timeDifference.mCountDown && this.mFormat == timeDifference.mFormat;
        }

        public final int hashCode() {
            return Objects.hash(this.mZeroTime, this.mZeroElapsedRealtime, this.mPausedDuration, Boolean.valueOf(this.mCountDown), Integer.valueOf(this.mFormat));
        }

        @Override // androidx.core.app.NotificationCompat$Metric.MetricValue
        public final void toBundle(Bundle bundle) {
            Instant instant = this.mZeroTime;
            if (instant != null) {
                bundle.putLong("zeroTime", instant.toEpochMilli());
            } else {
                Long l = this.mZeroElapsedRealtime;
                if (l != null) {
                    bundle.putLong("zeroElapsedRealtime", l.longValue());
                } else {
                    Duration duration = this.mPausedDuration;
                    if (duration != null) {
                        bundle.putLong("pausedDuration", duration.toMillis());
                    }
                }
            }
            bundle.putBoolean("countDown", this.mCountDown);
            bundle.putInt("format", this.mFormat);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TimeDifference{");
            Instant instant = this.mZeroTime;
            if (instant != null) {
                sb.append("mZeroTime=");
                sb.append(instant);
            } else {
                Long l = this.mZeroElapsedRealtime;
                if (l != null) {
                    sb.append("mZeroElapsedRealtime=");
                    sb.append(l);
                } else {
                    Duration duration = this.mPausedDuration;
                    if (duration != null) {
                        sb.append("mPausedDuration=");
                        sb.append(duration);
                    }
                }
            }
            sb.append(", mCountDown=");
            sb.append(this.mCountDown);
            sb.append(", mFormat=");
            return Modifier.CC.m(sb, this.mFormat, "}");
        }
    }

    public NotificationCompat$Metric(MetricValue metricValue, String str, int i) {
        this.mValue = metricValue;
        Objects.requireNonNull(str);
        String safeCharSequenceToString = NotificationCompat$Builder.safeCharSequenceToString(str);
        this.mLabel = safeCharSequenceToString;
        int length = safeCharSequenceToString.length();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = true;
                break;
            }
            int codePointAt = safeCharSequenceToString.codePointAt(i2);
            if (!Character.isWhitespace(codePointAt)) {
                break;
            } else {
                i2 += Character.charCount(codePointAt);
            }
        }
        Operation$State.checkArgument("Metric label is required", !z);
        this.mSemanticStyle = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NotificationCompat$Metric)) {
            return false;
        }
        NotificationCompat$Metric notificationCompat$Metric = (NotificationCompat$Metric) obj;
        if (this == notificationCompat$Metric) {
            return true;
        }
        return this.mValue.equals(notificationCompat$Metric.mValue) && Objects.equals(this.mLabel, notificationCompat$Metric.mLabel) && this.mSemanticStyle == notificationCompat$Metric.mSemanticStyle;
    }

    public final int hashCode() {
        return Objects.hash(this.mValue, this.mLabel, Integer.valueOf(this.mSemanticStyle));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Metric{mValue=");
        sb.append(this.mValue);
        sb.append(", mLabel=");
        sb.append(this.mLabel);
        sb.append(", mSemanticStyle=");
        return Modifier.CC.m(sb, this.mSemanticStyle, "}");
    }
}
