package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class bn extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"সেকেন্ড"};
    private static final String[] MINUTES = {"মিনিট"};
    private static final String[] HOURS = {"ঘণ্টা"};
    private static final String[] DAYS = {"দিন"};
    private static final String[] WEEKS = {"সপ্তাহ"};
    private static final String[] MONTHS = {"মাস"};
    private static final String[] YEARS = {"বছর"};
    private static final bn INSTANCE = new bn();

    private bn() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static bn getInstance() {
        return INSTANCE;
    }
}
