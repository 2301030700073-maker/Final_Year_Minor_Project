package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.ui.unit.Density;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public final void mo58updateWko1d7g(long j, long j2, float f) {
            if (!Float.isNaN(f)) {
                this.magnifier.setZoom(f);
            }
            long j3 = 9223372034707292159L & j2;
            Magnifier magnifier = this.magnifier;
            if (j3 != 9205357640488583168L) {
                magnifier.show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)));
            } else {
                magnifier.show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
            }
        }
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    /* renamed from: create-nHHXs2Y */
    public final PlatformMagnifier mo59createnHHXs2Y(View view, boolean z, long j, float f, float f2, boolean z2, Density density, float f3) {
        if (z) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long mo88toSizeXkaWNTQ = density.mo88toSizeXkaWNTQ(j);
        float mo87toPx0680j_4 = density.mo87toPx0680j_4(f);
        float mo87toPx0680j_42 = density.mo87toPx0680j_4(f2);
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (mo88toSizeXkaWNTQ != 9205357640488583168L) {
            builder.setSize(UnsignedKt.roundToInt(Float.intBitsToFloat((int) (mo88toSizeXkaWNTQ >> 32))), UnsignedKt.roundToInt(Float.intBitsToFloat((int) (mo88toSizeXkaWNTQ & 4294967295L))));
        }
        if (!Float.isNaN(mo87toPx0680j_4)) {
            builder.setCornerRadius(mo87toPx0680j_4);
        }
        if (!Float.isNaN(mo87toPx0680j_42)) {
            builder.setElevation(mo87toPx0680j_42);
        }
        if (!Float.isNaN(f3)) {
            builder.setInitialZoom(f3);
        }
        builder.setClippingEnabled(z2);
        return new PlatformMagnifierImpl(builder.build());
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public final boolean getCanUpdateZoom() {
        return true;
    }
}
