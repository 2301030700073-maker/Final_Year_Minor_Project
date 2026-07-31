package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class hy extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"վայրկյան"};
    private static final String[] MINUTES = {"րոպե"};
    private static final String[] HOURS = {"ժամ"};
    private static final String[] DAYS = {"օր"};
    private static final String[] WEEKS = {"շաբաթ"};
    private static final String[] MONTHS = {"ամիս"};
    private static final String[] YEARS = {"տարի"};
    private static final hy INSTANCE = new hy();

    private hy() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static hy getInstance() {
        return INSTANCE;
    }
}
