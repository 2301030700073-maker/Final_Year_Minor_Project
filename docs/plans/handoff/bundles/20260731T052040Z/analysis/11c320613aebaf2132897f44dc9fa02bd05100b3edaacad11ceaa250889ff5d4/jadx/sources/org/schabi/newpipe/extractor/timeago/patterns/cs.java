package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class cs extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekundami", "sekundou"};
    private static final String[] MINUTES = {"minutami", "minutou"};
    private static final String[] HOURS = {"hodinami", "hodinou"};
    private static final String[] DAYS = {"dny", "včera"};
    private static final String[] WEEKS = {"týdnem", "týdny"};
    private static final String[] MONTHS = {"měsícem", "měsíci"};
    private static final String[] YEARS = {"rokem", "roky", "lety"};
    private static final cs INSTANCE = new cs();

    private cs() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static cs getInstance() {
        return INSTANCE;
    }
}
