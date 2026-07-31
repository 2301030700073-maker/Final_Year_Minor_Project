package androidx.emoji2.viewsintegration;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.transition.Transition;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EmojiInputConnection extends InputConnectionWrapper {
    public final Transition.AnonymousClass1 mEmojiCompatDeleteHelper;
    public final EditText mTextView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiInputConnection(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        Transition.AnonymousClass1 anonymousClass1 = new Transition.AnonymousClass1(13);
        this.mTextView = editText;
        this.mEmojiCompatDeleteHelper = anonymousClass1;
        if (EmojiCompat.isConfigured()) {
            EmojiCompat emojiCompat = EmojiCompat.get();
            if (emojiCompat.getLoadState() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            EmojiCompat.CompatInternal19 compatInternal19 = emojiCompat.mHelper;
            compatInternal19.getClass();
            Bundle bundle = editorInfo.extras;
            MetadataList metadataList = (MetadataList) compatInternal19.mMetadataRepo.executorServiceOrNull;
            int __offset = metadataList.__offset(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", __offset != 0 ? ((ByteBuffer) metadataList.bb).getInt(__offset + metadataList.bb_pos) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.mTextView.getEditableText();
        this.mEmojiCompatDeleteHelper.getClass();
        return Transition.AnonymousClass1.handleDeleteSurroundingText(this, editableText, i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.mTextView.getEditableText();
        this.mEmojiCompatDeleteHelper.getClass();
        return Transition.AnonymousClass1.handleDeleteSurroundingText(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
