package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class P7 implements InterfaceC2817gb {

    /* renamed from: do, reason: not valid java name */
    public final float f2738do;

    public P7(float f) {
        this.f2738do = f;
    }

    @Override // defpackage.InterfaceC2817gb
    /* renamed from: do, reason: not valid java name */
    public final float mo1748do(RectF rectF) {
        return Math.min(this.f2738do, Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof P7) && this.f2738do == ((P7) obj).f2738do;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f2738do)});
    }
}
