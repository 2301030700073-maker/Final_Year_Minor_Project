package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ar extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"ثانية", "ثانيتين", "ثوانٍ"};
    private static final String[] MINUTES = {"دقائق", "دقيقة", "دقيقتين"};
    private static final String[] HOURS = {"ساعات", "ساعة", "ساعتين"};
    private static final String[] DAYS = {"أيام", "يوم", "يومين"};
    private static final String[] WEEKS = {"أسابيع", "أسبوع", "أسبوعين"};
    private static final String[] MONTHS = {"أشهر", "شهر", "شهرين", "شهرًا"};
    private static final String[] YEARS = {"سنة", "سنتين", "سنوات"};
    private static final ar INSTANCE = new ar();

    private ar() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ar getInstance() {
        return INSTANCE;
    }
}
