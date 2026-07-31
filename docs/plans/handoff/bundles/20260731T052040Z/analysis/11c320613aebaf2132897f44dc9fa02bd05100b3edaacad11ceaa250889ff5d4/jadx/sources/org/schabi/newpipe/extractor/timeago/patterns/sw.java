package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class sw extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekunde"};
    private static final String[] MINUTES = {"dakika"};
    private static final String[] HOURS = {"saa"};
    private static final String[] DAYS = {"siku"};
    private static final String[] WEEKS = {"wiki"};
    private static final String[] MONTHS = {"Mwezi", "miezi"};
    private static final String[] YEARS = {"Miaka", "Mwaka"};
    private static final sw INSTANCE = new sw();

    private sw() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static sw getInstance() {
        return INSTANCE;
    }
}
