package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse implements InterfaceC2817gb {

    /* renamed from: do, reason: not valid java name */
    public final float f12706do;

    public Celse(float f) {
        this.f12706do = f;
    }

    @Override // defpackage.InterfaceC2817gb
    /* renamed from: do */
    public final float mo1748do(RectF rectF) {
        return this.f12706do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Celse) && this.f12706do == ((Celse) obj).f12706do;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f12706do)});
    }
}
