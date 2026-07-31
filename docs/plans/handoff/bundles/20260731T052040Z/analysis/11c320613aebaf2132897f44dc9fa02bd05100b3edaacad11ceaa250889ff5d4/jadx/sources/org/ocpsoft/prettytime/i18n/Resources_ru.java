package org.ocpsoft.prettytime.i18n;

import androidx.compose.ui.node.Owner;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.ListResourceBundle;
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
public class Resources_ru extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 0);
    private static final int russianPluralForms = 4;
    private static final int tolerance = 50;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class TimeFormatAided implements TimeFormat {
        private final String[] pluarls;

        public TimeFormatAided(String... strArr) {
            if (strArr.length == 4) {
                this.pluarls = strArr;
                return;
            }
            throw new IllegalArgumentException("Wrong plural forms number for russian language! Expected 4, got " + strArr.length + "\nPlurals: " + Arrays.toString(strArr));
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String decorate(Duration duration, String str) {
            if (!requiresReformatting(duration, true)) {
                return performDecoration(duration, str);
            }
            DurationImpl durationImpl = (DurationImpl) duration;
            return performDecoration(durationImpl, performFormat(Math.abs(durationImpl.getQuantityRounded(50)), false));
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String decorateUnrounded(Duration duration, String str) {
            return requiresReformatting(duration, false) ? performDecoration(duration, performFormat(Math.abs(((DurationImpl) duration).quantity), false)) : performDecoration(duration, str);
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String format(Duration duration) {
            return performFormat(Math.abs(((DurationImpl) duration).getQuantityRounded(50)), true);
        }

        @Override // org.ocpsoft.prettytime.TimeFormat
        public String formatUnrounded(Duration duration) {
            return performFormat(Math.abs(((DurationImpl) duration).quantity), true);
        }

        public String performDecoration(Duration duration, String str) {
            DurationImpl durationImpl = (DurationImpl) duration;
            return durationImpl.isInFuture() ? Owner.CC.m("через ", str) : durationImpl.isInPast() ? Owner.CC.m$1(str, " назад") : str;
        }

        public String performFormat(long j, boolean z) {
            int i;
            long j2 = j % 10;
            if (j2 != 1 || j % 100 == 11) {
                if (j2 >= 2 && j2 <= 4) {
                    long j3 = j % 100;
                    if (j3 < 10 || j3 >= 20) {
                        i = 1;
                    }
                }
                i = 2;
            } else {
                i = 0;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(String.valueOf(j));
            sb.append(' ');
            String[] strArr = this.pluarls;
            if (!z || i != 0) {
                i++;
            }
            sb.append(strArr[i]);
            return sb.toString();
        }

        public boolean requiresReformatting(Duration duration, boolean z) {
            return Math.abs(z ? ((DurationImpl) duration).getQuantityRounded(50) : ((DurationImpl) duration).quantity) == 1;
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof JustNow) {
            return new TimeFormat() { // from class: org.ocpsoft.prettytime.i18n.Resources_ru.1
                private String performFormat(Duration duration) {
                    DurationImpl durationImpl = (DurationImpl) duration;
                    if (durationImpl.isInFuture()) {
                        return "сейчас";
                    }
                    if (durationImpl.isInPast()) {
                        return "только что";
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
            return new TimeFormatAided("век", "век", "века", "веков");
        }
        if (timeUnit instanceof Day) {
            return new TimeFormatAided("день", "день", "дня", "дней");
        }
        if (timeUnit instanceof Decade) {
            return new TimeFormatAided("десятилетие", "десятилетие", "десятилетия", "десятилетий");
        }
        if (timeUnit instanceof Hour) {
            return new TimeFormatAided("час", "час", "часа", "часов");
        }
        if (timeUnit instanceof Millennium) {
            return new TimeFormatAided("тысячелетие", "тысячелетие", "тысячелетия", "тысячелетий");
        }
        if (timeUnit instanceof Millisecond) {
            return new TimeFormatAided("миллисекунда", "миллисекунду", "миллисекунды", "миллисекунд");
        }
        if (timeUnit instanceof Minute) {
            return new TimeFormatAided("минута", "минуту", "минуты", "минут");
        }
        if (timeUnit instanceof Month) {
            return new TimeFormatAided("месяц", "месяц", "месяца", "месяцев");
        }
        if (timeUnit instanceof Second) {
            return new TimeFormatAided("секунда", "секунду", "секунды", "секунд");
        }
        if (timeUnit instanceof Week) {
            return new TimeFormatAided("неделя", "неделю", "недели", "недель");
        }
        if (timeUnit instanceof Year) {
            return new TimeFormatAided("год", "год", "года", "лет");
        }
        return null;
    }
}
