package org.ocpsoft.prettytime.i18n;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListResourceBundle;
import java.util.ResourceBundle;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.format.SimpleTimeFormat;
import org.ocpsoft.prettytime.impl.DurationImpl;
import org.ocpsoft.prettytime.impl.TimeFormatProvider;
import org.ocpsoft.prettytime.units.Day;
import org.ocpsoft.prettytime.units.Hour;
import org.ocpsoft.prettytime.units.Millennium;
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Resources_hr extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = {new Object[]{"CenturyPattern", "%n %u"}, new Object[]{"CenturyFuturePrefix", "za "}, new Object[]{"CenturyFutureSuffix", ""}, new Object[]{"CenturyPastPrefix", ""}, new Object[]{"CenturyPastSuffix", " unatrag"}, new Object[]{"CenturySingularName", "stoljeće"}, new Object[]{"CenturyPluralName", "stoljeća"}, new Object[]{"DayPattern", "%n %u"}, new Object[]{"DayFuturePrefix", "za "}, new Object[]{"DayFutureSuffix", ""}, new Object[]{"DayPastPrefix", "prije "}, new Object[]{"DayPastSuffix", ""}, new Object[]{"DaySingularName", "dan"}, new Object[]{"DayPluralName", "dana"}, new Object[]{"DecadePattern", "%n %u"}, new Object[]{"DecadeFuturePrefix", "za "}, new Object[]{"DecadeFutureSuffix", ""}, new Object[]{"DecadePastPrefix", "prije "}, new Object[]{"DecadePastSuffix", ""}, new Object[]{"DecadeSingularName", "desetljeće"}, new Object[]{"DecadePluralName", "desetljeća"}, new Object[]{"HourPattern", "%n %u"}, new Object[]{"HourFuturePrefix", "za "}, new Object[]{"HourFutureSuffix", ""}, new Object[]{"HourPastPrefix", "prije "}, new Object[]{"HourPastSuffix", ""}, new Object[]{"HourSingularName", "sat"}, new Object[]{"HourPluralName", "sati"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", "za nekoliko trenutaka"}, new Object[]{"JustNowFutureSuffix", ""}, new Object[]{"JustNowPastPrefix", "prije nekoliko trenutaka"}, new Object[]{"JustNowPastSuffix", ""}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n %u"}, new Object[]{"MillenniumFuturePrefix", "za "}, new Object[]{"MillenniumFutureSuffix", ""}, new Object[]{"MillenniumPastPrefix", "prije "}, new Object[]{"MillenniumPastSuffix", ""}, new Object[]{"MillenniumSingularName", "tisućljeće"}, new Object[]{"MillenniumPluralName", "tisućljeća"}, new Object[]{"MillisecondPattern", "%n %u"}, new Object[]{"MillisecondFuturePrefix", "za "}, new Object[]{"MillisecondFutureSuffix", ""}, new Object[]{"MillisecondPastPrefix", "prije "}, new Object[]{"MillisecondPastSuffix", ""}, new Object[]{"MillisecondSingularName", "milisekunda"}, new Object[]{"MillisecondPluralName", "milisekunda"}, new Object[]{"MinutePattern", "%n %u"}, new Object[]{"MinuteFuturePrefix", "za "}, new Object[]{"MinuteFutureSuffix", ""}, new Object[]{"MinutePastPrefix", "prije "}, new Object[]{"MinutePastSuffix", ""}, new Object[]{"MinuteSingularName", "minuta"}, new Object[]{"MinutePluralName", "minuta"}, new Object[]{"MonthPattern", "%n %u"}, new Object[]{"MonthFuturePrefix", "za "}, new Object[]{"MonthFutureSuffix", ""}, new Object[]{"MonthPastPrefix", "prije "}, new Object[]{"MonthPastSuffix", ""}, new Object[]{"MonthSingularName", "mjesec"}, new Object[]{"MonthPluralName", "mjeseca"}, new Object[]{"SecondPattern", "%n %u"}, new Object[]{"SecondFuturePrefix", "za "}, new Object[]{"SecondFutureSuffix", ""}, new Object[]{"SecondPastPrefix", "prije "}, new Object[]{"SecondPastSuffix", ""}, new Object[]{"SecondSingularName", "sekunda"}, new Object[]{"SecondPluralName", "sekundi"}, new Object[]{"WeekPattern", "%n %u"}, new Object[]{"WeekFuturePrefix", "za "}, new Object[]{"WeekFutureSuffix", ""}, new Object[]{"WeekPastPrefix", "prije "}, new Object[]{"WeekPastSuffix", ""}, new Object[]{"WeekSingularName", "tjedan"}, new Object[]{"WeekPluralName", "tjedna"}, new Object[]{"YearPattern", "%n %u"}, new Object[]{"YearFuturePrefix", "za "}, new Object[]{"YearFutureSuffix", ""}, new Object[]{"YearPastPrefix", "prije "}, new Object[]{"YearPastSuffix", ""}, new Object[]{"YearSingularName", "godina"}, new Object[]{"YearPluralName", "godina"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class HrName implements Comparable<HrName> {
        private final boolean isFuture;
        private final Long threshold;
        private final String value;

        public HrName(boolean z, String str, Long l) {
            this.isFuture = z;
            this.value = str;
            this.threshold = l;
        }

        @Override // java.lang.Comparable
        public int compareTo(HrName hrName) {
            return this.threshold.compareTo(Long.valueOf(hrName.getThreshold()));
        }

        public String get() {
            return this.value;
        }

        public long getThreshold() {
            return this.threshold.longValue();
        }

        public boolean isFuture() {
            return this.isFuture;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class HrTimeFormatBuilder {
        private final List<HrName> names = new ArrayList();
        private final String resourceKeyPrefix;

        public HrTimeFormatBuilder(String str) {
            this.resourceKeyPrefix = str;
        }

        private HrTimeFormatBuilder addName(boolean z, String str, long j) {
            List<HrName> list = this.names;
            Objects.requireNonNull(str);
            list.add(new HrName(z, str, Long.valueOf(j)));
            return this;
        }

        public HrTimeFormatBuilder addNames(String str, long j) {
            return addName(true, str, j).addName(false, str, j);
        }

        public HrTimeFormat build(ResourceBundle resourceBundle) {
            return new HrTimeFormat(this.resourceKeyPrefix, resourceBundle, this.names);
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof Minute) {
            return new HrTimeFormatBuilder("Minute").addNames("minutu", 1L).addNames("minute", 4L).addNames("minuta", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Hour) {
            return new HrTimeFormatBuilder("Hour").addNames("sat", 1L).addNames("sata", 4L).addNames("sati", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Day) {
            return new HrTimeFormatBuilder("Day").addNames("dan", 1L).addNames("dana", 4L).addNames("dana", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Week) {
            return new HrTimeFormatBuilder("Week").addNames("tjedan", 1L).addNames("tjedna", 4L).addNames("tjedana", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Month) {
            return new HrTimeFormatBuilder("Month").addNames("mjesec", 1L).addNames("mjeseca", 4L).addNames("mjeseci", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Year) {
            return new HrTimeFormatBuilder("Year").addNames("godinu", 1L).addNames("godine", 4L).addNames("godina", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Millennium) {
            return new HrTimeFormatBuilder("Millennium").addNames("tisućljeće", 1L).addNames("tisućljeća", Long.MAX_VALUE).build(this);
        }
        return null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class HrTimeFormat extends SimpleTimeFormat {
        private final List<HrName> futureNames = new ArrayList();
        private final List<HrName> pastNames = new ArrayList();

        public HrTimeFormat(String str, ResourceBundle resourceBundle, Collection<HrName> collection) {
            setPattern(resourceBundle.getString(str + "Pattern"));
            setFuturePrefix(resourceBundle.getString(str + "FuturePrefix"));
            setFutureSuffix(resourceBundle.getString(str + "FutureSuffix"));
            setPastPrefix(resourceBundle.getString(str + "PastPrefix"));
            setPastSuffix(resourceBundle.getString(str + "PastSuffix"));
            setSingularName(resourceBundle.getString(str + "SingularName"));
            setPluralName(resourceBundle.getString(str + "PluralName"));
            try {
                setFuturePluralName(resourceBundle.getString(str + "FuturePluralName"));
            } catch (Exception unused) {
            }
            try {
                setFutureSingularName(resourceBundle.getString(str + "FutureSingularName"));
            } catch (Exception unused2) {
            }
            try {
                setPastPluralName(resourceBundle.getString(str + "PastPluralName"));
            } catch (Exception unused3) {
            }
            try {
                setPastSingularName(resourceBundle.getString(str + "PastSingularName"));
            } catch (Exception unused4) {
            }
            for (HrName hrName : collection) {
                if (hrName.isFuture()) {
                    this.futureNames.add(hrName);
                } else {
                    this.pastNames.add(hrName);
                }
            }
            Collections.sort(this.futureNames);
            Collections.sort(this.pastNames);
        }

        private String getGramaticallyCorrectName(long j, List<HrName> list) {
            for (HrName hrName : list) {
                if (hrName.getThreshold() >= j) {
                    return hrName.get();
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Invalid resource bundle configuration");
            return null;
        }

        @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat
        public String getGramaticallyCorrectName(Duration duration, boolean z) {
            long abs = Math.abs(getQuantity(duration, z));
            if (((DurationImpl) duration).isInFuture()) {
                return getGramaticallyCorrectName(abs, this.futureNames);
            }
            return getGramaticallyCorrectName(abs, this.pastNames);
        }
    }
}
