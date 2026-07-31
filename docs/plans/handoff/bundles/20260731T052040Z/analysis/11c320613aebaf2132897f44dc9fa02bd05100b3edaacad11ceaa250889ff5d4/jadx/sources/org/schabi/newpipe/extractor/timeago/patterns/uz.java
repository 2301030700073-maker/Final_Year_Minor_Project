package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class uz extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"soniya"};
    private static final String[] MINUTES = {"daqiqa"};
    private static final String[] HOURS = {"soat"};
    private static final String[] DAYS = {"kun"};
    private static final String[] WEEKS = {"hafta"};
    private static final String[] MONTHS = {"oy"};
    private static final String[] YEARS = {"yil"};
    private static final uz INSTANCE = new uz();

    private uz() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static uz getInstance() {
        return INSTANCE;
    }
}
