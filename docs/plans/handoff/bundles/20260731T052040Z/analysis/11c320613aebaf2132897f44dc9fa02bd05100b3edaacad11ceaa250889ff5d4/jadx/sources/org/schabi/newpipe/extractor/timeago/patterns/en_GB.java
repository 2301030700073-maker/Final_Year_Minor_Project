package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class en_GB extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"second", "seconds", "sec"};
    private static final String[] MINUTES = {"minute", "minutes", "min"};
    private static final String[] HOURS = {"hour", "hours", "hr"};
    private static final String[] DAYS = {"day", "days"};
    private static final String[] WEEKS = {"week", "weeks", "wk"};
    private static final String[] MONTHS = {"month", "months", "mo"};
    private static final String[] YEARS = {"year", "years", "yr"};
    private static final en_GB INSTANCE = new en_GB();

    private en_GB() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static en_GB getInstance() {
        return INSTANCE;
    }
}
