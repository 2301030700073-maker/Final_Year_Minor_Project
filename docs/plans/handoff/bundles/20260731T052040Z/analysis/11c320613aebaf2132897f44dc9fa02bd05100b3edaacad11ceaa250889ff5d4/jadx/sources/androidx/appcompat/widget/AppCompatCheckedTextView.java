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
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.core.os.BundleKt;
import androidx.core.widget.TintableCompoundDrawablesView;
import kotlin.math.MathKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AppCompatCheckedTextView extends CheckedTextView implements TintableCompoundDrawablesView {
    public AppCompatEmojiTextHelper mAppCompatEmojiTextHelper;
    public final RulerTrackingMap mBackgroundTintHelper;
    public final ProvidedValue mCheckedHelper;
    public final AppCompatTextHelper mTextHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086 A[Catch: all -> 0x0065, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004c, B:5:0x0053, B:8:0x0059, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0094 A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004c, B:5:0x0053, B:8:0x0059, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatCheckedTextView(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            androidx.appcompat.widget.TintContextWrapper.wrap(r8)
            r5 = 2130968786(0x7f0400d2, float:1.7546235E38)
            r7.<init>(r8, r9, r5)
            android.content.Context r8 = r7.getContext()
            androidx.appcompat.widget.ThemeUtils.checkAppCompatTheme(r7, r8)
            androidx.appcompat.widget.AppCompatTextHelper r8 = new androidx.appcompat.widget.AppCompatTextHelper
            r8.<init>(r7)
            r7.mTextHelper = r8
            r8.loadFromAttributes(r9, r5)
            r8.applyCompoundDrawablesTints()
            androidx.compose.ui.node.RulerTrackingMap r8 = new androidx.compose.ui.node.RulerTrackingMap
            r8.<init>(r7)
            r7.mBackgroundTintHelper = r8
            r8.loadFromAttributes(r9, r5)
            androidx.compose.runtime.ProvidedValue r8 = new androidx.compose.runtime.ProvidedValue
            r8.<init>(r7)
            r7.mCheckedHelper = r8
            android.content.Context r8 = r7.getContext()
            int[] r2 = androidx.appcompat.R$styleable.CheckedTextView
            org.acra.util.ProcessFinisher r8 = org.acra.util.ProcessFinisher.obtainStyledAttributes(r8, r9, r2, r5)
            java.lang.Object r0 = r8.config
            r6 = r0
            android.content.res.TypedArray r6 = (android.content.res.TypedArray) r6
            android.content.Context r1 = r7.getContext()
            java.lang.Object r0 = r8.config
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r0 = r7
            r3 = r9
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5)
            r7 = 1
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            r1 = 0
            if (r9 == 0) goto L68
            int r7 = r6.getResourceId(r7, r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L68
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            android.graphics.drawable.Drawable r7 = okhttp3.Cookie.Companion.getDrawable(r9, r7)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            r0.setCheckMarkDrawable(r7)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            goto L7f
        L65:
            r0 = move-exception
            r7 = r0
            goto Lac
        L68:
            boolean r7 = r6.hasValue(r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L7f
            int r7 = r6.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L7f
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L65
            android.graphics.drawable.Drawable r7 = okhttp3.Cookie.Companion.getDrawable(r9, r7)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkDrawable(r7)     // Catch: java.lang.Throwable -> L65
        L7f:
            r7 = 2
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            if (r9 == 0) goto L8d
            android.content.res.ColorStateList r7 = r8.getColorStateList(r7)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkTintList(r7)     // Catch: java.lang.Throwable -> L65
        L8d:
            r7 = 3
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            if (r9 == 0) goto La1
            r9 = -1
            int r7 = r6.getInt(r7, r9)     // Catch: java.lang.Throwable -> L65
            r9 = 0
            android.graphics.PorterDuff$Mode r7 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r7, r9)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkTintMode(r7)     // Catch: java.lang.Throwable -> L65
        La1:
            r8.recycle()
            androidx.appcompat.widget.AppCompatEmojiTextHelper r7 = r0.getEmojiTextViewHelper()
            r7.loadFromAttributes(r3, r5)
            return
        Lac:
            r8.recycle()
            throw r7
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
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.applySupportBackgroundTint();
        }
        ProvidedValue providedValue = this.mCheckedHelper;
        if (providedValue != null) {
            providedValue.applyCheckMarkTint();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return MathKt.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintList();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            return rulerTrackingMap.getSupportBackgroundTintMode();
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
        BundleKt.onCreateInputConnection(onCreateInputConnection, editorInfo, this);
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
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.onSetBackgroundResource(i);
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
        super.setCustomSelectionActionModeCallback(MathKt.wrapCustomSelectionActionModeCallback(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().setEnabled(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        RulerTrackingMap rulerTrackingMap = this.mBackgroundTintHelper;
        if (rulerTrackingMap != null) {
            rulerTrackingMap.setSupportBackgroundTintMode(mode);
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
        setCheckMarkDrawable(Cookie.Companion.getDrawable(getContext(), i));
    }
}
