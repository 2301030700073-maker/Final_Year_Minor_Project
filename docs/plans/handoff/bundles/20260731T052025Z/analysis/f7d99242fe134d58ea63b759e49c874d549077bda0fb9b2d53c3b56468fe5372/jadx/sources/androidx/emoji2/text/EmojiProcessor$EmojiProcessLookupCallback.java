package androidx.emoji2.text;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmojiProcessor$EmojiProcessLookupCallback implements EmojiProcessor$EmojiProcessCallback {
    public final int mOffset;
    public int start = -1;
    public int end = -1;

    public EmojiProcessor$EmojiProcessLookupCallback(int i) {
        this.mOffset = i;
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public final boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        int i3 = this.mOffset;
        if (i > i3 || i3 >= i2) {
            return i2 <= i3;
        }
        this.start = i;
        this.end = i2;
        return false;
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public final Object getResult() {
        return this;
    }
}
