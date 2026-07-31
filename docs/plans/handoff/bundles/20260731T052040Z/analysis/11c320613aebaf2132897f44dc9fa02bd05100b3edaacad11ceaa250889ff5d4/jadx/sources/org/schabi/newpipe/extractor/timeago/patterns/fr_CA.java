package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class fr_CA extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"seconde", "secondes"};
    private static final String[] MINUTES = {"minute", "minutes"};
    private static final String[] HOURS = {"heures", "heure"};
    private static final String[] DAYS = {"jour", "jours"};
    private static final String[] WEEKS = {"semaine", "semaines"};
    private static final String[] MONTHS = {"mois"};
    private static final String[] YEARS = {"an", "ans"};
    private static final fr_CA INSTANCE = new fr_CA();

    private fr_CA() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static fr_CA getInstance() {
        return INSTANCE;
    }
}
