package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class fa extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"ثانیه"};
    private static final String[] MINUTES = {"دقیقه"};
    private static final String[] HOURS = {"ساعت"};
    private static final String[] DAYS = {"روز"};
    private static final String[] WEEKS = {"هفته"};
    private static final String[] MONTHS = {"ماه"};
    private static final String[] YEARS = {"سال"};
    private static final fa INSTANCE = new fa();

    private fa() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static fa getInstance() {
        return INSTANCE;
    }
}
