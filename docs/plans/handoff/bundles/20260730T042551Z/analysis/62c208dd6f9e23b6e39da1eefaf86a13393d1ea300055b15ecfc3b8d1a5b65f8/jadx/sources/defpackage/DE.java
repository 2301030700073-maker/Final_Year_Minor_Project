package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.Csuper;

/* loaded from: classes3.dex */
public final class DE extends Csuper {
    public DE(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.Csuper
    /* renamed from: goto, reason: not valid java name */
    public final float mo363goto(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }
}
