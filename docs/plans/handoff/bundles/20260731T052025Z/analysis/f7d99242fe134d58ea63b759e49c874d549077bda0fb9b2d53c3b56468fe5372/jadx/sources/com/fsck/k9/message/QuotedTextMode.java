package com.fsck.k9.message;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuotedTextMode {
    public static final /* synthetic */ QuotedTextMode[] $VALUES;
    public static final QuotedTextMode HIDE;
    public static final QuotedTextMode NONE;
    public static final QuotedTextMode SHOW;

    static {
        QuotedTextMode quotedTextMode = new QuotedTextMode("NONE", 0);
        NONE = quotedTextMode;
        QuotedTextMode quotedTextMode2 = new QuotedTextMode("SHOW", 1);
        SHOW = quotedTextMode2;
        QuotedTextMode quotedTextMode3 = new QuotedTextMode("HIDE", 2);
        HIDE = quotedTextMode3;
        $VALUES = new QuotedTextMode[]{quotedTextMode, quotedTextMode2, quotedTextMode3};
    }

    public static QuotedTextMode valueOf(String str) {
        return (QuotedTextMode) Enum.valueOf(QuotedTextMode.class, str);
    }

    public static QuotedTextMode[] values() {
        return (QuotedTextMode[]) $VALUES.clone();
    }
}
