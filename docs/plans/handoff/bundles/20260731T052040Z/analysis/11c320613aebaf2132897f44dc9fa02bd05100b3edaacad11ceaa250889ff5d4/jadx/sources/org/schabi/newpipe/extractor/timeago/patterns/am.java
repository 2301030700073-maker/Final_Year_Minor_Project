package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class am extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"ሰኮንዶች", "ሴኮንድ"};
    private static final String[] MINUTES = {"ደቂቃ", "ደቂቃዎች"};
    private static final String[] HOURS = {"ሰዓት", "ሰዓቶች"};
    private static final String[] DAYS = {"ቀን", "ቀኖች"};
    private static final String[] WEEKS = {"ሳምንታት", "ሳምንት"};
    private static final String[] MONTHS = {"ወራት", "ወር"};
    private static final String[] YEARS = {"ዓመታት", "ዓመት"};
    private static final am INSTANCE = new am();

    private am() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static am getInstance() {
        return INSTANCE;
    }
}
