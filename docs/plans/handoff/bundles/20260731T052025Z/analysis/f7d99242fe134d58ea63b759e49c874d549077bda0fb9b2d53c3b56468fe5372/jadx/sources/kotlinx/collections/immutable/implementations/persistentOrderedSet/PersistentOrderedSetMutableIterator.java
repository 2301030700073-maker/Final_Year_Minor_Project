package kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedSetMutableIterator extends PersistentOrderedSetIterator {
    public final PersistentOrderedSetBuilder builder;
    public int expectedModCount;
    public Object lastIteratedElement;
    public boolean nextWasInvoked;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PersistentOrderedSetMutableIterator(kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r4.firstElement
            kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder r1 = r4.hashMapBuilder
            r2 = 0
            r3.<init>(r0, r1, r2)
            r3.builder = r4
            int r4 = r1.modCount
            r3.expectedModCount = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetMutableIterator.<init>(kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder):void");
    }

    @Override // kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public final Object next() {
        if (this.builder.hashMapBuilder.modCount != this.expectedModCount) {
            StreamSharing$$ExternalSyntheticLambda0.m();
            return null;
        }
        Object next = super.next();
        this.lastIteratedElement = next;
        this.nextWasInvoked = true;
        return next;
    }

    @Override // kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public final void remove() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
        Object obj = this.lastIteratedElement;
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = this.builder;
        TypeIntrinsics.asMutableCollection(persistentOrderedSetBuilder).remove(obj);
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = persistentOrderedSetBuilder.hashMapBuilder.modCount;
        this.index--;
    }
}
