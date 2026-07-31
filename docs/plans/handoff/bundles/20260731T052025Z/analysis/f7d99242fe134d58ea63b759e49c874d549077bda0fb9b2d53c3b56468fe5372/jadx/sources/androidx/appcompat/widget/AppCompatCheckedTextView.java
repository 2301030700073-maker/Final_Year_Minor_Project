package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.widget.TintableCompoundDrawablesView;
import androidx.datastore.preferences.protobuf.Utf8;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatCheckedTextView extends CheckedTextView implements TintableCompoundDrawablesView {
    public AppCompatEmojiTextHelper mAppCompatEmojiTextHelper;
    public final AppCompatBackgroundHelper mBackgroundTintHelper;
    public final ProvidedValue mCheckedHelper;
    public final AppCompatTextHelper mTextHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0087 A[Catch: all -> 0x0066, TryCatch #1 {all -> 0x0066, blocks: (B:3:0x004d, B:5:0x0054, B:8:0x005a, B:9:0x0080, B:11:0x0087, B:12:0x008e, B:14:0x0095, B:21:0x0069, B:23:0x006f, B:25:0x0075), top: B:2:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0095 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #1 {all -> 0x0066, blocks: (B:3:0x004d, B:5:0x0054, B:8:0x005a, B:9:0x0080, B:11:0x0087, B:12:0x008e, B:14:0x0095, B:21:0x0069, B:23:0x006f, B:25:0x0075), top: B:2:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatCheckedTextView(android.content.Context r10, android.util.AttributeSet r11) {
        /*
            r9 = this;
            androidx.appcompat.widget.TintContextWrapper.wrap(r10)
            r5 = 2130968794(0x7f0400da, float:1.7546252E38)
            r9.<init>(r10, r11, r5)
            android.content.Context r10 = r9.getContext()
            androidx.appcompat.widget.ThemeUtils.checkAppCompatTheme(r10, r9)
            androidx.appcompat.widget.AppCompatTextHelper r10 = new androidx.appcompat.widget.AppCompatTextHelper
            r10.<init>(r9)
            r9.mTextHelper = r10
            r10.loadFromAttributes(r11, r5)
            r10.applyCompoundDrawablesTints()
            androidx.appcompat.widget.AppCompatBackgroundHelper r10 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r10.<init>(r9)
            r9.mBackgroundTintHelper = r10
            r10.loadFromAttributes(r11, r5)
            androidx.compose.runtime.ProvidedValue r10 = new androidx.compose.runtime.ProvidedValue
            r7 = 1
            r10.<init>(r9, r7)
            r9.mCheckedHelper = r10
            android.content.Context r10 = r9.getContext()
            int[] r2 = androidx.appcompat.R$styleable.CheckedTextView
            androidx.core.view.MenuHostHelper r10 = androidx.core.view.MenuHostHelper.obtainStyledAttributes(r10, r11, r2, r5)
            java.lang.Object r0 = r10.mMenuProviders
            r8 = r0
            android.content.res.TypedArray r8 = (android.content.res.TypedArray) r8
            android.content.Context r1 = r9.getContext()
            java.lang.Object r0 = r10.mMenuProviders
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r6 = 0
            r0 = r9
            r3 = r11
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5, r6)
            boolean r9 = r8.hasValue(r7)     // Catch: java.lang.Throwable -> L66
            r11 = 0
            if (r9 == 0) goto L69
            int r9 = r8.getResourceId(r7, r11)     // Catch: java.lang.Throwable -> L66
            if (r9 == 0) goto L69
            android.content.Context r1 = r0.getContext()     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L69
            android.graphics.drawable.Drawable r9 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.getDrawable(r1, r9)     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L69
            r0.setCheckMarkDrawable(r9)     // Catch: java.lang.Throwable -> L66 android.content.res.Resources.NotFoundException -> L69
            goto L80
        L66:
            r0 = move-exception
            r9 = r0
            goto Lad
        L69:
            boolean r9 = r8.hasValue(r11)     // Catch: java.lang.Throwable -> L66
            if (r9 == 0) goto L80
            int r9 = r8.getResourceId(r11, r11)     // Catch: java.lang.Throwable -> L66
            if (r9 == 0) goto L80
            android.content.Context r11 = r0.getContext()     // Catch: java.lang.Throwable -> L66
            android.graphics.drawable.Drawable r9 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.getDrawable(r11, r9)     // Catch: java.lang.Throwable -> L66
            r0.setCheckMarkDrawable(r9)     // Catch: java.lang.Throwable -> L66
        L80:
            r9 = 2
            boolean r11 = r8.hasValue(r9)     // Catch: java.lang.Throwable -> L66
            if (r11 == 0) goto L8e
            android.content.res.ColorStateList r9 = r10.getColorStateList(r9)     // Catch: java.lang.Throwable -> L66
            r0.setCheckMarkTintList(r9)     // Catch: java.lang.Throwable -> L66
        L8e:
            r9 = 3
            boolean r11 = r8.hasValue(r9)     // Catch: java.lang.Throwable -> L66
            if (r11 == 0) goto La2
            r11 = -1
            int r9 = r8.getInt(r9, r11)     // Catch: java.lang.Throwable -> L66
            r11 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r9, r11)     // Catch: java.lang.Throwable -> L66
            r0.setCheckMarkTintMode(r9)     // Catch: java.lang.Throwable -> L66
        La2:
            r10.recycle()
            androidx.appcompat.widget.AppCompatEmojiTextHelper r9 = r0.getEmojiTextViewHelper()
            r9.loadFromAttributes(r3, r5)
            return
        Lad:
            r10.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCheckedTextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new AppCompatEmojiTextHelper(this);
        }
        return this.mAppCompatEmojiTextHelper;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.applySupportBackgroundTint();
        }
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            providedValue.applyCheckMarkTint();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return IntRectKt.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintList();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.getSupportBackgroundTintMode();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            return (ColorStateList) providedValue.mutationPolicy;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            return (PorterDuff.Mode) providedValue.providedValue;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.getCompoundDrawableTintList();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.getCompoundDrawableTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        MathKt.onCreateInputConnection(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().setAllCaps(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            if (providedValue.canOverride) {
                providedValue.canOverride = false;
            } else {
                providedValue.canOverride = true;
                providedValue.applyCheckMarkTint();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(IntRectKt.wrapCustomSelectionActionModeCallback(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().setEnabled(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setSupportBackgroundTintMode(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            providedValue.mutationPolicy = colorStateList;
            providedValue.explicitNull = true;
            providedValue.applyCheckMarkTint();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            providedValue.providedValue = mode;
            providedValue.isDynamic = true;
            providedValue.applyCheckMarkTint();
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        appCompatTextHelper.setCompoundDrawableTintList(colorStateList);
        appCompatTextHelper.applyCompoundDrawablesTints();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        appCompatTextHelper.setCompoundDrawableTintMode(mode);
        appCompatTextHelper.applyCompoundDrawablesTints();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.onSetTextAppearance(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(Utf8.SafeProcessor.getDrawable(getContext(), i));
    }
}
