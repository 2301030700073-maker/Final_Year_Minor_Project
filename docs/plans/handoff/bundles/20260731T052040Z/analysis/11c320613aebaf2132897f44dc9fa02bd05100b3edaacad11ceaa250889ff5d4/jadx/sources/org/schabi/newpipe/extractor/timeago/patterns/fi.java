package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class fi extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"sekunti", "sekuntia"};
    private static final String[] MINUTES = {"minuutti", "minuuttia"};
    private static final String[] HOURS = {"tunti", "tuntia"};
    private static final String[] DAYS = {"päivä", "päivää"};
    private static final String[] WEEKS = {"viikko", "viikkoa"};
    private static final String[] MONTHS = {"kuukausi", "kuukautta"};
    private static final String[] YEARS = {"vuosi", "vuotta"};
    private static final fi INSTANCE = new fi();

    private fi() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static fi getInstance() {
        return INSTANCE;
    }
}
