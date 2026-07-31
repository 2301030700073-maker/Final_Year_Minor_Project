package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class az extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"saniyə"};
    private static final String[] MINUTES = {"dəqiqə"};
    private static final String[] HOURS = {"saat"};
    private static final String[] DAYS = {"gün"};
    private static final String[] WEEKS = {"həftə"};
    private static final String[] MONTHS = {"ay"};
    private static final String[] YEARS = {"il"};
    private static final az INSTANCE = new az();

    private az() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static az getInstance() {
        return INSTANCE;
    }
}
