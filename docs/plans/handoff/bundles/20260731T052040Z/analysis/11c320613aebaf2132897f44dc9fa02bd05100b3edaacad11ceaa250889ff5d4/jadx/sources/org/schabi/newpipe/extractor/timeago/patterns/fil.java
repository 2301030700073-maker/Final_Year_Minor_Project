package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class fil extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"segundo"};
    private static final String[] MINUTES = {"minuto"};
    private static final String[] HOURS = {"oras"};
    private static final String[] DAYS = {"araw"};
    private static final String[] WEEKS = {"linggo"};
    private static final String[] MONTHS = {"buwan"};
    private static final String[] YEARS = {"taon"};
    private static final fil INSTANCE = new fil();

    private fil() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static fil getInstance() {
        return INSTANCE;
    }
}
