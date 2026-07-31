package androidx.compose.ui.text;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlatformParagraphStyle {
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
        return "PlatformParagraphStyle(includeFontPadding=" + this.includeFontPadding + ", emojiSupportMatch=" + ((Object) EmojiSupportMatch.m405toStringimpl(this.emojiSupportMatch)) + ')';
    }

    public PlatformParagraphStyle(int i, boolean z) {
        this.includeFontPadding = z;
        this.emojiSupportMatch = i;
    }
}
