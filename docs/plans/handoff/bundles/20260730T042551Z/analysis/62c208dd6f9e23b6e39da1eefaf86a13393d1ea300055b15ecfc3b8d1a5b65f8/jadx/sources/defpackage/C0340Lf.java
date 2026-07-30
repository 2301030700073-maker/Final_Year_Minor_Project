package defpackage;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.Cnew;

/* renamed from: Lf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0340Lf implements TransformationMethod {

    /* renamed from: do, reason: not valid java name */
    public final TransformationMethod f1974do;

    public C0340Lf(TransformationMethod transformationMethod) {
        this.f1974do = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f1974do;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null || Cnew.m4104do().m4108if() != 1) {
            return charSequence;
        }
        Cnew m4104do = Cnew.m4104do();
        m4104do.getClass();
        return m4104do.m4105case(0, charSequence.length(), charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
        TransformationMethod transformationMethod = this.f1974do;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i, rect);
        }
    }
}
