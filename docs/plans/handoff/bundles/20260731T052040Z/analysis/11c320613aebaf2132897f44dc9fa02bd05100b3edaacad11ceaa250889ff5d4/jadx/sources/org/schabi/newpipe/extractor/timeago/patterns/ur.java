package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ur extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"سیکنڈ", "سیکنڈز"};
    private static final String[] MINUTES = {"منٹ", "منٹس"};
    private static final String[] HOURS = {"گھنٹہ", "گھنٹے"};
    private static final String[] DAYS = {"دن"};
    private static final String[] WEEKS = {"ہفتہ", "ہفتے"};
    private static final String[] MONTHS = {"ماہ"};
    private static final String[] YEARS = {"سال"};
    private static final ur INSTANCE = new ur();

    private ur() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ur getInstance() {
        return INSTANCE;
    }
}
