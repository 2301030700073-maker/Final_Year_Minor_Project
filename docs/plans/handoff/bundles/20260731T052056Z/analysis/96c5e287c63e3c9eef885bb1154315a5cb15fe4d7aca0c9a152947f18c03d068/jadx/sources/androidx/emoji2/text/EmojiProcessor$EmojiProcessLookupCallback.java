package androidx.emoji2.text;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
