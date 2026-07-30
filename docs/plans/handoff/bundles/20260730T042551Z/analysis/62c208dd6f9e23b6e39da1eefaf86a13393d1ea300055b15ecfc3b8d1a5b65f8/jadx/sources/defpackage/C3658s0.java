package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* renamed from: s0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3658s0 implements InterfaceC2817gb {

    /* renamed from: do, reason: not valid java name */
    public final float f15348do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2817gb f15349do;

    public C3658s0(float f, InterfaceC2817gb interfaceC2817gb) {
        while (interfaceC2817gb instanceof C3658s0) {
            interfaceC2817gb = ((C3658s0) interfaceC2817gb).f15349do;
            f += ((C3658s0) interfaceC2817gb).f15348do;
        }
        this.f15349do = interfaceC2817gb;
        this.f15348do = f;
    }

    @Override // defpackage.InterfaceC2817gb
    /* renamed from: do */
    public final float mo1748do(RectF rectF) {
        return Math.max(0.0f, this.f15349do.mo1748do(rectF) + this.f15348do);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3658s0)) {
            return false;
        }
        C3658s0 c3658s0 = (C3658s0) obj;
        return this.f15349do.equals(c3658s0.f15349do) && this.f15348do == c3658s0.f15348do;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15349do, Float.valueOf(this.f15348do)});
    }
}
