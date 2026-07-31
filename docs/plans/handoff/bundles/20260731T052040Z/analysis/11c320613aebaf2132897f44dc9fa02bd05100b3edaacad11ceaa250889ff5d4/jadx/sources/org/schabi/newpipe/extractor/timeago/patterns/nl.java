package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class nl extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"seconde", "seconden"};
    private static final String[] MINUTES = {"minuten", "minuut"};
    private static final String[] HOURS = {"uur"};
    private static final String[] DAYS = {"dag", "dagen"};
    private static final String[] WEEKS = {"week", "weken"};
    private static final String[] MONTHS = {"maand", "maanden"};
    private static final String[] YEARS = {"jaar"};
    private static final nl INSTANCE = new nl();

    private nl() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static nl getInstance() {
        return INSTANCE;
    }
}
