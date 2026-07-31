package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.emoji2.text.EmojiCompat;
import coil3.memory.MemoryCacheService;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AppCompatEmojiTextHelper {
    public final MemoryCacheService mEmojiTextViewHelper;
    public final TextView mView;

    public AppCompatEmojiTextHelper(final TextView textView) {
        this.mView = textView;
        MemoryCacheService memoryCacheService = new MemoryCacheService();
        memoryCacheService.imageLoader = new UStringsKt(textView) { // from class: androidx.emoji2.viewsintegration.EmojiTextViewHelper$SkippingHelper19
            public final EmojiTextViewHelper$HelperInternal19 mHelperDelegate;

            {
                this.mHelperDelegate = new EmojiTextViewHelper$HelperInternal19(textView);
            }

            @Override // kotlin.text.UStringsKt
            public final InputFilter[] getFilters(InputFilter[] inputFilterArr) {
                return !EmojiCompat.isConfigured() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
            }

            @Override // kotlin.text.UStringsKt
            public final boolean isEnabled() {
                return this.mHelperDelegate.mEnabled;
            }

            @Override // kotlin.text.UStringsKt
            public final void setAllCaps(boolean z) {
                if (EmojiCompat.isConfigured()) {
                    this.mHelperDelegate.setAllCaps(z);
                }
            }

            @Override // kotlin.text.UStringsKt
            public final void setEnabled(boolean z) {
                boolean isConfigured = EmojiCompat.isConfigured();
                EmojiTextViewHelper$HelperInternal19 emojiTextViewHelper$HelperInternal19 = this.mHelperDelegate;
                if (isConfigured) {
                    emojiTextViewHelper$HelperInternal19.setEnabled(z);
                } else {
                    emojiTextViewHelper$HelperInternal19.mEnabled = z;
                }
            }

            @Override // kotlin.text.UStringsKt
            public final TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
                return !EmojiCompat.isConfigured() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
            }
        };
        this.mEmojiTextViewHelper = memoryCacheService;
    }

    public final InputFilter[] getFilters(InputFilter[] inputFilterArr) {
        return ((UStringsKt) this.mEmojiTextViewHelper.imageLoader).getFilters(inputFilterArr);
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
        ((UStringsKt) this.mEmojiTextViewHelper.imageLoader).setAllCaps(z);
    }

    public final void setEnabled(boolean z) {
        ((UStringsKt) this.mEmojiTextViewHelper.imageLoader).setEnabled(z);
    }
}
