package defpackage;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* renamed from: bz, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0782bz implements TypeEvaluator<Rect> {

    /* renamed from: do, reason: not valid java name */
    public final Rect f8463do;

    public C0782bz() {
    }

    @Override // android.animation.TypeEvaluator
    public final Rect evaluate(float f, Rect rect, Rect rect2) {
        Rect rect3 = rect;
        Rect rect4 = rect2;
        int i = rect3.left + ((int) ((rect4.left - r0) * f));
        int i2 = rect3.top + ((int) ((rect4.top - r1) * f));
        int i3 = rect3.right + ((int) ((rect4.right - r2) * f));
        int i4 = rect3.bottom + ((int) ((rect4.bottom - r6) * f));
        Rect rect5 = this.f8463do;
        if (rect5 == null) {
            return new Rect(i, i2, i3, i4);
        }
        rect5.set(i, i2, i3, i4);
        return rect5;
    }

    public C0782bz(Rect rect) {
        this.f8463do = rect;
    }
}
