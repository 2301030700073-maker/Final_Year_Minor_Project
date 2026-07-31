package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ka extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"წამის"};
    private static final String[] MINUTES = {"წუთის"};
    private static final String[] HOURS = {"საათის"};
    private static final String[] DAYS = {"დღის"};
    private static final String[] WEEKS = {"კვირის"};
    private static final String[] MONTHS = {"თვის"};
    private static final String[] YEARS = {"წლის"};
    private static final ka INSTANCE = new ka();

    private ka() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ka getInstance() {
        return INSTANCE;
    }
}
