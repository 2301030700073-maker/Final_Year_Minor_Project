package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class pl extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekund", "sekundy", "sekundę"};
    private static final String[] MINUTES = {"minut", "minuty", "minutę"};
    private static final String[] HOURS = {"godzin", "godziny", "godzinę"};
    private static final String[] DAYS = {"dni", "dzień"};
    private static final String[] WEEKS = {"tydzień", "tygodnie"};
    private static final String[] MONTHS = {"miesiąc", "miesiące", "miesięcy"};
    private static final String[] YEARS = {"lat", "lata", "rok"};
    private static final pl INSTANCE = new pl();

    private pl() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static pl getInstance() {
        return INSTANCE;
    }
}
