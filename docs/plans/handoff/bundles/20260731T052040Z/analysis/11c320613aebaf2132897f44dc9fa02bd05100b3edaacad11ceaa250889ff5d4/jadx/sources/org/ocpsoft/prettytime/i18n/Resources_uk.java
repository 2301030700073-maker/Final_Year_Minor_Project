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
public class Resources_uk extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);
    private static final int slavicPluralForms = 3;
    private static final int tolerance = 50;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class TimeFormatAided implements TimeFormat {
        private final String[] pluarls;

        public TimeFormatAided(String... strArr) {
            if (strArr.length == 3) {
                this.pluarls = strArr;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Wrong plural forms number for slavic language!");
                throw null;
            }
        }

        private String performDecoration(boolean z, boolean z2, long j, String str) {
            char c;
            long j2 = j % 10;
            if (j2 != 1 || j % 100 == 11) {
                if (j2 >= 2 && j2 <= 4) {
                    long j3 = j % 100;
                    if (j3 < 10 || j3 >= 20) {
                        c = 1;
                    }
                }
                c = 2;
            } else {
                c = 0;
            }
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append("через ");
            }
            sb.append(str);
            sb.append(' ');
            sb.append(this.pluarls[c]);
            if (z) {
                sb.append(" тому");
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
            return performDecoration(durationImpl.isInPast(), durationImpl.isInFuture(), Math.abs(durationImpl.quantity), str);
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
            long abs = Math.abs(((DurationImpl) duration).quantity);
            StringBuilder sb = new StringBuilder();
            sb.append(abs);
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
            return new TimeFormat() { // from class: org.ocpsoft.prettytime.i18n.Resources_uk.1
                private String performFormat(Duration duration) {
                    DurationImpl durationImpl = (DurationImpl) duration;
                    if (durationImpl.isInFuture()) {
                        return "зараз";
                    }
                    if (durationImpl.isInPast()) {
                        return "щойно";
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
            return new TimeFormatAided("століття", "століття", "столітть");
        }
        if (timeUnit instanceof Day) {
            return new TimeFormatAided("день", "дні", "днів");
        }
        if (timeUnit instanceof Decade) {
            return new TimeFormatAided("десятиліття", "десятиліття", "десятиліть");
        }
        if (timeUnit instanceof Hour) {
            return new TimeFormatAided("годину", "години", "годин");
        }
        if (timeUnit instanceof Millennium) {
            return new TimeFormatAided("тисячоліття", "тисячоліття", "тисячоліть");
        }
        if (timeUnit instanceof Millisecond) {
            return new TimeFormatAided("мілісекунду", "мілісекунди", "мілісекунд");
        }
        if (timeUnit instanceof Minute) {
            return new TimeFormatAided("хвилину", "хвилини", "хвилин");
        }
        if (timeUnit instanceof Month) {
            return new TimeFormatAided("місяць", "місяці", "місяців");
        }
        if (timeUnit instanceof Second) {
            return new TimeFormatAided("секунду", "секунди", "секунд");
        }
        if (timeUnit instanceof Week) {
            return new TimeFormatAided("тиждень", "тижні", "тижнів");
        }
        if (timeUnit instanceof Year) {
            return new TimeFormatAided("рік", "роки", "років");
        }
        return null;
    }
}
