package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class lt extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekundes", "sekundę", "sekundžių"};
    private static final String[] MINUTES = {"minutes", "minutę", "minučių"};
    private static final String[] HOURS = {"valandas", "valandą", "valandų"};
    private static final String[] DAYS = {"dienas", "dieną"};
    private static final String[] WEEKS = {"savaites", "savaitę"};
    private static final String[] MONTHS = {"mėnesius", "mėnesių", "mėnesį"};
    private static final String[] YEARS = {"metus", "metų"};
    private static final lt INSTANCE = new lt();

    private lt() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static lt getInstance() {
        return INSTANCE;
    }
}
