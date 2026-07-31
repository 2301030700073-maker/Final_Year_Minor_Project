package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DraggableKt {
    public static final DraggableKt$NoOpOnDragStarted$1 NoOpOnDragStarted = new DraggableKt$NoOpOnDragStarted$1(3, null, 3);
    public static final DraggableKt$NoOpOnDragStarted$1 NoOpOnDragStopped = new DraggableKt$NoOpOnDragStarted$1(3, null, 4);

    /* renamed from: access$isPointerUp-DmW0f2w, reason: not valid java name */
    public static final boolean m1032access$isPointerUpDmW0f2w(PointerEvent pointerEvent, long j) {
        Object obj;
        List list = pointerEvent.changes;
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = list.get(i);
            if (PointerId.m564equalsimpl0(((PointerInputChange) obj).id, j)) {
                break;
            }
            i++;
        }
        PointerInputChange pointerInputChange = (PointerInputChange) obj;
        if (pointerInputChange != null && pointerInputChange.pressed) {
            z = true;
        }
        return true ^ z;
    }
}
