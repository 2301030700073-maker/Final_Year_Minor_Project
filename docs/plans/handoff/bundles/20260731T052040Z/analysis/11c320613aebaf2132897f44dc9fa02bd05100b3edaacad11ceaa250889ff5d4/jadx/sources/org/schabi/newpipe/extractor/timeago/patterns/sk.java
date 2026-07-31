package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class sk extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekundami", "sekundou"};
    private static final String[] MINUTES = {"minútami", "minútou"};
    private static final String[] HOURS = {"hodinami", "hodinou"};
    private static final String[] DAYS = {"dňami", "dňom"};
    private static final String[] WEEKS = {"týždňami", "týždňom"};
    private static final String[] MONTHS = {"mesiacmi", "mesiacom"};
    private static final String[] YEARS = {"rokmi", "rokom"};
    private static final sk INSTANCE = new sk();

    private sk() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static sk getInstance() {
        return INSTANCE;
    }
}
