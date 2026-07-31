package androidx.compose.ui.text;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformParagraphStyle {
    public static final PlatformParagraphStyle Default = new PlatformParagraphStyle(0, false);
    public final int emojiSupportMatch;
    public final boolean includeFontPadding;

    public PlatformParagraphStyle() {
        this.includeFontPadding = false;
        this.emojiSupportMatch = 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformParagraphStyle)) {
            return false;
        }
        PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj;
        return this.includeFontPadding == platformParagraphStyle.includeFontPadding && this.emojiSupportMatch == platformParagraphStyle.emojiSupportMatch;
    }

    public final int hashCode() {
        return ((this.includeFontPadding ? 1231 : 1237) * 31) + this.emojiSupportMatch;
    }

    public final String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.includeFontPadding + ", emojiSupportMatch=" + ((Object) EmojiSupportMatch.m683toStringimpl(this.emojiSupportMatch)) + ')';
    }

    public PlatformParagraphStyle(int i, boolean z) {
        this.includeFontPadding = z;
        this.emojiSupportMatch = i;
    }
}
