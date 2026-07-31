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
public class Resources_pl extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);
    private static final int polishPluralForms = 3;
    private static final int tolerance = 50;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class TimeFormatAided implements TimeFormat {
        private final String[] plurals;

        public TimeFormatAided(String... strArr) {
            if (strArr.length == 3) {
                this.plurals = strArr;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Wrong plural forms number for Polish language!");
                throw null;
            }
        }

        private String performDecoration(boolean z, boolean z2, long j, String str) {
            char c;
            if (j == 1) {
                c = 0;
            } else {
                long j2 = j % 10;
                if (j2 >= 2 && j2 <= 4) {
                    long j3 = j % 100;
                    if (j3 < 10 || j3 >= 20) {
                        c = 1;
                    }
                }
                c = 2;
            }
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append("za ");
            }
            sb.append(str);
            sb.append(' ');
            sb.append(this.plurals[c]);
            if (z) {
                sb.append(" temu");
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
            return String.valueOf(((DurationImpl) duration).getQuantityRounded(50));
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String formatUnrounded(Duration duration) {
            return String.valueOf(Math.abs(((DurationImpl) duration).quantity));
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof JustNow) {
            return new TimeFormat() { // from class: org.ocpsoft.prettytime.i18n.Resources_pl.1
                private String performFormat(Duration duration) {
                    DurationImpl durationImpl = (DurationImpl) duration;
                    if (durationImpl.isInFuture()) {
                        return "za chwilę";
                    }
                    if (durationImpl.isInPast()) {
                        return "przed chwilą";
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
            return new TimeFormatAided("wiek", "wieki", "wieków");
        }
        if (timeUnit instanceof Day) {
            return new TimeFormatAided("dzień", "dni", "dni");
        }
        if (timeUnit instanceof Decade) {
            return new TimeFormatAided("dekadę", "dekady", "dekad");
        }
        if (timeUnit instanceof Hour) {
            return new TimeFormatAided("godzinę", "godziny", "godzin");
        }
        if (timeUnit instanceof Millennium) {
            return new TimeFormatAided("milenium", "milenia", "mileniów");
        }
        if (timeUnit instanceof Millisecond) {
            return new TimeFormatAided("milisekundę", "milisekundy", "milisekund");
        }
        if (timeUnit instanceof Minute) {
            return new TimeFormatAided("minutę", "minuty", "minut");
        }
        if (timeUnit instanceof Month) {
            return new TimeFormatAided("miesiąc", "miesiące", "miesięcy");
        }
        if (timeUnit instanceof Second) {
            return new TimeFormatAided("sekundę", "sekundy", "sekund");
        }
        if (timeUnit instanceof Week) {
            return new TimeFormatAided("tydzień", "tygodnie", "tygodni");
        }
        if (timeUnit instanceof Year) {
            return new TimeFormatAided("rok", "lata", "lat");
        }
        return null;
    }
}
