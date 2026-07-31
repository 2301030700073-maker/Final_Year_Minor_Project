package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class sq extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekonda", "sekondë"};
    private static final String[] MINUTES = {"minuta", "minutë"};
    private static final String[] HOURS = {"orë"};
    private static final String[] DAYS = {"ditë"};
    private static final String[] WEEKS = {"javë"};
    private static final String[] MONTHS = {"muaj"};
    private static final String[] YEARS = {"vit", "vjet"};
    private static final sq INSTANCE = new sq();

    private sq() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static sq getInstance() {
        return INSTANCE;
    }
}
