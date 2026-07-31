package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class uk extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"секунд", "секунди", "секунду"};
    private static final String[] MINUTES = {"хвилин", "хвилини", "хвилину"};
    private static final String[] HOURS = {"годин", "години", "годину"};
    private static final String[] DAYS = {"день", "дні", "днів"};
    private static final String[] WEEKS = {"тиждень", "тижні"};
    private static final String[] MONTHS = {"місяць", "місяці", "місяців"};
    private static final String[] YEARS = {"роки", "років", "рік"};
    private static final uk INSTANCE = new uk();

    private uk() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static uk getInstance() {
        return INSTANCE;
    }
}
