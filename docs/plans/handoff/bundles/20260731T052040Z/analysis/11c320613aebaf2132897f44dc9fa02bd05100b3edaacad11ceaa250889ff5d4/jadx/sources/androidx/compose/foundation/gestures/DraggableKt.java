package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DraggableKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new DraggableKt$NoOpOnDragStarted$1(3, null);
        new DraggableKt$NoOpOnDragStopped$1(3, null);
    }

    /* renamed from: toValidVelocity-TH1AsA0, reason: not valid java name */
    public static final long m47toValidVelocityTH1AsA0(long j) {
        return BundleKt.Velocity(Float.isNaN(Velocity.m458getXimpl(j)) ? 0.0f : Velocity.m458getXimpl(j), Float.isNaN(Velocity.m459getYimpl(j)) ? 0.0f : Velocity.m459getYimpl(j));
    }
}
