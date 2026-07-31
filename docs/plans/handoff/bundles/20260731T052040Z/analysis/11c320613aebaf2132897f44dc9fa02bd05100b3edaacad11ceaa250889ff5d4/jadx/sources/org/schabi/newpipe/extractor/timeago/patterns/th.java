package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class th extends PatternsHolder {
    private static final String WORD_SEPARATOR = "";
    private static final String[] SECONDS = {"วินาทีที่ผ่านมา"};
    private static final String[] MINUTES = {"นาทีที่ผ่านมา"};
    private static final String[] HOURS = {"ชั่วโมงที่ผ่านมา"};
    private static final String[] DAYS = {"วันที่ผ่านมา"};
    private static final String[] WEEKS = {"สัปดาห์ที่ผ่านมา"};
    private static final String[] MONTHS = {"เดือนที่ผ่านมา"};
    private static final String[] YEARS = {"ปีที่ผ่านมา"};
    private static final th INSTANCE = new th();

    private th() {
        super("", SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static th getInstance() {
        return INSTANCE;
    }
}
