package org.schabi.newpipe.extractor.timeago.patterns;

import j$.time.temporal.ChronoUnit;
import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class iw extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"שניות", "שנייה"};
    private static final String[] MINUTES = {"דקה", "דקות"};
    private static final String[] HOURS = {"שעה", "שעות"};
    private static final String[] DAYS = {"יום", "ימים"};
    private static final String[] WEEKS = {"שבוע", "שבועות"};
    private static final String[] MONTHS = {"חודש", "חודשים"};
    private static final String[] YEARS = {"שנה", "שנים"};
    private static final iw INSTANCE = new iw();

    private iw() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
        putSpecialCase(ChronoUnit.HOURS, "שעתיים", 2);
        putSpecialCase(ChronoUnit.DAYS, "יומיים", 2);
        putSpecialCase(ChronoUnit.WEEKS, "שבועיים", 2);
        putSpecialCase(ChronoUnit.MONTHS, "חודשיים", 2);
        putSpecialCase(ChronoUnit.YEARS, "שנתיים", 2);
    }

    public static iw getInstance() {
        return INSTANCE;
    }
}
