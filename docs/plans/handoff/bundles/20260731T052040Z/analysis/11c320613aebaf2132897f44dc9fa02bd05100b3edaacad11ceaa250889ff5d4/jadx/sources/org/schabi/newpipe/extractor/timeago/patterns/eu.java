package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class eu extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"segundo"};
    private static final String[] MINUTES = {"minutu"};
    private static final String[] HOURS = {"ordu", "ordubete"};
    private static final String[] DAYS = {"egun"};
    private static final String[] WEEKS = {"aste", "astebete"};
    private static final String[] MONTHS = {"hilabete"};
    private static final String[] YEARS = {"urte", "urtebete"};
    private static final eu INSTANCE = new eu();

    private eu() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static eu getInstance() {
        return INSTANCE;
    }
}
