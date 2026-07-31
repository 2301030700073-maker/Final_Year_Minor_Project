package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class hi extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"सेकंड"};
    private static final String[] MINUTES = {"मिनट"};
    private static final String[] HOURS = {"घंटा", "घंटे"};
    private static final String[] DAYS = {"दिन"};
    private static final String[] WEEKS = {"सप्ताह", "हफ़्ते"};
    private static final String[] MONTHS = {"महीना", "महीने"};
    private static final String[] YEARS = {"वर्ष"};
    private static final hi INSTANCE = new hi();

    private hi() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static hi getInstance() {
        return INSTANCE;
    }
}
