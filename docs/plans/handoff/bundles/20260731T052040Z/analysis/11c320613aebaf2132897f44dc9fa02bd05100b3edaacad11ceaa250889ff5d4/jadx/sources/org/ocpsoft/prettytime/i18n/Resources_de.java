package org.ocpsoft.prettytime.i18n;

import androidx.compose.ui.node.Owner;
import j$.util.function.Function$CC;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.ListResourceBundle;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.TimeUnit;
import org.ocpsoft.prettytime.format.SimpleTimeFormat;
import org.ocpsoft.prettytime.impl.TimeFormatProvider;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Resources_de extends ListResourceBundle implements TimeFormatProvider {
    private static final Object[][] OBJECTS = {new Object[]{"CenturyPattern", "%n %u"}, new Object[]{"CenturyFuturePrefix", "in "}, new Object[]{"CenturyFutureSuffix", ""}, new Object[]{"CenturyPastPrefix", "vor "}, new Object[]{"CenturyPastSuffix", ""}, new Object[]{"CenturySingularName", "Jahrhundert"}, new Object[]{"CenturyPluralName", "Jahrhunderte"}, new Object[]{"DayPattern", "%n %u"}, new Object[]{"DayFuturePrefix", "in "}, new Object[]{"DayFutureSuffix", ""}, new Object[]{"DayPastPrefix", "vor "}, new Object[]{"DayPastSuffix", ""}, new Object[]{"DaySingularName", "Tag"}, new Object[]{"DayPluralName", "Tage"}, new Object[]{"DecadePattern", "%n %u"}, new Object[]{"DecadeFuturePrefix", "in "}, new Object[]{"DecadeFutureSuffix", ""}, new Object[]{"DecadePastPrefix", "vor "}, new Object[]{"DecadePastSuffix", ""}, new Object[]{"DecadeSingularName", "Jahrzehnt"}, new Object[]{"DecadePluralName", "Jahrzehnte"}, new Object[]{"HourPattern", "%n %u"}, new Object[]{"HourFuturePrefix", "in "}, new Object[]{"HourFutureSuffix", ""}, new Object[]{"HourPastPrefix", "vor "}, new Object[]{"HourPastSuffix", ""}, new Object[]{"HourSingularName", "Stunde"}, new Object[]{"HourPluralName", "Stunden"}, new Object[]{"JustNowPattern", "%u"}, new Object[]{"JustNowFuturePrefix", "Jetzt"}, new Object[]{"JustNowFutureSuffix", ""}, new Object[]{"JustNowPastPrefix", "gerade eben"}, new Object[]{"JustNowPastSuffix", ""}, new Object[]{"JustNowSingularName", ""}, new Object[]{"JustNowPluralName", ""}, new Object[]{"MillenniumPattern", "%n %u"}, new Object[]{"MillenniumFuturePrefix", "in "}, new Object[]{"MillenniumFutureSuffix", ""}, new Object[]{"MillenniumPastPrefix", "vor "}, new Object[]{"MillenniumPastSuffix", ""}, new Object[]{"MillenniumSingularName", "Jahrtausend"}, new Object[]{"MillenniumPluralName", "Jahrtausende"}, new Object[]{"MillisecondPattern", "%n %u"}, new Object[]{"MillisecondFuturePrefix", "in "}, new Object[]{"MillisecondFutureSuffix", ""}, new Object[]{"MillisecondPastPrefix", "vor "}, new Object[]{"MillisecondPastSuffix", ""}, new Object[]{"MillisecondSingularName", "Millisekunde"}, new Object[]{"MillisecondPluralName", "Millisekunden"}, new Object[]{"MinutePattern", "%n %u"}, new Object[]{"MinuteFuturePrefix", "in "}, new Object[]{"MinuteFutureSuffix", ""}, new Object[]{"MinutePastPrefix", "vor "}, new Object[]{"MinutePastSuffix", ""}, new Object[]{"MinuteSingularName", "Minute"}, new Object[]{"MinutePluralName", "Minuten"}, new Object[]{"MonthPattern", "%n %u"}, new Object[]{"MonthFuturePrefix", "in "}, new Object[]{"MonthFutureSuffix", ""}, new Object[]{"MonthPastPrefix", "vor "}, new Object[]{"MonthPastSuffix", ""}, new Object[]{"MonthSingularName", "Monat"}, new Object[]{"MonthPluralName", "Monate"}, new Object[]{"SecondPattern", "%n %u"}, new Object[]{"SecondFuturePrefix", "in "}, new Object[]{"SecondFutureSuffix", ""}, new Object[]{"SecondPastPrefix", "vor "}, new Object[]{"SecondPastSuffix", ""}, new Object[]{"SecondSingularName", "Sekunde"}, new Object[]{"SecondPluralName", "Sekunden"}, new Object[]{"WeekPattern", "%n %u"}, new Object[]{"WeekFuturePrefix", "in "}, new Object[]{"WeekFutureSuffix", ""}, new Object[]{"WeekPastPrefix", "vor "}, new Object[]{"WeekPastSuffix", ""}, new Object[]{"WeekSingularName", "Woche"}, new Object[]{"WeekPluralName", "Wochen"}, new Object[]{"YearPattern", "%n %u"}, new Object[]{"YearFuturePrefix", "in "}, new Object[]{"YearFutureSuffix", ""}, new Object[]{"YearPastPrefix", "vor "}, new Object[]{"YearPastSuffix", ""}, new Object[]{"YearSingularName", "Jahr"}, new Object[]{"YearPluralName", "Jahre"}, new Object[]{"AbstractTimeUnitPattern", ""}, new Object[]{"AbstractTimeUnitFuturePrefix", ""}, new Object[]{"AbstractTimeUnitFutureSuffix", ""}, new Object[]{"AbstractTimeUnitPastPrefix", ""}, new Object[]{"AbstractTimeUnitPastSuffix", ""}, new Object[]{"AbstractTimeUnitSingularName", ""}, new Object[]{"AbstractTimeUnitPluralName", ""}};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class DeTimeFormat extends SimpleTimeFormat {
        private static final Pattern grammerReplacementPattern;
        private static final Map<String, String> unitsToAdjust;

        static {
            Map<String, String> map = (Map) Stream.CC.of((Object[]) new String[]{"Jahrtausende", "Jahrhunderte", "Jahrzehnte", "Jahre", "Monate", "Tage"}).collect(Collectors.toMap(Function$CC.identity(), new Resources_de$DeTimeFormat$$ExternalSyntheticLambda0()));
            unitsToAdjust = map;
            StringBuilder sb = new StringBuilder("\\b(");
            Set<String> keySet = map.keySet();
            StringBuilder sb2 = new StringBuilder();
            Iterator<T> it = keySet.iterator();
            if (it.hasNext()) {
                while (true) {
                    sb2.append((CharSequence) it.next());
                    if (!it.hasNext()) {
                        break;
                    } else {
                        sb2.append((CharSequence) "|");
                    }
                }
            }
            sb.append(sb2.toString());
            sb.append(")\\b");
            grammerReplacementPattern = Pattern.compile(sb.toString());
        }

        public DeTimeFormat(ResourceBundle resourceBundle, TimeUnit timeUnit) {
            String simpleName = timeUnit.getClass().getSimpleName();
            setPattern(resourceBundle.getString(simpleName.concat("Pattern")));
            setFuturePrefix(resourceBundle.getString(simpleName.concat("FuturePrefix")));
            setFutureSuffix(resourceBundle.getString(simpleName.concat("FutureSuffix")));
            setPastPrefix(resourceBundle.getString(simpleName.concat("PastPrefix")));
            setPastSuffix(resourceBundle.getString(simpleName.concat("PastSuffix")));
            setSingularName(resourceBundle.getString(simpleName.concat("SingularName")));
            setPluralName(resourceBundle.getString(simpleName.concat("PluralName")));
        }

        private String adjustGrammar(String str) {
            Matcher matcher = grammerReplacementPattern.matcher(str);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                matcher.appendReplacement(stringBuffer, unitsToAdjust.get(matcher.group(1)));
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String lambda$static$0(String str) {
            return Owner.CC.m$1(str, "n");
        }

        @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
        public String decorate(Duration duration, String str) {
            return super.decorate(duration, adjustGrammar(str));
        }

        @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
        public String decorateUnrounded(Duration duration, String str) {
            return super.decorateUnrounded(duration, adjustGrammar(str));
        }
    }

    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return OBJECTS;
    }

    @Override // org.ocpsoft.prettytime.impl.TimeFormatProvider
    public TimeFormat getFormatFor(TimeUnit timeUnit) {
        return new DeTimeFormat(this, timeUnit);
    }
}
