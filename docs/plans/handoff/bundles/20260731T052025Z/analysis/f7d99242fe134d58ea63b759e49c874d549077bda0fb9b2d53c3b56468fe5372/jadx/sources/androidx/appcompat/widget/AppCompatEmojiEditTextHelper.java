package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.R$styleable;
import androidx.compose.ui.platform.WeakCache;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.viewsintegration.EmojiInputConnection;
import androidx.emoji2.viewsintegration.EmojiKeyListener;
import androidx.emoji2.viewsintegration.EmojiTextWatcher;
import androidx.fragment.app.Fragment;
import androidx.room.util.RelationUtil;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatEmojiEditTextHelper {
    public final Fragment.AnonymousClass7 mEmojiEditTextHelper;
    public final EditText mView;

    public AppCompatEmojiEditTextHelper(EditText editText) {
        this.mView = editText;
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        anonymousClass7.this$0 = new WeakCache(editText);
        this.mEmojiEditTextHelper = anonymousClass7;
    }

    public final KeyListener getKeyListener(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((WeakCache) this.mEmojiEditTextHelper.this$0).getClass();
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
    }

    public final void loadFromAttributes(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i, 0);
        try {
            boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            setEnabled(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final EmojiInputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        Fragment.AnonymousClass7 anonymousClass7 = this.mEmojiEditTextHelper;
        if (inputConnection == null) {
            anonymousClass7.getClass();
            inputConnection2 = null;
        } else {
            WeakCache weakCache = (WeakCache) anonymousClass7.this$0;
            weakCache.getClass();
            if (!(inputConnection instanceof EmojiInputConnection)) {
                inputConnection = new EmojiInputConnection((EditText) weakCache.values, inputConnection, editorInfo);
            }
            inputConnection2 = inputConnection;
        }
        return (EmojiInputConnection) inputConnection2;
    }

    public final void setEnabled(boolean z) {
        EmojiTextWatcher emojiTextWatcher = (EmojiTextWatcher) ((WeakCache) this.mEmojiEditTextHelper.this$0).referenceQueue;
        if (emojiTextWatcher.mEnabled != z) {
            if (emojiTextWatcher.mInitCallback != null) {
                EmojiCompat emojiCompat = EmojiCompat.get();
                EmojiTextWatcher.InitCallbackImpl initCallbackImpl = emojiTextWatcher.mInitCallback;
                emojiCompat.getClass();
                RelationUtil.checkNotNull(initCallbackImpl, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = emojiCompat.mInitLock;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    emojiCompat.mInitCallbacks.remove(initCallbackImpl);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            emojiTextWatcher.mEnabled = z;
            if (z) {
                EmojiTextWatcher.processTextOnEnablingEvent(emojiTextWatcher.mEditText, EmojiCompat.get().getLoadState());
            }
        }
    }
}
