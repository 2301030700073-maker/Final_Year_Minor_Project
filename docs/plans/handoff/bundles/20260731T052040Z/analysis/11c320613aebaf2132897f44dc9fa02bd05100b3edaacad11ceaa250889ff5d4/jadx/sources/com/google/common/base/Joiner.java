package com.google.common.base;

import android.text.TextUtils;
import androidx.compose.ui.Modifier;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import j$.util.Objects;
import java.io.IOException;
import java.util.AbstractCollection;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Joiner implements EmojiProcessor$EmojiProcessCallback {
    public final /* synthetic */ int $r8$classId;
    public String separator;

    public Joiner(String str) {
        this.$r8$classId = 0;
        str.getClass();
        this.separator = str;
    }

    public void appendTo(StringBuilder sb, AbstractCollection abstractCollection) {
        Iterator it = abstractCollection.iterator();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) this.separator);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (!TextUtils.equals(charSequence.subSequence(i, i2), this.separator)) {
            return true;
        }
        typefaceEmojiRasterizer.mCache = (typefaceEmojiRasterizer.mCache & 3) | 4;
        return false;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                return Modifier.CC.m(new StringBuilder("<"), this.separator, '>');
            default:
                return super.toString();
        }
    }

    public /* synthetic */ Joiner(String str, int i) {
        this.$r8$classId = i;
        this.separator = str;
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public Object getResult() {
        return this;
    }
}
