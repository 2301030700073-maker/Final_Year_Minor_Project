package org.ocpsoft.prettytime.format;

import androidx.compose.ui.Modifier;
import java.util.Locale;
import java.util.regex.Pattern;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.impl.DurationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SimpleTimeFormat implements TimeFormat {
    private static final String NEGATIVE = "-";
    private static final Pattern PATTERN_MULTIPLE_WHITESPACES = Pattern.compile("\\s{2,}");
    public static final String QUANTITY = "%n";
    public static final String SIGN = "%s";
    public static final String UNIT = "%u";
    private Locale locale;
    private String singularName = "";
    private String pluralName = "";
    private String futureSingularName = "";
    private String futurePluralName = "";
    private String pastSingularName = "";
    private String pastPluralName = "";
    private String pattern = "";
    private String futurePrefix = "";
    private String futureSuffix = "";
    private String pastPrefix = "";
    private String pastSuffix = "";
    private int roundingTolerance = 50;

    @Override // org.ocpsoft.prettytime.TimeFormat
    public String decorate(Duration duration, String str) {
        StringBuilder sb = new StringBuilder();
        if (((DurationImpl) duration).isInPast()) {
            sb.append(this.pastPrefix);
            sb.append(" ");
            sb.append(str);
            sb.append(" ");
            sb.append(this.pastSuffix);
        } else {
            sb.append(this.futurePrefix);
            sb.append(" ");
            sb.append(str);
            sb.append(" ");
            sb.append(this.futureSuffix);
        }
        return PATTERN_MULTIPLE_WHITESPACES.matcher(sb).replaceAll(" ").trim();
    }

    @Override // org.ocpsoft.prettytime.TimeFormat
    public String decorateUnrounded(Duration duration, String str) {
        return decorate(duration, str);
    }

    public final String format(Duration duration, boolean z) {
        String str = ((DurationImpl) duration).quantity < 0 ? NEGATIVE : "";
        String gramaticallyCorrectName = getGramaticallyCorrectName(duration, z);
        long quantity = getQuantity(duration, z);
        String replace = getPattern(quantity).replace("%s", str);
        Locale locale = this.locale;
        return replace.replace("%n", locale != null ? String.format(locale, "%d", Long.valueOf(quantity)) : String.format("%d", Long.valueOf(quantity))).replace("%u", gramaticallyCorrectName);
    }

    @Override // org.ocpsoft.prettytime.TimeFormat
    public String formatUnrounded(Duration duration) {
        return format(duration, false);
    }

    public String getGramaticallyCorrectName(Duration duration, boolean z) {
        String str;
        String str2;
        DurationImpl durationImpl = (DurationImpl) duration;
        return isPlural(duration, z) ? (!durationImpl.isInFuture() || this.futurePluralName == null || this.futureSingularName.length() <= 0) ? (!durationImpl.isInPast() || this.pastPluralName == null || this.pastSingularName.length() <= 0) ? this.pluralName : this.pastPluralName : this.futurePluralName : (!durationImpl.isInFuture() || (str2 = this.futureSingularName) == null || str2.length() <= 0) ? (!durationImpl.isInPast() || (str = this.pastSingularName) == null || str.length() <= 0) ? this.singularName : this.pastSingularName : this.futureSingularName;
    }

    public String getPattern(long j) {
        return this.pattern;
    }

    public long getQuantity(Duration duration, boolean z) {
        long j;
        if (z) {
            j = ((DurationImpl) duration).getQuantityRounded(this.roundingTolerance);
        } else {
            j = ((DurationImpl) duration).quantity;
        }
        return Math.abs(j);
    }

    public boolean isPlural(Duration duration, boolean z) {
        long abs = Math.abs(getQuantity(duration, z));
        return abs == 0 || abs > 1;
    }

    public SimpleTimeFormat setFuturePluralName(String str) {
        this.futurePluralName = str;
        return this;
    }

    public SimpleTimeFormat setFuturePrefix(String str) {
        this.futurePrefix = str.trim();
        return this;
    }

    public SimpleTimeFormat setFutureSingularName(String str) {
        this.futureSingularName = str;
        return this;
    }

    public SimpleTimeFormat setFutureSuffix(String str) {
        this.futureSuffix = str.trim();
        return this;
    }

    public /* bridge */ Object setLocale(Locale locale) {
        return mo858setLocale(locale);
    }

    public SimpleTimeFormat setPastPluralName(String str) {
        this.pastPluralName = str;
        return this;
    }

    public SimpleTimeFormat setPastPrefix(String str) {
        this.pastPrefix = str.trim();
        return this;
    }

    public SimpleTimeFormat setPastSingularName(String str) {
        this.pastSingularName = str;
        return this;
    }

    public SimpleTimeFormat setPastSuffix(String str) {
        this.pastSuffix = str.trim();
        return this;
    }

    public SimpleTimeFormat setPattern(String str) {
        this.pattern = str;
        return this;
    }

    public SimpleTimeFormat setPluralName(String str) {
        this.pluralName = str;
        return this;
    }

    public SimpleTimeFormat setRoundingTolerance(int i) {
        this.roundingTolerance = i;
        return this;
    }

    public SimpleTimeFormat setSingularName(String str) {
        this.singularName = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SimpleTimeFormat [pattern=");
        sb.append(this.pattern);
        sb.append(", futurePrefix=");
        sb.append(this.futurePrefix);
        sb.append(", futureSuffix=");
        sb.append(this.futureSuffix);
        sb.append(", pastPrefix=");
        sb.append(this.pastPrefix);
        sb.append(", pastSuffix=");
        sb.append(this.pastSuffix);
        sb.append(", roundingTolerance=");
        return Modifier.CC.m(sb, this.roundingTolerance, "]");
    }

    public String getPattern() {
        return this.pattern;
    }

    /* renamed from: setLocale, reason: collision with other method in class */
    public SimpleTimeFormat mo858setLocale(Locale locale) {
        this.locale = locale;
        return this;
    }

    @Override // org.ocpsoft.prettytime.TimeFormat
    public String format(Duration duration) {
        return format(duration, true);
    }
}
