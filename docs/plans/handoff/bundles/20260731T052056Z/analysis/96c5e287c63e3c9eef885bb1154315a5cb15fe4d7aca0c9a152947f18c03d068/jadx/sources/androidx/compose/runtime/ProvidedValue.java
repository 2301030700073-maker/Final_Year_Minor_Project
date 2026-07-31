package androidx.compose.runtime;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.fasterxml.jackson.databind.PropertyName;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProvidedValue {
    public final /* synthetic */ int $r8$classId;
    public boolean canOverride;
    public final Object compositionLocal;
    public boolean explicitNull;
    public boolean isDynamic;
    public Object mutationPolicy;
    public Object providedValue;

    public ProvidedValue(Object obj, ProvidedValue providedValue, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this.$r8$classId = 3;
        this.providedValue = obj;
        this.compositionLocal = providedValue;
        PropertyName propertyName2 = (propertyName == null || propertyName.isEmpty()) ? null : propertyName;
        this.mutationPolicy = propertyName2;
        if (z) {
            if (propertyName2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot pass true for 'explName' if name is null/empty");
                throw null;
            }
            if (propertyName._simpleName.isEmpty()) {
                z = false;
            }
        }
        this.explicitNull = z;
        this.isDynamic = z2;
        this.canOverride = z3;
    }

    public ProvidedValue append(ProvidedValue providedValue) {
        ProvidedValue providedValue2 = (ProvidedValue) this.compositionLocal;
        return providedValue2 == null ? withNext(providedValue) : withNext(providedValue2.append(providedValue));
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
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005d A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0024, B:5:0x002a, B:8:0x0030, B:9:0x0056, B:11:0x005d, B:12:0x0064, B:14:0x006b, B:21:0x003f, B:23:0x0045, B:25:0x004b), top: B:2:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0024, B:5:0x002a, B:8:0x0030, B:9:0x0056, B:11:0x005d, B:12:0x0064, B:14:0x006b, B:21:0x003f, B:23:0x0045, B:25:0x004b), top: B:2:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromAttributes(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            java.lang.Object r8 = r8.compositionLocal
            r0 = r8
            android.widget.CompoundButton r0 = (android.widget.CompoundButton) r0
            android.content.Context r8 = r0.getContext()
            r6 = 0
            int[] r2 = androidx.appcompat.R$styleable.CompoundButton
            com.caverock.androidsvg.SVG r8 = com.caverock.androidsvg.SVG.obtainStyledAttributes(r10, r6, r8, r9, r2)
            java.lang.Object r1 = r8.cssRules
            r7 = r1
            android.content.res.TypedArray r7 = (android.content.res.TypedArray) r7
            android.content.Context r1 = r0.getContext()
            java.lang.Object r3 = r8.cssRules
            r4 = r3
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r3 = r9
            r5 = r10
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5)
            r9 = 1
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L3f
            int r9 = r7.getResourceId(r9, r6)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L3f
            android.content.Context r10 = r0.getContext()     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            android.graphics.drawable.Drawable r9 = kotlin.TuplesKt.getDrawable(r10, r9)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            goto L56
        L3c:
            r0 = move-exception
            r9 = r0
            goto L7c
        L3f:
            boolean r9 = r7.hasValue(r6)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L56
            int r9 = r7.getResourceId(r6, r6)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L56
            android.content.Context r10 = r0.getContext()     // Catch: java.lang.Throwable -> L3c
            android.graphics.drawable.Drawable r9 = kotlin.TuplesKt.getDrawable(r10, r9)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L3c
        L56:
            r9 = 2
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L64
            android.content.res.ColorStateList r9 = r8.getColorStateList(r9)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintList(r9)     // Catch: java.lang.Throwable -> L3c
        L64:
            r9 = 3
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L78
            r10 = -1
            int r9 = r7.getInt(r9, r10)     // Catch: java.lang.Throwable -> L3c
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r9, r10)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintMode(r9)     // Catch: java.lang.Throwable -> L3c
        L78:
            r8.recycle()
            return
        L7c:
            r8.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ProvidedValue.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 3:
                String str = this.providedValue.toString() + "[visible=" + this.isDynamic + ",ignore=" + this.canOverride + ",explicitName=" + this.explicitNull + "]";
                ProvidedValue providedValue = (ProvidedValue) this.compositionLocal;
                if (providedValue == null) {
                    return str;
                }
                return str + ", " + providedValue.toString();
            default:
                return super.toString();
        }
    }

    public ProvidedValue trimByVisibility() {
        ProvidedValue providedValue = (ProvidedValue) this.compositionLocal;
        if (providedValue == null) {
            return this;
        }
        ProvidedValue trimByVisibility = providedValue.trimByVisibility();
        if (((PropertyName) this.mutationPolicy) != null) {
            return ((PropertyName) trimByVisibility.mutationPolicy) == null ? withNext(null) : withNext(trimByVisibility);
        }
        if (((PropertyName) trimByVisibility.mutationPolicy) == null) {
            boolean z = this.isDynamic;
            if (z == trimByVisibility.isDynamic) {
                return withNext(trimByVisibility);
            }
            if (z) {
                return withNext(null);
            }
        }
        return trimByVisibility;
    }

    public ProvidedValue withNext(ProvidedValue providedValue) {
        return providedValue == ((ProvidedValue) this.compositionLocal) ? this : new ProvidedValue(this.providedValue, providedValue, (PropertyName) this.mutationPolicy, this.explicitNull, this.isDynamic, this.canOverride);
    }

    public ProvidedValue withoutIgnored() {
        ProvidedValue withoutIgnored;
        boolean z = this.canOverride;
        ProvidedValue providedValue = (ProvidedValue) this.compositionLocal;
        if (!z) {
            return (providedValue == null || (withoutIgnored = providedValue.withoutIgnored()) == providedValue) ? this : withNext(withoutIgnored);
        }
        if (providedValue == null) {
            return null;
        }
        return providedValue.withoutIgnored();
    }

    public ProvidedValue withoutNext() {
        return ((ProvidedValue) this.compositionLocal) == null ? this : new ProvidedValue(this.providedValue, null, (PropertyName) this.mutationPolicy, this.explicitNull, this.isDynamic, this.canOverride);
    }

    public ProvidedValue withoutNonVisible() {
        ProvidedValue providedValue = (ProvidedValue) this.compositionLocal;
        ProvidedValue withoutNonVisible = providedValue == null ? null : providedValue.withoutNonVisible();
        return this.isDynamic ? withNext(withoutNonVisible) : withoutNonVisible;
    }

    public ProvidedValue(ProvidableCompositionLocal providableCompositionLocal, Object obj, boolean z, NeverEqualPolicy neverEqualPolicy, boolean z2) {
        this.$r8$classId = 0;
        this.compositionLocal = providableCompositionLocal;
        this.explicitNull = z;
        this.mutationPolicy = neverEqualPolicy;
        this.isDynamic = z2;
        this.providedValue = obj;
        this.canOverride = true;
    }

    public /* synthetic */ ProvidedValue(TextView textView, int i) {
        this.$r8$classId = i;
        this.mutationPolicy = null;
        this.providedValue = null;
        this.explicitNull = false;
        this.isDynamic = false;
        this.compositionLocal = textView;
    }
}
