package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.work.OperationKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuspendPointerInputElement extends ModifierNodeElement {
    public final Object key1;
    public final Object key2;
    public final PointerInputEventHandler pointerInputEventHandler;

    public SuspendPointerInputElement(Object obj, OperationKt operationKt, PointerInputEventHandler pointerInputEventHandler, int i) {
        operationKt = (i & 2) != 0 ? null : operationKt;
        this.key1 = obj;
        this.key2 = operationKt;
        this.pointerInputEventHandler = pointerInputEventHandler;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new SuspendingPointerInputModifierNodeImpl(this.key1, this.key2, this.pointerInputEventHandler);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuspendPointerInputElement)) {
            return false;
        }
        SuspendPointerInputElement suspendPointerInputElement = (SuspendPointerInputElement) obj;
        return this.key1.equals(suspendPointerInputElement.key1) && Intrinsics.areEqual(this.key2, suspendPointerInputElement.key2) && this.pointerInputEventHandler == suspendPointerInputElement.pointerInputEventHandler;
    }

    public final int hashCode() {
        int hashCode = this.key1.hashCode() * 31;
        Object obj = this.key2;
        return this.pointerInputEventHandler.hashCode() + ((hashCode + (obj != null ? obj.hashCode() : 0)) * 961);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) node;
        Object obj = suspendingPointerInputModifierNodeImpl.key1;
        Object obj2 = this.key1;
        boolean z = !Intrinsics.areEqual(obj, obj2);
        suspendingPointerInputModifierNodeImpl.key1 = obj2;
        Object obj3 = suspendingPointerInputModifierNodeImpl.key2;
        Object obj4 = this.key2;
        if (!Intrinsics.areEqual(obj3, obj4)) {
            z = true;
        }
        suspendingPointerInputModifierNodeImpl.key2 = obj4;
        Class<?> cls = suspendingPointerInputModifierNodeImpl._pointerInputEventHandler.getClass();
        PointerInputEventHandler pointerInputEventHandler = this.pointerInputEventHandler;
        if (cls == pointerInputEventHandler.getClass() ? z : true) {
            suspendingPointerInputModifierNodeImpl.resetPointerInputHandler();
        }
        suspendingPointerInputModifierNodeImpl._pointerInputEventHandler = pointerInputEventHandler;
    }
}
