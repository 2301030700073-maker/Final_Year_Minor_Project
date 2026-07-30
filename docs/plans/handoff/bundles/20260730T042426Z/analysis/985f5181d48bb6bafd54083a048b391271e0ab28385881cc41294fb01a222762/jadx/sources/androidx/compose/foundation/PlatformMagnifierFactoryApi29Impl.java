package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import kotlin.math.MathKt;

/* compiled from: PlatformMagnifier.android.kt */
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {
    public static final PlatformMagnifierFactoryApi29Impl INSTANCE = new PlatformMagnifierFactoryApi29Impl();
    private static final boolean canUpdateZoom = true;

    private PlatformMagnifierFactoryApi29Impl() {
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public boolean getCanUpdateZoom() {
        return canUpdateZoom;
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    /* renamed from: create-nHHXs2Y */
    public PlatformMagnifierImpl mo147createnHHXs2Y(View view, boolean z, long j, float f, float f2, boolean z2, Density density, float f3) {
        if (z) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long mo214toSizeXkaWNTQ = density.mo214toSizeXkaWNTQ(j);
        float mo213toPx0680j_4 = density.mo213toPx0680j_4(f);
        float mo213toPx0680j_42 = density.mo213toPx0680j_4(f2);
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (mo214toSizeXkaWNTQ != 9205357640488583168L) {
            builder.setSize(MathKt.roundToInt(Size.m1204getWidthimpl(mo214toSizeXkaWNTQ)), MathKt.roundToInt(Size.m1202getHeightimpl(mo214toSizeXkaWNTQ)));
        }
        if (!Float.isNaN(mo213toPx0680j_4)) {
            builder.setCornerRadius(mo213toPx0680j_4);
        }
        if (!Float.isNaN(mo213toPx0680j_42)) {
            builder.setElevation(mo213toPx0680j_42);
        }
        if (!Float.isNaN(f3)) {
            builder.setInitialZoom(f3);
        }
        builder.setClippingEnabled(z2);
        return new PlatformMagnifierImpl(builder.build());
    }

    /* compiled from: PlatformMagnifier.android.kt */
    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl {
        public PlatformMagnifierImpl(Magnifier magnifier) {
            super(magnifier);
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public void mo146updateWko1d7g(long j, long j2, float f) {
            if (!Float.isNaN(f)) {
                getMagnifier().setZoom(f);
            }
            if (OffsetKt.m1181isSpecifiedk4lQ0M(j2)) {
                getMagnifier().show(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j), Offset.m1167getXimpl(j2), Offset.m1168getYimpl(j2));
            } else {
                getMagnifier().show(Offset.m1167getXimpl(j), Offset.m1168getYimpl(j));
            }
        }
    }
}
