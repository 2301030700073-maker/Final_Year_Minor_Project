package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DraggableKt {
    public static final DraggableKt$NoOpOnDragStarted$1 NoOpOnDragStarted = new DraggableKt$NoOpOnDragStarted$1(3, null, 0);
    public static final DraggableKt$NoOpOnDragStarted$1 NoOpOnDragStopped = new DraggableKt$NoOpOnDragStarted$1(3, null, 1);

    /* renamed from: toValidVelocity-TH1AsA0, reason: not valid java name */
    public static final long m165toValidVelocityTH1AsA0(long j) {
        return Util.Velocity(Float.isNaN(Velocity.m779getXimpl(j)) ? 0.0f : Velocity.m779getXimpl(j), Float.isNaN(Velocity.m780getYimpl(j)) ? 0.0f : Velocity.m780getYimpl(j));
    }
}
