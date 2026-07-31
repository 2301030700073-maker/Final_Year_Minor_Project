package androidx.compose.runtime;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ProvidedValue {
    public boolean canOverride;
    public final Object compositionLocal;
    public boolean explicitNull;
    public boolean isDynamic;
    public Object mutationPolicy;
    public Object providedValue;

    public ProvidedValue(ProvidableCompositionLocal providableCompositionLocal, Object obj, boolean z, NeverEqualPolicy neverEqualPolicy, boolean z2) {
        this.compositionLocal = providableCompositionLocal;
        this.explicitNull = z;
        this.mutationPolicy = neverEqualPolicy;
        this.isDynamic = z2;
        this.providedValue = obj;
        this.canOverride = true;
    }

    public void applyButtonTint() {
        CompoundButton compoundButton = (CompoundButton) this.compositionLocal;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.explicitNull || this.isDynamic) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.explicitNull) {
                    mutate.setTintList((ColorStateList) this.mutationPolicy);
                }
                if (this.isDynamic) {
                    mutate.setTintMode((PorterDuff.Mode) this.providedValue);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    public void applyCheckMarkTint() {
        AppCompatCheckedTextView appCompatCheckedTextView = (AppCompatCheckedTextView) this.compositionLocal;
        Drawable checkMarkDrawable = appCompatCheckedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.explicitNull || this.isDynamic) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.explicitNull) {
                    mutate.setTintList((ColorStateList) this.mutationPolicy);
                }
                if (this.isDynamic) {
                    mutate.setTintMode((PorterDuff.Mode) this.providedValue);
                }
                if (mutate.isStateful()) {
                    mutate.setState(appCompatCheckedTextView.getDrawableState());
                }
                appCompatCheckedTextView.setCheckMarkDrawable(mutate);
            }
        }
    }

    public Object getEffectiveValue$runtime() {
        if (this.explicitNull) {
            return null;
        }
        Object obj = this.providedValue;
        if (obj != null) {
            return obj;
        }
        ComposerKt.composeRuntimeError("Unexpected form of a provided value");
        LayoutNode$$ExternalSyntheticBUOutline0.m322m();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005d A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:8:0x0030, B:9:0x0056, B:11:0x005d, B:12:0x0064, B:14:0x006b, B:21:0x003f, B:23:0x0045, B:25:0x004b), top: B:2:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:8:0x0030, B:9:0x0056, B:11:0x005d, B:12:0x0064, B:14:0x006b, B:21:0x003f, B:23:0x0045, B:25:0x004b), top: B:2:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromAttributes(android.util.AttributeSet r8, int r9) {
        /*
            r7 = this;
            java.lang.Object r7 = r7.compositionLocal
            r0 = r7
            android.widget.CompoundButton r0 = (android.widget.CompoundButton) r0
            android.content.Context r7 = r0.getContext()
            int[] r2 = androidx.appcompat.R$styleable.CompoundButton
            org.acra.util.ProcessFinisher r7 = org.acra.util.ProcessFinisher.obtainStyledAttributes(r7, r8, r2, r9)
            java.lang.Object r1 = r7.config
            r6 = r1
            android.content.res.TypedArray r6 = (android.content.res.TypedArray) r6
            android.content.Context r1 = r0.getContext()
            java.lang.Object r3 = r7.config
            r4 = r3
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r3 = r8
            r5 = r9
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5)
            r8 = 1
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            r1 = 0
            if (r9 == 0) goto L3f
            int r8 = r6.getResourceId(r8, r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L3f
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            android.graphics.drawable.Drawable r8 = okhttp3.Cookie.Companion.getDrawable(r9, r8)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            r0.setButtonDrawable(r8)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            goto L56
        L3c:
            r0 = move-exception
            r8 = r0
            goto L7c
        L3f:
            boolean r8 = r6.hasValue(r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L56
            int r8 = r6.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L56
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L3c
            android.graphics.drawable.Drawable r8 = okhttp3.Cookie.Companion.getDrawable(r9, r8)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonDrawable(r8)     // Catch: java.lang.Throwable -> L3c
        L56:
            r8 = 2
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L64
            android.content.res.ColorStateList r8 = r7.getColorStateList(r8)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintList(r8)     // Catch: java.lang.Throwable -> L3c
        L64:
            r8 = 3
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L78
            r9 = -1
            int r8 = r6.getInt(r8, r9)     // Catch: java.lang.Throwable -> L3c
            r9 = 0
            android.graphics.PorterDuff$Mode r8 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r8, r9)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintMode(r8)     // Catch: java.lang.Throwable -> L3c
        L78:
            r7.recycle()
            return
        L7c:
            r7.recycle()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ProvidedValue.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public /* synthetic */ ProvidedValue(TextView textView) {
        this.mutationPolicy = null;
        this.providedValue = null;
        this.explicitNull = false;
        this.isDynamic = false;
        this.compositionLocal = textView;
    }
}
