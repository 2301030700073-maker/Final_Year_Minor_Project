package androidx.emoji2.viewsintegration;

import android.os.Handler;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmojiInputFilter implements InputFilter {
    public InitCallbackImpl mInitCallback;
    public final TextView mTextView;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InitCallbackImpl extends EmojiCompat.InitCallback implements Runnable {
        public final WeakReference mEmojiInputFilterReference;
        public final WeakReference mViewRef;

        public InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.mViewRef = new WeakReference(textView);
            this.mEmojiInputFilterReference = new WeakReference(emojiInputFilter);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void onInitialized() {
            Handler handler;
            TextView textView = (TextView) this.mViewRef.get();
            if (textView == null || (handler = textView.getHandler()) == null) {
                return;
            }
            handler.post(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            InputFilter[] filters;
            int length;
            TextView textView = (TextView) this.mViewRef.get();
            InputFilter inputFilter = (InputFilter) this.mEmojiInputFilterReference.get();
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    if (textView.isAttachedToWindow()) {
                        CharSequence text = textView.getText();
                        EmojiCompat emojiCompat = EmojiCompat.get();
                        if (text == null) {
                            length = 0;
                        } else {
                            emojiCompat.getClass();
                            length = text.length();
                        }
                        CharSequence process = emojiCompat.process(0, length, 0, text);
                        if (text == process) {
                            return;
                        }
                        int selectionStart = Selection.getSelectionStart(process);
                        int selectionEnd = Selection.getSelectionEnd(process);
                        textView.setText(process);
                        if (process instanceof Spannable) {
                            Spannable spannable = (Spannable) process;
                            if (selectionStart >= 0 && selectionEnd >= 0) {
                                Selection.setSelection(spannable, selectionStart, selectionEnd);
                                return;
                            } else if (selectionStart >= 0) {
                                Selection.setSelection(spannable, selectionStart);
                                return;
                            } else {
                                if (selectionEnd >= 0) {
                                    Selection.setSelection(spannable, selectionEnd);
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
            }
        }
    }

    public EmojiInputFilter(TextView textView) {
        this.mTextView = textView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
    
        if (r1 != 3) goto L24;
     */
    @Override // android.text.InputFilter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence filter(java.lang.CharSequence r4, int r5, int r6, android.text.Spanned r7, int r8, int r9) {
        /*
            r3 = this;
            android.widget.TextView r0 = r3.mTextView
            r0.isInEditMode()
            androidx.emoji2.text.EmojiCompat r1 = androidx.emoji2.text.EmojiCompat.get()
            int r1 = r1.getLoadState()
            if (r1 == 0) goto L45
            r2 = 1
            if (r1 == r2) goto L16
            r5 = 3
            if (r1 == r5) goto L45
            goto L44
        L16:
            if (r9 != 0) goto L27
            if (r8 != 0) goto L27
            int r3 = r7.length()
            if (r3 != 0) goto L27
            java.lang.CharSequence r3 = r0.getText()
            if (r4 != r3) goto L27
            goto L44
        L27:
            if (r4 == 0) goto L44
            if (r5 != 0) goto L32
            int r3 = r4.length()
            if (r6 != r3) goto L32
            goto L36
        L32:
            java.lang.CharSequence r4 = r4.subSequence(r5, r6)
        L36:
            androidx.emoji2.text.EmojiCompat r3 = androidx.emoji2.text.EmojiCompat.get()
            int r5 = r4.length()
            r6 = 0
            java.lang.CharSequence r3 = r3.process(r6, r5, r6, r4)
            return r3
        L44:
            return r4
        L45:
            androidx.emoji2.text.EmojiCompat r5 = androidx.emoji2.text.EmojiCompat.get()
            androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl r6 = r3.mInitCallback
            if (r6 != 0) goto L54
            androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl r6 = new androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl
            r6.<init>(r0, r3)
            r3.mInitCallback = r6
        L54:
            androidx.emoji2.viewsintegration.EmojiInputFilter$InitCallbackImpl r3 = r3.mInitCallback
            r5.registerInitCallback(r3)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.viewsintegration.EmojiInputFilter.filter(java.lang.CharSequence, int, int, android.text.Spanned, int, int):java.lang.CharSequence");
    }
}
