package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class is extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekúndu", "sekúndum", "second", "seconds"};
    private static final String[] MINUTES = {"mínútu", "mínútum", "minute", "minutes"};
    private static final String[] HOURS = {"klukkustund", "klukkustundum", "hour", "hours"};
    private static final String[] DAYS = {"degi", "dögum", "day", "days"};
    private static final String[] WEEKS = {"viku", "vikum", "week", "weeks"};
    private static final String[] MONTHS = {"mánuði", "mánuðum"};
    private static final String[] YEARS = {"ári", "árum"};
    private static final is INSTANCE = new is();

    private is() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static is getInstance() {
        return INSTANCE;
    }
}
