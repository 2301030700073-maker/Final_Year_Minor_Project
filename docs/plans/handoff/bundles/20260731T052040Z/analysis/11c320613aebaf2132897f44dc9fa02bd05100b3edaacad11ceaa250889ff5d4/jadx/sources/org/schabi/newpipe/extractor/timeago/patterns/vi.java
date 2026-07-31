package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class vi extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"giây"};
    private static final String[] MINUTES = {"phút"};
    private static final String[] HOURS = {"giờ", "tiếng"};
    private static final String[] DAYS = {"ngày"};
    private static final String[] WEEKS = {"tuần"};
    private static final String[] MONTHS = {"tháng"};
    private static final String[] YEARS = {"năm"};
    private static final vi INSTANCE = new vi();

    private vi() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static vi getInstance() {
        return INSTANCE;
    }
}
