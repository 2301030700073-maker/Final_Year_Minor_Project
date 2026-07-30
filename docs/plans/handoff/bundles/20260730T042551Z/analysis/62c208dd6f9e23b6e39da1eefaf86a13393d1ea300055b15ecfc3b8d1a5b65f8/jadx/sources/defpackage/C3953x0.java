package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;

/* renamed from: x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3953x0 implements TransformationMethod {

    /* renamed from: do, reason: not valid java name */
    public final Locale f16506do;

    public C3953x0(Context context) {
        this.f16506do = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f16506do);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
