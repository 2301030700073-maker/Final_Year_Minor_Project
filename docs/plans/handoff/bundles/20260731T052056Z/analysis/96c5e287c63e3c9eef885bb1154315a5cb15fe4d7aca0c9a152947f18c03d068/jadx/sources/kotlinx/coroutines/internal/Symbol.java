package kotlinx.coroutines.internal;

import android.text.TextUtils;
import androidx.compose.ui.Modifier;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import com.google.gson.JsonIOException;
import com.google.gson.internal.ObjectConstructor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Symbol implements EmojiProcessor$EmojiProcessCallback, SupportSQLiteQuery, ObjectConstructor {
    public final /* synthetic */ int $r8$classId;
    public String symbol;

    public Symbol(String str, String str2, String str3) {
        this.$r8$classId = 10;
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.symbol = str;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.$r8$classId) {
            case 3:
                throw new JsonIOException(this.symbol);
            case 4:
                throw new JsonIOException(this.symbol);
            case 5:
                throw new JsonIOException(this.symbol);
            default:
                throw new JsonIOException(this.symbol);
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return this.symbol;
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (!TextUtils.equals(charSequence.subSequence(i, i2), this.symbol)) {
            return true;
        }
        typefaceEmojiRasterizer.mCache = (typefaceEmojiRasterizer.mCache & 3) | 4;
        return false;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.m(new StringBuilder("<"), this.symbol, '>');
            case 8:
                return this.symbol;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ Symbol(int i, String str) {
        this.$r8$classId = i;
        this.symbol = str;
    }

    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public Object getResult() {
        return this;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
    }
}
