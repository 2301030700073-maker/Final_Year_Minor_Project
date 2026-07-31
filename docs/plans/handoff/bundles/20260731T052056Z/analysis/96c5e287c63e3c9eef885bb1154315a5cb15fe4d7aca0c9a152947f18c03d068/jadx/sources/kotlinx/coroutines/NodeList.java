package kotlinx.coroutines;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NodeList extends LockFreeLinkedListNode implements Incomplete {
    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final boolean isRemoved() {
        return false;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList getList() {
        return this;
    }
}
