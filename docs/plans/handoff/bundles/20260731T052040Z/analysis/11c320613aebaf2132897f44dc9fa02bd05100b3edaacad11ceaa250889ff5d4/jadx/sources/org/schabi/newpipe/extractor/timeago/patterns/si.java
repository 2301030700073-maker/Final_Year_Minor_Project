package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class si extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"තත්පර"};
    private static final String[] MINUTES = {"මිනිත්තු"};
    private static final String[] HOURS = {"පැය"};
    private static final String[] DAYS = {"දින"};
    private static final String[] WEEKS = {"සති"};
    private static final String[] MONTHS = {"මාස"};
    private static final String[] YEARS = {"වසර"};
    private static final si INSTANCE = new si();

    private si() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static si getInstance() {
        return INSTANCE;
    }
}
