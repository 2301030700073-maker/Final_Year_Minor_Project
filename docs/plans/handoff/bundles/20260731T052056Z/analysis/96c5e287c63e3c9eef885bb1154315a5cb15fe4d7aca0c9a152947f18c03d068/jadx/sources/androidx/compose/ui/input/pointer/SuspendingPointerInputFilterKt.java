package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SuspendingPointerInputFilterKt {
    public static final PointerEvent EmptyPointerEvent = new PointerEvent(EmptyList.INSTANCE, null);

    public static final Modifier pointerInput(Modifier modifier, Object obj, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.then(new SuspendPointerInputElement(obj, null, pointerInputEventHandler, 6));
    }
}
