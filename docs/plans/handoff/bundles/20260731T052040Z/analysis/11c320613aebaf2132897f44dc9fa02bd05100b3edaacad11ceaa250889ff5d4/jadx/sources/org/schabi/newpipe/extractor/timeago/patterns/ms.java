package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ms extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"saat"};
    private static final String[] MINUTES = {"minit"};
    private static final String[] HOURS = {"jam"};
    private static final String[] DAYS = {"hari"};
    private static final String[] WEEKS = {"minggu"};
    private static final String[] MONTHS = {"bulan"};
    private static final String[] YEARS = {"tahun"};
    private static final ms INSTANCE = new ms();

    private ms() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ms getInstance() {
        return INSTANCE;
    }
}
