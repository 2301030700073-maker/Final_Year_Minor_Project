package androidx.compose.runtime;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProvidedValue {
    public final /* synthetic */ int $r8$classId;
    public boolean canOverride;
    public final Object compositionLocal;
    public boolean explicitNull;
    public boolean isDynamic;
    public Object mutationPolicy;
    public Object providedValue;

    public ProvidedValue(boolean z, String str, String str2, boolean z2, ClassDiscriminatorMode classDiscriminatorMode, boolean z3) {
        this.$r8$classId = 3;
        str.getClass();
        str2.getClass();
        classDiscriminatorMode.getClass();
        this.explicitNull = z;
        this.compositionLocal = str;
        this.mutationPolicy = str2;
        this.isDynamic = z2;
        this.providedValue = classDiscriminatorMode;
        this.canOverride = z3;
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e A[Catch: all -> 0x003d, TryCatch #1 {all -> 0x003d, blocks: (B:3:0x0024, B:5:0x002b, B:8:0x0031, B:9:0x0057, B:11:0x005e, B:12:0x0065, B:14:0x006c, B:21:0x0040, B:23:0x0046, B:25:0x004c), top: B:2:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006c A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #1 {all -> 0x003d, blocks: (B:3:0x0024, B:5:0x002b, B:8:0x0031, B:9:0x0057, B:11:0x005e, B:12:0x0065, B:14:0x006c, B:21:0x0040, B:23:0x0046, B:25:0x004c), top: B:2:0x0024 }] */
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
            int[] r2 = androidx.appcompat.R$styleable.CompoundButton
            androidx.core.view.MenuHostHelper r8 = androidx.core.view.MenuHostHelper.obtainStyledAttributes(r8, r9, r2, r10)
            java.lang.Object r1 = r8.mMenuProviders
            r7 = r1
            android.content.res.TypedArray r7 = (android.content.res.TypedArray) r7
            android.content.Context r1 = r0.getContext()
            java.lang.Object r3 = r8.mMenuProviders
            r4 = r3
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r6 = 0
            r3 = r9
            r5 = r10
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5, r6)
            r9 = 1
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3d
            r1 = 0
            if (r10 == 0) goto L40
            int r9 = r7.getResourceId(r9, r1)     // Catch: java.lang.Throwable -> L3d
            if (r9 == 0) goto L40
            android.content.Context r10 = r0.getContext()     // Catch: java.lang.Throwable -> L3d android.content.res.Resources.NotFoundException -> L40
            android.graphics.drawable.Drawable r9 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.getDrawable(r10, r9)     // Catch: java.lang.Throwable -> L3d android.content.res.Resources.NotFoundException -> L40
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L3d android.content.res.Resources.NotFoundException -> L40
            goto L57
        L3d:
            r0 = move-exception
            r9 = r0
            goto L7d
        L40:
            boolean r9 = r7.hasValue(r1)     // Catch: java.lang.Throwable -> L3d
            if (r9 == 0) goto L57
            int r9 = r7.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L3d
            if (r9 == 0) goto L57
            android.content.Context r10 = r0.getContext()     // Catch: java.lang.Throwable -> L3d
            android.graphics.drawable.Drawable r9 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.getDrawable(r10, r9)     // Catch: java.lang.Throwable -> L3d
            r0.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L3d
        L57:
            r9 = 2
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3d
            if (r10 == 0) goto L65
            android.content.res.ColorStateList r9 = r8.getColorStateList(r9)     // Catch: java.lang.Throwable -> L3d
            r0.setButtonTintList(r9)     // Catch: java.lang.Throwable -> L3d
        L65:
            r9 = 3
            boolean r10 = r7.hasValue(r9)     // Catch: java.lang.Throwable -> L3d
            if (r10 == 0) goto L79
            r10 = -1
            int r9 = r7.getInt(r9, r10)     // Catch: java.lang.Throwable -> L3d
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r9, r10)     // Catch: java.lang.Throwable -> L3d
            r0.setButtonTintMode(r9)     // Catch: java.lang.Throwable -> L3d
        L79:
            r8.recycle()
            return
        L7d:
            r8.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ProvidedValue.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 3:
                StringBuilder sb = new StringBuilder("JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=false, isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls=");
                sb.append(this.explicitNull);
                sb.append(", prettyPrintIndent='");
                sb.append((String) this.compositionLocal);
                sb.append("', coerceInputValues=false, useArrayPolymorphism=false, classDiscriminator='");
                sb.append((String) this.mutationPolicy);
                sb.append("', allowSpecialFloatingPointValues=false, useAlternativeNames=");
                sb.append(this.isDynamic);
                sb.append(", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=");
                sb.append((ClassDiscriminatorMode) this.providedValue);
                sb.append(", exceptionsWithDebugInfo=");
                return CameraDevices$CC.m(sb, this.canOverride, ')');
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ProvidedValue(TextView textView, int i) {
        this.$r8$classId = i;
        this.mutationPolicy = null;
        this.providedValue = null;
        this.explicitNull = false;
        this.isDynamic = false;
        this.compositionLocal = textView;
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
}
