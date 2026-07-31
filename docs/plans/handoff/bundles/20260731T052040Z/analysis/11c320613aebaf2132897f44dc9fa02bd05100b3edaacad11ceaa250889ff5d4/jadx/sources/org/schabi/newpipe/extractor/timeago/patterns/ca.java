package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ca extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"segon", "segons"};
    private static final String[] MINUTES = {"minut", "minuts"};
    private static final String[] HOURS = {"hora", "hores"};
    private static final String[] DAYS = {"dia", "dies"};
    private static final String[] WEEKS = {"setmana", "setmanes"};
    private static final String[] MONTHS = {"mes", "mesos"};
    private static final String[] YEARS = {"any", "anys"};
    private static final ca INSTANCE = new ca();

    private ca() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ca getInstance() {
        return INSTANCE;
    }
}
