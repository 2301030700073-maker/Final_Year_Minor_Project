package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.compose.ui.unit.IntRectKt;
import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.Fragment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatEmojiTextHelper {
    public final Fragment.AnonymousClass7 mEmojiTextViewHelper;
    public final TextView mView;

    public AppCompatEmojiTextHelper(final TextView textView) {
        this.mView = textView;
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        anonymousClass7.this$0 = new IntRectKt(textView) { // from class: androidx.emoji2.viewsintegration.EmojiTextViewHelper$SkippingHelper19
            public final EmojiTextViewHelper$HelperInternal19 mHelperDelegate;

            {
                this.mHelperDelegate = new EmojiTextViewHelper$HelperInternal19(textView);
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final InputFilter[] getFilters(InputFilter[] inputFilterArr) {
                return !EmojiCompat.isConfigured() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final boolean isEnabled() {
                return this.mHelperDelegate.mEnabled;
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final void setAllCaps(boolean z) {
                if (EmojiCompat.isConfigured()) {
                    this.mHelperDelegate.setAllCaps(z);
                }
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final void setEnabled(boolean z) {
                boolean isConfigured = EmojiCompat.isConfigured();
                EmojiTextViewHelper$HelperInternal19 emojiTextViewHelper$HelperInternal19 = this.mHelperDelegate;
                if (isConfigured) {
                    emojiTextViewHelper$HelperInternal19.setEnabled(z);
                } else {
                    emojiTextViewHelper$HelperInternal19.mEnabled = z;
                }
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
                return !EmojiCompat.isConfigured() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
            }
        };
        this.mEmojiTextViewHelper = anonymousClass7;
    }

    public final InputFilter[] getFilters(InputFilter[] inputFilterArr) {
        return ((IntRectKt) this.mEmojiTextViewHelper.this$0).getFilters(inputFilterArr);
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

    public final void setAllCaps(boolean z) {
        ((IntRectKt) this.mEmojiTextViewHelper.this$0).setAllCaps(z);
    }

    public final void setEnabled(boolean z) {
        ((IntRectKt) this.mEmojiTextViewHelper.this$0).setEnabled(z);
    }
}
