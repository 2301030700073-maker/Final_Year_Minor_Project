package net.thunderbird.core.android.account;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuoteStyle {
    public static final /* synthetic */ QuoteStyle[] $VALUES;
    public static final QuoteStyle HEADER;
    public static final QuoteStyle PREFIX;

    static {
        QuoteStyle quoteStyle = new QuoteStyle("PREFIX", 0);
        PREFIX = quoteStyle;
        QuoteStyle quoteStyle2 = new QuoteStyle("HEADER", 1);
        HEADER = quoteStyle2;
        $VALUES = new QuoteStyle[]{quoteStyle, quoteStyle2};
    }

    public static QuoteStyle valueOf(String str) {
        return (QuoteStyle) Enum.valueOf(QuoteStyle.class, str);
    }

    public static QuoteStyle[] values() {
        return (QuoteStyle[]) $VALUES.clone();
    }
}
