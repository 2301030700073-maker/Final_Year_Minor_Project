package org.apache.commons.io;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StandardLineSeparator {
    public static final /* synthetic */ StandardLineSeparator[] $VALUES;
    public static final StandardLineSeparator CRLF;
    public static final StandardLineSeparator LF;

    /* JADX INFO: Fake field, exist only in values array */
    StandardLineSeparator EF0;

    static {
        StandardLineSeparator standardLineSeparator = new StandardLineSeparator("CR", 0);
        StandardLineSeparator standardLineSeparator2 = new StandardLineSeparator("CRLF", 1);
        CRLF = standardLineSeparator2;
        StandardLineSeparator standardLineSeparator3 = new StandardLineSeparator("LF", 2);
        LF = standardLineSeparator3;
        $VALUES = new StandardLineSeparator[]{standardLineSeparator, standardLineSeparator2, standardLineSeparator3};
    }

    public static StandardLineSeparator valueOf(String str) {
        return (StandardLineSeparator) Enum.valueOf(StandardLineSeparator.class, str);
    }

    public static StandardLineSeparator[] values() {
        return (StandardLineSeparator[]) $VALUES.clone();
    }
}
