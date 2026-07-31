package androidx.core.app;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.core.app.NotificationCompat$Metric;
import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.time.Duration;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.TimeConversions;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationCompat$MetricStyle extends NotificationCompat$Style {
    public final ArrayList mMetrics = new ArrayList();
    public int mCriticalMetric = 0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Api37Impl {
        private static Notification.Metric toPlatformMetric(NotificationCompat$Metric notificationCompat$Metric) {
            return new Notification.Metric(toPlatformMetricValue(notificationCompat$Metric.mValue), notificationCompat$Metric.mLabel, notificationCompat$Metric.mSemanticStyle);
        }

        private static Notification.Metric.MetricValue toPlatformMetricValue(NotificationCompat$Metric.MetricValue metricValue) {
            Notification.Metric.MetricValue forPausedStopwatch;
            Notification.Metric.MetricValue forPausedTimer;
            Notification.Metric.MetricValue forStopwatch;
            Notification.Metric.MetricValue forTimer;
            if (!(metricValue instanceof NotificationCompat$Metric.TimeDifference)) {
                if (metricValue instanceof NotificationCompat$Metric.FixedDate) {
                    NotificationCompat$Metric.FixedDate fixedDate = (NotificationCompat$Metric.FixedDate) metricValue;
                    return new Notification.Metric.FixedDate(TimeConversions.convert(fixedDate.mValue), fixedDate.mFormat);
                }
                if (metricValue instanceof NotificationCompat$Metric.FixedFloat) {
                    NotificationCompat$Metric.FixedFloat fixedFloat = (NotificationCompat$Metric.FixedFloat) metricValue;
                    return new Notification.Metric.FixedFloat(fixedFloat.mValue, fixedFloat.mUnit, fixedFloat.mMinFractionDigits, fixedFloat.mMaxFractionDigits);
                }
                if (metricValue instanceof NotificationCompat$Metric.FixedInt) {
                    NotificationCompat$Metric.FixedInt fixedInt = (NotificationCompat$Metric.FixedInt) metricValue;
                    return new Notification.Metric.FixedInt(fixedInt.mValue, fixedInt.mUnit);
                }
                if (metricValue instanceof NotificationCompat$Metric.FixedText) {
                    NotificationCompat$Metric.FixedText fixedText = (NotificationCompat$Metric.FixedText) metricValue;
                    return new Notification.Metric.FixedText(fixedText.mValue, fixedText.mUnit);
                }
                if (metricValue instanceof NotificationCompat$Metric.FixedTime) {
                    return new Notification.Metric.FixedTime(TimeConversions.convert(((NotificationCompat$Metric.FixedTime) metricValue).mValue));
                }
                Gson$$ExternalSyntheticBUOutline0.m("Unexpected MetricValue: ", metricValue);
                return null;
            }
            NotificationCompat$Metric.TimeDifference timeDifference = (NotificationCompat$Metric.TimeDifference) metricValue;
            boolean z = timeDifference.mCountDown;
            int i = timeDifference.mFormat;
            Instant instant = timeDifference.mZeroTime;
            if (instant != null) {
                if (z) {
                    forTimer = Notification.Metric.TimeDifference.forTimer(TimeConversions.convert(instant), i);
                    return forTimer;
                }
                forStopwatch = Notification.Metric.TimeDifference.forStopwatch(TimeConversions.convert(instant), i);
                return forStopwatch;
            }
            Long l = timeDifference.mZeroElapsedRealtime;
            if (l != null) {
                return z ? Notification.Metric.TimeDifference.forTimer(l.longValue(), i) : Notification.Metric.TimeDifference.forStopwatch(l.longValue(), i);
            }
            Duration duration = timeDifference.mPausedDuration;
            if (duration == null) {
                Gson$$ExternalSyntheticBUOutline0.m("Unexpected TimeDifference: ", timeDifference);
                return null;
            }
            if (z) {
                forPausedTimer = Notification.Metric.TimeDifference.forPausedTimer(TimeConversions.convert(duration), i);
                return forPausedTimer;
            }
            forPausedStopwatch = Notification.Metric.TimeDifference.forPausedStopwatch(TimeConversions.convert(duration), i);
            return forPausedStopwatch;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Notification.Style toPlatformStyle(NotificationCompat$MetricStyle notificationCompat$MetricStyle) {
            Notification.Style metricStyle = new Notification.MetricStyle();
            ArrayList arrayList = notificationCompat$MetricStyle.mMetrics;
            Iterator it = DesugarCollections.unmodifiableList(arrayList).iterator();
            while (it.hasNext()) {
                metricStyle.addMetric(toPlatformMetric((NotificationCompat$Metric) it.next()));
            }
            List unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
            int i = notificationCompat$MetricStyle.mCriticalMetric;
            metricStyle.setCriticalMetric(unmodifiableList.indexOf((i < 0 || i >= arrayList.size()) ? null : (NotificationCompat$Metric) arrayList.get(notificationCompat$MetricStyle.mCriticalMetric)));
            return metricStyle;
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
        if (Build.VERSION.SDK_INT >= 37) {
            return;
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it = this.mMetrics.iterator();
        while (it.hasNext()) {
            NotificationCompat$Metric notificationCompat$Metric = (NotificationCompat$Metric) it.next();
            Bundle bundle2 = new Bundle();
            NotificationCompat$Metric.MetricValue metricValue = notificationCompat$Metric.mValue;
            Bundle bundle3 = new Bundle();
            if (metricValue instanceof NotificationCompat$Metric.TimeDifference) {
                bundle3.putInt("_type", 1);
            } else if (metricValue instanceof NotificationCompat$Metric.FixedDate) {
                bundle3.putInt("_type", 2);
            } else if (metricValue instanceof NotificationCompat$Metric.FixedTime) {
                bundle3.putInt("_type", 3);
            } else if (metricValue instanceof NotificationCompat$Metric.FixedInt) {
                bundle3.putInt("_type", 4);
            } else if (metricValue instanceof NotificationCompat$Metric.FixedFloat) {
                bundle3.putInt("_type", 5);
            } else {
                if (!(metricValue instanceof NotificationCompat$Metric.FixedText)) {
                    VisualTransformation$Companion$$ExternalSyntheticLambda0.m("Impossible MetricValue subclass: ", metricValue);
                    return;
                }
                bundle3.putInt("_type", 6);
            }
            metricValue.toBundle(bundle3);
            bundle2.putBundle("value", bundle3);
            bundle2.putString("label", notificationCompat$Metric.mLabel);
            bundle2.putInt("semanticStyle", notificationCompat$Metric.mSemanticStyle);
            arrayList.add(bundle2);
        }
        bundle.putParcelableArrayList("android.metrics", arrayList);
        bundle.putInt("android.metrics.criticalIndex", this.mCriticalMetric);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(Dispatcher dispatcher) {
        if (this.mMetrics.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("A MetricStyle must have at least one Metric");
        } else if (Build.VERSION.SDK_INT >= 37) {
            ((Notification.Builder) dispatcher.readyAsyncCalls).setStyle(Api37Impl.toPlatformStyle(this));
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.metrics");
        bundle.remove("android.metrics.criticalIndex");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof NotificationCompat$MetricStyle)) {
            return false;
        }
        NotificationCompat$MetricStyle notificationCompat$MetricStyle = (NotificationCompat$MetricStyle) obj;
        if (this == notificationCompat$MetricStyle) {
            return true;
        }
        return this.mMetrics.equals(notificationCompat$MetricStyle.mMetrics) && this.mCriticalMetric == notificationCompat$MetricStyle.mCriticalMetric;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$MetricStyle";
    }

    public final int hashCode() {
        return Objects.hash(this.mMetrics, Integer.valueOf(this.mCriticalMetric));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        NotificationCompat$Metric.MetricValue timeDifference;
        super.restoreFromCompatExtras(bundle);
        ArrayList arrayList = this.mMetrics;
        arrayList.clear();
        ArrayList parcelableArrayList = Room.getParcelableArrayList(bundle, "android.metrics", Bundle.class);
        if (parcelableArrayList != null) {
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                Bundle bundle2 = (Bundle) it.next();
                if (bundle2 != null) {
                    Bundle bundle3 = bundle2.getBundle("value");
                    NotificationCompat$Metric notificationCompat$Metric = null;
                    if (bundle3 != null) {
                        switch (bundle3.getInt("_type")) {
                            case 1:
                                Instant ofEpochMilli = bundle3.containsKey("zeroTime") ? Instant.ofEpochMilli(bundle3.getLong("zeroTime")) : null;
                                Long valueOf = bundle3.containsKey("zeroElapsedRealtime") ? Long.valueOf(bundle3.getLong("zeroElapsedRealtime")) : null;
                                Duration ofMillis = bundle3.containsKey("pausedDuration") ? Duration.ofMillis(bundle3.getLong("pausedDuration")) : null;
                                if (ofEpochMilli != null || valueOf != null || ofMillis != null) {
                                    timeDifference = new NotificationCompat$Metric.TimeDifference(ofEpochMilli, valueOf, ofMillis, bundle3.getBoolean("countDown"), bundle3.getInt("format"));
                                    break;
                                }
                                timeDifference = null;
                                break;
                            case 2:
                                LocalDate ofEpochDay = bundle3.containsKey("value") ? LocalDate.ofEpochDay(bundle3.getLong("value")) : null;
                                if (ofEpochDay != null) {
                                    timeDifference = new NotificationCompat$Metric.FixedDate(ofEpochDay, bundle3.getInt("format", 0));
                                    break;
                                }
                                timeDifference = null;
                                break;
                            case 3:
                                LocalTime ofSecondOfDay = bundle3.containsKey("value") ? LocalTime.ofSecondOfDay(bundle3.getLong("value")) : null;
                                if (ofSecondOfDay != null) {
                                    timeDifference = new NotificationCompat$Metric.FixedTime(ofSecondOfDay);
                                    break;
                                }
                                timeDifference = null;
                                break;
                            case 4:
                                timeDifference = new NotificationCompat$Metric.FixedInt(bundle3.getInt("value"), bundle3.getString("unit"));
                                break;
                            case 5:
                                timeDifference = new NotificationCompat$Metric.FixedFloat(bundle3.getFloat("value"), bundle3.getString("unit"), bundle3.getInt("minDigits", 0), bundle3.getInt("maxDigits", 2));
                                break;
                            case 6:
                                timeDifference = new NotificationCompat$Metric.FixedText(bundle3.getString("value", ""), bundle3.getString("unit"));
                                break;
                            default:
                                timeDifference = null;
                                break;
                        }
                        if (timeDifference != null) {
                            notificationCompat$Metric = new NotificationCompat$Metric(timeDifference, bundle2.getString("label"), bundle2.getInt("semanticStyle", 0));
                        }
                    }
                    if (notificationCompat$Metric != null) {
                        arrayList.add(notificationCompat$Metric);
                    }
                }
            }
        }
        this.mCriticalMetric = bundle.getInt("android.metrics.criticalIndex", 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MetricStyle{mMetrics=");
        sb.append(this.mMetrics);
        sb.append(", mCriticalMetric=");
        return Modifier.CC.m(sb, this.mCriticalMetric, "}");
    }
}
