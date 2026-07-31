package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ro extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"secunde", "secundă"};
    private static final String[] MINUTES = {"minut", "minute"};
    private static final String[] HOURS = {"ore", "oră"};
    private static final String[] DAYS = {"zi", "zile"};
    private static final String[] WEEKS = {"săptămâni", "săptămână"};
    private static final String[] MONTHS = {"luni", "lună"};
    private static final String[] YEARS = {"an", "ani"};
    private static final ro INSTANCE = new ro();

    private ro() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ro getInstance() {
        return INSTANCE;
    }
}
