package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ky extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"секунд"};
    private static final String[] MINUTES = {"мүнөт"};
    private static final String[] HOURS = {"саат"};
    private static final String[] DAYS = {"күн"};
    private static final String[] WEEKS = {"апта"};
    private static final String[] MONTHS = {"ай"};
    private static final String[] YEARS = {"жыл"};
    private static final ky INSTANCE = new ky();

    private ky() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ky getInstance() {
        return INSTANCE;
    }
}
