package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: kz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3244kz implements InterfaceC2817gb {

    /* renamed from: do, reason: not valid java name */
    public final float f14068do;

    public C3244kz(float f) {
        this.f14068do = f;
    }

    @Override // defpackage.InterfaceC2817gb
    /* renamed from: do */
    public final float mo1748do(RectF rectF) {
        return Math.min(rectF.width(), rectF.height()) * this.f14068do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3244kz) && this.f14068do == ((C3244kz) obj).f14068do;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f14068do)});
    }
}
