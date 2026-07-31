package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class et extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekund", "sekundit"};
    private static final String[] MINUTES = {"minut", "minutit"};
    private static final String[] HOURS = {"tund", "tundi"};
    private static final String[] DAYS = {"päev", "päeva"};
    private static final String[] WEEKS = {"nädal", "nädalat"};
    private static final String[] MONTHS = {"kuu", "kuud"};
    private static final String[] YEARS = {"aasta", "aastat"};
    private static final et INSTANCE = new et();

    private et() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static et getInstance() {
        return INSTANCE;
    }
}
