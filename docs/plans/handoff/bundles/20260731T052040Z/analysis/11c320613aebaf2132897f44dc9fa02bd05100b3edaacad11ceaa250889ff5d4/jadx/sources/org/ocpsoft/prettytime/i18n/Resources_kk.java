package org.ocpsoft.prettytime.i18n;

import java.lang.reflect.Array;
import java.util.ListResourceBundle;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.impl.DurationImpl;
import org.ocpsoft.prettytime.impl.TimeFormatProvider;
import org.ocpsoft.prettytime.units.Century;
import org.ocpsoft.prettytime.units.Day;
import org.ocpsoft.prettytime.units.Decade;
import org.ocpsoft.prettytime.units.Hour;
import org.ocpsoft.prettytime.units.JustNow;
import org.ocpsoft.prettytime.units.Millennium;
import org.ocpsoft.prettytime.units.Millisecond;
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Second;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Resources_kk extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class KkTimeFormat implements TimeFormat {
        private final String[] forms;
        private final int tolerance = 50;

        public KkTimeFormat(String... strArr) {
            if (strArr.length == 2) {
                this.forms = strArr;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Future and past forms must be provided for kazakh language!");
                throw null;
            }
        }

        private String performDecoration(boolean z, boolean z2, long j, String str) {
            StringBuilder sb = new StringBuilder();
            int i = !z ? 1 : 0;
            sb.append(str);
            sb.append(' ');
            sb.append(this.forms[i]);
            sb.append(' ');
            if (z) {
                sb.append("бұрын");
            }
            if (z2) {
                sb.append("кейін");
            }
            return sb.toString();
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String decorate(Duration duration, String str) {
            DurationImpl durationImpl = (DurationImpl) duration;
            return performDecoration(durationImpl.isInPast(), durationImpl.isInFuture(), durationImpl.getQuantityRounded(50), str);
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String decorateUnrounded(Duration duration, String str) {
            DurationImpl durationImpl = (DurationImpl) duration;
            return performDecoration(durationImpl.isInPast(), durationImpl.isInFuture(), durationImpl.quantity, str);
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String format(Duration duration) {
            long quantityRounded = ((DurationImpl) duration).getQuantityRounded(50);
            StringBuilder sb = new StringBuilder();
            sb.append(quantityRounded);
            return sb.toString();
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String formatUnrounded(Duration duration) {
            long j = ((DurationImpl) duration).quantity;
            StringBuilder sb = new StringBuilder();
            sb.append(j);
            return sb.toString();
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof JustNow) {
            return new TimeFormat() { // from class: org.ocpsoft.prettytime.i18n.Resources_kk.1
                private String performFormat(Duration duration) {
                    DurationImpl durationImpl = (DurationImpl) duration;
                    if (durationImpl.isInFuture()) {
                        return "дәл қазір";
                    }
                    if (durationImpl.isInPast()) {
                        return "жана ғана";
                    }
                    return null;
                }

                @Override // org.ocpsoft.prettytime.TimeFormat
                public String format(Duration duration) {
                    return performFormat(duration);
                }

                @Override // org.ocpsoft.prettytime.TimeFormat
                public String formatUnrounded(Duration duration) {
                    return performFormat(duration);
                }

                @Override // org.ocpsoft.prettytime.TimeFormat
                public String decorate(Duration duration, String str) {
                    return str;
                }

                @Override // org.ocpsoft.prettytime.TimeFormat
                public String decorateUnrounded(Duration duration, String str) {
                    return str;
                }
            };
        }
        if (timeUnit instanceof Century) {
            return new KkTimeFormat("ғасыр", "ғасырдан");
        }
        if (timeUnit instanceof Day) {
            return new KkTimeFormat("күн", "күннен");
        }
        if (timeUnit instanceof Decade) {
            return new KkTimeFormat("онжылдық", "онжылдықтан");
        }
        if (timeUnit instanceof Hour) {
            return new KkTimeFormat("сағат", "сағаттан");
        }
        if (timeUnit instanceof Millennium) {
            return new KkTimeFormat("мыңжылдық", "мыңжылдықтан");
        }
        if (timeUnit instanceof Millisecond) {
            return new KkTimeFormat("миллисекунд", "миллисекундтан");
        }
        if (timeUnit instanceof Minute) {
            return new KkTimeFormat("минут", "минуттан");
        }
        if (timeUnit instanceof Month) {
            return new KkTimeFormat("ай", "айдан");
        }
        if (timeUnit instanceof Second) {
            return new KkTimeFormat("секунд", "секундтан");
        }
        if (timeUnit instanceof Week) {
            return new KkTimeFormat("апта", "аптадан");
        }
        if (timeUnit instanceof Year) {
            return new KkTimeFormat("жыл", "жылдан");
        }
        return null;
    }
}
