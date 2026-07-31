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
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Resources_cs extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = {new Object[]{"CenturyPattern", "%n %u"}, new Object[]{"CenturyFuturePrefix", "za "}, new Object[]{"CenturyFutureSuffix", ""}, new Object[]{"CenturyPastPrefix", "před "}, new Object[]{"CenturyPastSuffix", ""}, new Object[]{"CenturySingularName", "století"}, new Object[]{"CenturyPluralName", "století"}, new Object[]{"CenturyPastSingularName", "stoletím"}, new Object[]{"CenturyPastPluralName", "stoletími"}, new Object[]{"CenturyFutureSingularName", "století"}, new Object[]{"CenturyFuturePluralName", "století"}, new Object[]{"DayPattern", "%n %u"}, new Object[]{"DayFuturePrefix", "za "}, new Object[]{"DayFutureSuffix", ""}, new Object[]{"DayPastPrefix", "před "}, new Object[]{"DayPastSuffix", ""}, new Object[]{"DaySingularName", "den"}, new Object[]{"DayPluralName", "dny"}, new Object[]{"DecadePattern", "%n %u"}, new Object[]{"DecadeFuturePrefix", "za "}, new Object[]{"DecadeFutureSuffix", ""}, new Object[]{"DecadePastPrefix", "před "}, new Object[]{"DecadePastSuffix", ""}, new Object[]{"DecadeSingularName", "desetiletí"}, new Object[]{"DecadePluralName", "desetiletí"}, new Object[]{"DecadePastSingularName", "desetiletím"}, new Object[]{"DecadePastPluralName", "desetiletími"}, new Object[]{"DecadeFutureSingularName", "desetiletí"}, new Object[]{"DecadeFuturePluralName", "desetiletí"}, new Object[]{"HourPattern", "%n %u"}, new Object[]{"HourFuturePrefix", "za "}, new Object[]{"HourFutureSuffix", ""}, new Object[]{"HourPastPrefix", "před"}, new Object[]{"HourPastSuffix", ""}, new Object[]{"HourSingularName", "hodina"}, new Object[]{"HourPluralName", "hodiny"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", ""}, new Object[]{"JustNowFutureSuffix", "za chvíli"}, new Object[]{"JustNowPastPrefix", "před chvílí"}, new Object[]{"JustNowPastSuffix", ""}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n %u"}, new Object[]{"MillenniumFuturePrefix", "za "}, new Object[]{"MillenniumFutureSuffix", ""}, new Object[]{"MillenniumPastPrefix", "před "}, new Object[]{"MillenniumPastSuffix", ""}, new Object[]{"MillenniumSingularName", "tisíciletí"}, new Object[]{"MillenniumPluralName", "tisíciletí"}, new Object[]{"MillisecondPattern", "%n %u"}, new Object[]{"MillisecondFuturePrefix", "za "}, new Object[]{"MillisecondFutureSuffix", ""}, new Object[]{"MillisecondPastPrefix", "před "}, new Object[]{"MillisecondPastSuffix", ""}, new Object[]{"MillisecondSingularName", "milisekunda"}, new Object[]{"MillisecondPluralName", "milisekundy"}, new Object[]{"MillisecondPastSingularName", "milisekundou"}, new Object[]{"MillisecondPastPluralName", "milisekundami"}, new Object[]{"MillisecondFutureSingularName", "milisekundu"}, new Object[]{"MillisecondFuturePluralName", "milisekund"}, new Object[]{"MinutePattern", "%n %u"}, new Object[]{"MinuteFuturePrefix", "za "}, new Object[]{"MinuteFutureSuffix", ""}, new Object[]{"MinutePastPrefix", "před "}, new Object[]{"MinutePastSuffix", ""}, new Object[]{"MinuteSingularName", "minuta"}, new Object[]{"MinutePluralName", "minuty"}, new Object[]{"MonthPattern", "%n %u"}, new Object[]{"MonthFuturePrefix", "za "}, new Object[]{"MonthFutureSuffix", ""}, new Object[]{"MonthPastPrefix", "před "}, new Object[]{"MonthPastSuffix", ""}, new Object[]{"MonthSingularName", "měsíc"}, new Object[]{"MonthPluralName", "měsíce"}, new Object[]{"SecondPattern", "%n %u"}, new Object[]{"SecondFuturePrefix", "za "}, new Object[]{"SecondFutureSuffix", ""}, new Object[]{"SecondPastPrefix", "před "}, new Object[]{"SecondPastSuffix", ""}, new Object[]{"SecondSingularName", "sekunda"}, new Object[]{"SecondPluralName", "sekundy"}, new Object[]{"WeekPattern", "%n %u"}, new Object[]{"WeekFuturePrefix", "za "}, new Object[]{"WeekFutureSuffix", ""}, new Object[]{"WeekPastPrefix", "před "}, new Object[]{"WeekPastSuffix", ""}, new Object[]{"WeekSingularName", "týden"}, new Object[]{"WeekPluralName", "týdny"}, new Object[]{"YearPattern", "%n %u"}, new Object[]{"YearFuturePrefix", "za "}, new Object[]{"YearFutureSuffix", ""}, new Object[]{"YearPastPrefix", "před "}, new Object[]{"YearPastSuffix", ""}, new Object[]{"YearSingularName", "rok"}, new Object[]{"YearPluralName", "roky"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class CsName implements Comparable<CsName> {
        private final boolean isFuture;
        private final Long threshold;
        private final String value;

        public CsName(boolean z, String str, Long l) {
            this.isFuture = z;
            this.value = str;
            this.threshold = l;
        }

        @Override // java.lang.Comparable
        public int compareTo(CsName csName) {
            return this.threshold.compareTo(Long.valueOf(csName.getThreshold()));
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
    public static class CsTimeFormatBuilder {
        private final List<CsName> names = new ArrayList();
        private final String resourceKeyPrefix;

        public CsTimeFormatBuilder(String str) {
            this.resourceKeyPrefix = str;
        }

        private CsTimeFormatBuilder addName(boolean z, String str, long j) {
            List<CsName> list = this.names;
            Objects.requireNonNull(str);
            list.add(new CsName(z, str, Long.valueOf(j)));
            return this;
        }

        public CsTimeFormatBuilder addFutureName(String str, long j) {
            return addName(true, str, j);
        }

        public CsTimeFormatBuilder addPastName(String str, long j) {
            return addName(false, str, j);
        }

        public CsTimeFormat build(ResourceBundle resourceBundle) {
            return new CsTimeFormat(this.resourceKeyPrefix, resourceBundle, this.names);
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        if (timeUnit instanceof Minute) {
            return new CsTimeFormatBuilder("Minute").addFutureName("minutu", 1L).addFutureName("minuty", 4L).addFutureName("minut", Long.MAX_VALUE).addPastName("minutou", 1L).addPastName("minutami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Hour) {
            return new CsTimeFormatBuilder("Hour").addFutureName("hodinu", 1L).addFutureName("hodiny", 4L).addFutureName("hodin", Long.MAX_VALUE).addPastName("hodinou", 1L).addPastName("hodinami", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Day) {
            return new CsTimeFormatBuilder("Day").addFutureName("den", 1L).addFutureName("dny", 4L).addFutureName("dní", Long.MAX_VALUE).addPastName("dnem", 1L).addPastName("dny", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Week) {
            return new CsTimeFormatBuilder("Week").addFutureName("týden", 1L).addFutureName("týdny", 4L).addFutureName("týdnů", Long.MAX_VALUE).addPastName("týdnem", 1L).addPastName("týdny", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Month) {
            return new CsTimeFormatBuilder("Month").addFutureName("měsíc", 1L).addFutureName("měsíce", 4L).addFutureName("měsíců", Long.MAX_VALUE).addPastName("měsícem", 1L).addPastName("měsíci", Long.MAX_VALUE).build(this);
        }
        if (timeUnit instanceof Year) {
            return new CsTimeFormatBuilder("Year").addFutureName("rok", 1L).addFutureName("roky", 4L).addFutureName("let", Long.MAX_VALUE).addPastName("rokem", 1L).addPastName("roky", Long.MAX_VALUE).build(this);
        }
        return null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class CsTimeFormat extends SimpleTimeFormat {
        private final List<CsName> futureNames = new ArrayList();
        private final List<CsName> pastNames = new ArrayList();

        public CsTimeFormat(String str, ResourceBundle resourceBundle, Collection<CsName> collection) {
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
            for (CsName csName : collection) {
                if (csName.isFuture()) {
                    this.futureNames.add(csName);
                } else {
                    this.pastNames.add(csName);
                }
            }
            Collections.sort(this.futureNames);
            Collections.sort(this.pastNames);
        }

        private String getGramaticallyCorrectName(long j, List<CsName> list) {
            for (CsName csName : list) {
                if (csName.getThreshold() >= j) {
                    return csName.get();
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
