package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* compiled from: TrieNode.kt */
/* loaded from: classes.dex */
public final class TrieNode {
    private Object[] buffer;
    private int dataMap;
    private int nodeMap;
    private final MutabilityOwnership ownedBy;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final TrieNode EMPTY = new TrieNode(0, 0, new Object[0]);

    public TrieNode(int i, int i2, Object[] objArr, MutabilityOwnership mutabilityOwnership) {
        this.dataMap = i;
        this.nodeMap = i2;
        this.ownedBy = mutabilityOwnership;
        this.buffer = objArr;
    }

    public TrieNode(int i, int i2, Object[] objArr) {
        this(i, i2, objArr, null);
    }

    /* compiled from: TrieNode.kt */
    public static final class ModificationResult {
        private TrieNode node;
        private final int sizeDelta;

        public ModificationResult(TrieNode trieNode, int i) {
            this.node = trieNode;
            this.sizeDelta = i;
        }

        public final TrieNode getNode() {
            return this.node;
        }

        public final int getSizeDelta() {
            return this.sizeDelta;
        }

        public final void setNode(TrieNode trieNode) {
            this.node = trieNode;
        }
    }

    private final ModificationResult asInsertResult() {
        return new ModificationResult(this, 1);
    }

    private final ModificationResult asUpdateResult() {
        return new ModificationResult(this, 0);
    }

    public final Object[] getBuffer$runtime_release() {
        return this.buffer;
    }

    public final int entryCount$runtime_release() {
        return Integer.bitCount(this.dataMap);
    }

    public final boolean hasEntryAt$runtime_release(int i) {
        return (i & this.dataMap) != 0;
    }

    private final boolean hasNodeAt(int i) {
        return (i & this.nodeMap) != 0;
    }

    public final int entryKeyIndex$runtime_release(int i) {
        return Integer.bitCount((i - 1) & this.dataMap) * 2;
    }

    public final int nodeIndex$runtime_release(int i) {
        return (this.buffer.length - 1) - Integer.bitCount((i - 1) & this.nodeMap);
    }

    private final Object keyAtIndex(int i) {
        return this.buffer[i];
    }

    private final Object valueAtKeyIndex(int i) {
        return this.buffer[i + 1];
    }

    public final TrieNode nodeAtIndex$runtime_release(int i) {
        Object obj = this.buffer[i];
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode>");
        return (TrieNode) obj;
    }

    private final TrieNode insertEntryAt(int i, Object obj, Object obj2) {
        Object[] insertEntryAtIndex;
        insertEntryAtIndex = TrieNodeKt.insertEntryAtIndex(this.buffer, entryKeyIndex$runtime_release(i), obj, obj2);
        return new TrieNode(i | this.dataMap, this.nodeMap, insertEntryAtIndex);
    }

    private final TrieNode mutableInsertEntryAt(int i, Object obj, Object obj2, MutabilityOwnership mutabilityOwnership) {
        Object[] insertEntryAtIndex;
        Object[] insertEntryAtIndex2;
        int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(i);
        if (this.ownedBy == mutabilityOwnership) {
            insertEntryAtIndex2 = TrieNodeKt.insertEntryAtIndex(this.buffer, entryKeyIndex$runtime_release, obj, obj2);
            this.buffer = insertEntryAtIndex2;
            this.dataMap = i | this.dataMap;
            return this;
        }
        insertEntryAtIndex = TrieNodeKt.insertEntryAtIndex(this.buffer, entryKeyIndex$runtime_release, obj, obj2);
        return new TrieNode(i | this.dataMap, this.nodeMap, insertEntryAtIndex, mutabilityOwnership);
    }

    private final TrieNode updateValueAtIndex(int i, Object obj) {
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        copyOf[i + 1] = obj;
        return new TrieNode(this.dataMap, this.nodeMap, copyOf);
    }

    private final TrieNode mutableUpdateValueAtIndex(int i, Object obj, PersistentHashMapBuilder persistentHashMapBuilder) {
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            this.buffer[i + 1] = obj;
            return this;
        }
        persistentHashMapBuilder.setModCount$runtime_release(persistentHashMapBuilder.getModCount$runtime_release() + 1);
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        copyOf[i + 1] = obj;
        return new TrieNode(this.dataMap, this.nodeMap, copyOf, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode updateNodeAtIndex(int i, int i2, TrieNode trieNode) {
        Object[] replaceNodeWithEntry;
        Object[] objArr = trieNode.buffer;
        if (objArr.length == 2 && trieNode.nodeMap == 0) {
            if (this.buffer.length == 1) {
                trieNode.dataMap = this.nodeMap;
                return trieNode;
            }
            replaceNodeWithEntry = TrieNodeKt.replaceNodeWithEntry(this.buffer, i, entryKeyIndex$runtime_release(i2), objArr[0], objArr[1]);
            return new TrieNode(this.dataMap ^ i2, i2 ^ this.nodeMap, replaceNodeWithEntry);
        }
        Object[] objArr2 = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr2, objArr2.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        copyOf[i] = trieNode;
        return new TrieNode(this.dataMap, this.nodeMap, copyOf);
    }

    private final TrieNode mutableUpdateNodeAtIndex(int i, TrieNode trieNode, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr = this.buffer;
        if (objArr.length == 1 && trieNode.buffer.length == 2 && trieNode.nodeMap == 0) {
            trieNode.dataMap = this.nodeMap;
            return trieNode;
        }
        if (this.ownedBy == mutabilityOwnership) {
            objArr[i] = trieNode;
            return this;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        copyOf[i] = trieNode;
        return new TrieNode(this.dataMap, this.nodeMap, copyOf, mutabilityOwnership);
    }

    private final TrieNode removeNodeAtIndex(int i, int i2) {
        Object[] removeNodeAtIndex;
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        removeNodeAtIndex = TrieNodeKt.removeNodeAtIndex(objArr, i);
        return new TrieNode(this.dataMap, i2 ^ this.nodeMap, removeNodeAtIndex);
    }

    private final TrieNode mutableRemoveNodeAtIndex(int i, int i2, MutabilityOwnership mutabilityOwnership) {
        Object[] removeNodeAtIndex;
        Object[] removeNodeAtIndex2;
        Object[] objArr = this.buffer;
        if (objArr.length == 1) {
            return null;
        }
        if (this.ownedBy == mutabilityOwnership) {
            removeNodeAtIndex2 = TrieNodeKt.removeNodeAtIndex(objArr, i);
            this.buffer = removeNodeAtIndex2;
            this.nodeMap ^= i2;
            return this;
        }
        removeNodeAtIndex = TrieNodeKt.removeNodeAtIndex(objArr, i);
        return new TrieNode(this.dataMap, i2 ^ this.nodeMap, removeNodeAtIndex, mutabilityOwnership);
    }

    private final Object[] bufferMoveEntryToNode(int i, int i2, int i3, Object obj, Object obj2, int i4, MutabilityOwnership mutabilityOwnership) {
        Object[] replaceEntryWithNode;
        Object keyAtIndex = keyAtIndex(i);
        replaceEntryWithNode = TrieNodeKt.replaceEntryWithNode(this.buffer, i, nodeIndex$runtime_release(i2) + 1, makeNode(keyAtIndex != null ? keyAtIndex.hashCode() : 0, keyAtIndex, valueAtKeyIndex(i), i3, obj, obj2, i4 + 5, mutabilityOwnership));
        return replaceEntryWithNode;
    }

    private final TrieNode moveEntryToNode(int i, int i2, int i3, Object obj, Object obj2, int i4) {
        return new TrieNode(this.dataMap ^ i2, i2 | this.nodeMap, bufferMoveEntryToNode(i, i2, i3, obj, obj2, i4, null));
    }

    private final TrieNode mutableMoveEntryToNode(int i, int i2, int i3, Object obj, Object obj2, int i4, MutabilityOwnership mutabilityOwnership) {
        if (this.ownedBy == mutabilityOwnership) {
            this.buffer = bufferMoveEntryToNode(i, i2, i3, obj, obj2, i4, mutabilityOwnership);
            this.dataMap ^= i2;
            this.nodeMap |= i2;
            return this;
        }
        return new TrieNode(this.dataMap ^ i2, i2 | this.nodeMap, bufferMoveEntryToNode(i, i2, i3, obj, obj2, i4, mutabilityOwnership), mutabilityOwnership);
    }

    private final TrieNode makeNode(int i, Object obj, Object obj2, int i2, Object obj3, Object obj4, int i3, MutabilityOwnership mutabilityOwnership) {
        Object[] objArr;
        if (i3 > 30) {
            return new TrieNode(0, 0, new Object[]{obj, obj2, obj3, obj4}, mutabilityOwnership);
        }
        int indexSegment = TrieNodeKt.indexSegment(i, i3);
        int indexSegment2 = TrieNodeKt.indexSegment(i2, i3);
        if (indexSegment != indexSegment2) {
            if (indexSegment < indexSegment2) {
                objArr = new Object[]{obj, obj2, obj3, obj4};
            } else {
                objArr = new Object[]{obj3, obj4, obj, obj2};
            }
            return new TrieNode((1 << indexSegment) | (1 << indexSegment2), 0, objArr, mutabilityOwnership);
        }
        return new TrieNode(0, 1 << indexSegment, new Object[]{makeNode(i, obj, obj2, i2, obj3, obj4, i3 + 5, mutabilityOwnership)}, mutabilityOwnership);
    }

    private final TrieNode removeEntryAtIndex(int i, int i2) {
        Object[] removeEntryAtIndex;
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        removeEntryAtIndex = TrieNodeKt.removeEntryAtIndex(objArr, i);
        return new TrieNode(i2 ^ this.dataMap, this.nodeMap, removeEntryAtIndex);
    }

    private final TrieNode mutableRemoveEntryAtIndex(int i, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        Object[] removeEntryAtIndex;
        Object[] removeEntryAtIndex2;
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime_release(valueAtKeyIndex(i));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            removeEntryAtIndex2 = TrieNodeKt.removeEntryAtIndex(this.buffer, i);
            this.buffer = removeEntryAtIndex2;
            this.dataMap ^= i2;
            return this;
        }
        removeEntryAtIndex = TrieNodeKt.removeEntryAtIndex(this.buffer, i);
        return new TrieNode(i2 ^ this.dataMap, this.nodeMap, removeEntryAtIndex, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode collisionRemoveEntryAtIndex(int i) {
        Object[] removeEntryAtIndex;
        Object[] objArr = this.buffer;
        if (objArr.length == 2) {
            return null;
        }
        removeEntryAtIndex = TrieNodeKt.removeEntryAtIndex(objArr, i);
        return new TrieNode(0, 0, removeEntryAtIndex);
    }

    private final TrieNode mutableCollisionRemoveEntryAtIndex(int i, PersistentHashMapBuilder persistentHashMapBuilder) {
        Object[] removeEntryAtIndex;
        Object[] removeEntryAtIndex2;
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() - 1);
        persistentHashMapBuilder.setOperationResult$runtime_release(valueAtKeyIndex(i));
        if (this.buffer.length == 2) {
            return null;
        }
        if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
            removeEntryAtIndex2 = TrieNodeKt.removeEntryAtIndex(this.buffer, i);
            this.buffer = removeEntryAtIndex2;
            return this;
        }
        removeEntryAtIndex = TrieNodeKt.removeEntryAtIndex(this.buffer, i);
        return new TrieNode(0, 0, removeEntryAtIndex, persistentHashMapBuilder.getOwnership());
    }

    private final boolean collisionContainsKey(Object obj) {
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(obj, this.buffer[first])) {
                if (first != last) {
                    first += step2;
                }
            }
            return true;
        }
        return false;
    }

    private final Object collisionGet(Object obj) {
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 <= 0 || first > last) && (step2 >= 0 || last > first)) {
            return null;
        }
        while (!Intrinsics.areEqual(obj, keyAtIndex(first))) {
            if (first == last) {
                return null;
            }
            first += step2;
        }
        return valueAtKeyIndex(first);
    }

    private final ModificationResult collisionPut(Object obj, Object obj2) {
        Object[] insertEntryAtIndex;
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(obj, keyAtIndex(first))) {
                if (first != last) {
                    first += step2;
                }
            }
            if (obj2 == valueAtKeyIndex(first)) {
                return null;
            }
            Object[] objArr = this.buffer;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
            copyOf[first + 1] = obj2;
            return new TrieNode(0, 0, copyOf).asUpdateResult();
        }
        insertEntryAtIndex = TrieNodeKt.insertEntryAtIndex(this.buffer, 0, obj, obj2);
        return new TrieNode(0, 0, insertEntryAtIndex).asInsertResult();
    }

    private final TrieNode mutableCollisionPut(Object obj, Object obj2, PersistentHashMapBuilder persistentHashMapBuilder) {
        Object[] insertEntryAtIndex;
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(obj, keyAtIndex(first))) {
                if (first != last) {
                    first += step2;
                }
            }
            persistentHashMapBuilder.setOperationResult$runtime_release(valueAtKeyIndex(first));
            if (this.ownedBy == persistentHashMapBuilder.getOwnership()) {
                this.buffer[first + 1] = obj2;
                return this;
            }
            persistentHashMapBuilder.setModCount$runtime_release(persistentHashMapBuilder.getModCount$runtime_release() + 1);
            Object[] objArr = this.buffer;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
            copyOf[first + 1] = obj2;
            return new TrieNode(0, 0, copyOf, persistentHashMapBuilder.getOwnership());
        }
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
        insertEntryAtIndex = TrieNodeKt.insertEntryAtIndex(this.buffer, 0, obj, obj2);
        return new TrieNode(0, 0, insertEntryAtIndex, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode collisionRemove(Object obj) {
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(obj, keyAtIndex(first))) {
                if (first != last) {
                    first += step2;
                }
            }
            return collisionRemoveEntryAtIndex(first);
        }
        return this;
    }

    private final TrieNode mutableCollisionRemove(Object obj, PersistentHashMapBuilder persistentHashMapBuilder) {
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (!Intrinsics.areEqual(obj, keyAtIndex(first))) {
                if (first != last) {
                    first += step2;
                }
            }
            return mutableCollisionRemoveEntryAtIndex(first, persistentHashMapBuilder);
        }
        return this;
    }

    private final TrieNode mutableCollisionRemove(Object obj, Object obj2, PersistentHashMapBuilder persistentHashMapBuilder) {
        IntProgression step = RangesKt.step(RangesKt.until(0, this.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                if (!Intrinsics.areEqual(obj, keyAtIndex(first)) || !Intrinsics.areEqual(obj2, valueAtKeyIndex(first))) {
                    if (first == last) {
                        break;
                    }
                    first += step2;
                } else {
                    return mutableCollisionRemoveEntryAtIndex(first, persistentHashMapBuilder);
                }
            }
        }
        return this;
    }

    private final TrieNode mutableCollisionPutAll(TrieNode trieNode, DeltaCounter deltaCounter, MutabilityOwnership mutabilityOwnership) {
        CommonFunctionsKt.m1061assert(this.nodeMap == 0);
        CommonFunctionsKt.m1061assert(this.dataMap == 0);
        CommonFunctionsKt.m1061assert(trieNode.nodeMap == 0);
        CommonFunctionsKt.m1061assert(trieNode.dataMap == 0);
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length + trieNode.buffer.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        int length = this.buffer.length;
        IntProgression step = RangesKt.step(RangesKt.until(0, trieNode.buffer.length), 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                if (!collisionContainsKey(trieNode.buffer[first])) {
                    Object[] objArr2 = trieNode.buffer;
                    copyOf[length] = objArr2[first];
                    copyOf[length + 1] = objArr2[first + 1];
                    length += 2;
                } else {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                }
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        if (length == this.buffer.length) {
            return this;
        }
        if (length == trieNode.buffer.length) {
            return trieNode;
        }
        if (length == copyOf.length) {
            return new TrieNode(0, 0, copyOf, mutabilityOwnership);
        }
        Object[] copyOf2 = Arrays.copyOf(copyOf, length);
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
        return new TrieNode(0, 0, copyOf2, mutabilityOwnership);
    }

    private final TrieNode mutablePutAllFromOtherNodeCell(TrieNode trieNode, int i, int i2, DeltaCounter deltaCounter, PersistentHashMapBuilder persistentHashMapBuilder) {
        if (hasNodeAt(i)) {
            TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release(i));
            if (trieNode.hasNodeAt(i)) {
                return nodeAtIndex$runtime_release.mutablePutAll(trieNode.nodeAtIndex$runtime_release(trieNode.nodeIndex$runtime_release(i)), i2 + 5, deltaCounter, persistentHashMapBuilder);
            }
            if (!trieNode.hasEntryAt$runtime_release(i)) {
                return nodeAtIndex$runtime_release;
            }
            int entryKeyIndex$runtime_release = trieNode.entryKeyIndex$runtime_release(i);
            Object keyAtIndex = trieNode.keyAtIndex(entryKeyIndex$runtime_release);
            Object valueAtKeyIndex = trieNode.valueAtKeyIndex(entryKeyIndex$runtime_release);
            int size = persistentHashMapBuilder.size();
            TrieNode mutablePut = nodeAtIndex$runtime_release.mutablePut(keyAtIndex != null ? keyAtIndex.hashCode() : 0, keyAtIndex, valueAtKeyIndex, i2 + 5, persistentHashMapBuilder);
            if (persistentHashMapBuilder.size() != size) {
                return mutablePut;
            }
            deltaCounter.setCount(deltaCounter.getCount() + 1);
            return mutablePut;
        }
        if (trieNode.hasNodeAt(i)) {
            TrieNode nodeAtIndex$runtime_release2 = trieNode.nodeAtIndex$runtime_release(trieNode.nodeIndex$runtime_release(i));
            if (hasEntryAt$runtime_release(i)) {
                int entryKeyIndex$runtime_release2 = entryKeyIndex$runtime_release(i);
                Object keyAtIndex2 = keyAtIndex(entryKeyIndex$runtime_release2);
                int i3 = i2 + 5;
                if (!nodeAtIndex$runtime_release2.containsKey(keyAtIndex2 != null ? keyAtIndex2.hashCode() : 0, keyAtIndex2, i3)) {
                    return nodeAtIndex$runtime_release2.mutablePut(keyAtIndex2 != null ? keyAtIndex2.hashCode() : 0, keyAtIndex2, valueAtKeyIndex(entryKeyIndex$runtime_release2), i3, persistentHashMapBuilder);
                }
                deltaCounter.setCount(deltaCounter.getCount() + 1);
            }
            return nodeAtIndex$runtime_release2;
        }
        int entryKeyIndex$runtime_release3 = entryKeyIndex$runtime_release(i);
        Object keyAtIndex3 = keyAtIndex(entryKeyIndex$runtime_release3);
        Object valueAtKeyIndex2 = valueAtKeyIndex(entryKeyIndex$runtime_release3);
        int entryKeyIndex$runtime_release4 = trieNode.entryKeyIndex$runtime_release(i);
        Object keyAtIndex4 = trieNode.keyAtIndex(entryKeyIndex$runtime_release4);
        return makeNode(keyAtIndex3 != null ? keyAtIndex3.hashCode() : 0, keyAtIndex3, valueAtKeyIndex2, keyAtIndex4 != null ? keyAtIndex4.hashCode() : 0, keyAtIndex4, trieNode.valueAtKeyIndex(entryKeyIndex$runtime_release4), i2 + 5, persistentHashMapBuilder.getOwnership());
    }

    private final int calculateSize() {
        if (this.nodeMap == 0) {
            return this.buffer.length / 2;
        }
        int bitCount = Integer.bitCount(this.dataMap);
        int length = this.buffer.length;
        for (int i = bitCount * 2; i < length; i++) {
            bitCount += nodeAtIndex$runtime_release(i).calculateSize();
        }
        return bitCount;
    }

    private final boolean elementsIdentityEquals(TrieNode trieNode) {
        if (this == trieNode) {
            return true;
        }
        if (this.nodeMap != trieNode.nodeMap || this.dataMap != trieNode.dataMap) {
            return false;
        }
        int length = this.buffer.length;
        for (int i = 0; i < length; i++) {
            if (this.buffer[i] != trieNode.buffer[i]) {
                return false;
            }
        }
        return true;
    }

    public final boolean containsKey(int i, Object obj, int i2) {
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            return Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release(indexSegment)));
        }
        if (!hasNodeAt(indexSegment)) {
            return false;
        }
        TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release(indexSegment));
        if (i2 == 30) {
            return nodeAtIndex$runtime_release.collisionContainsKey(obj);
        }
        return nodeAtIndex$runtime_release.containsKey(i, obj, i2 + 5);
    }

    public final Object get(int i, Object obj, int i2) {
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            if (Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release))) {
                return valueAtKeyIndex(entryKeyIndex$runtime_release);
            }
            return null;
        }
        if (!hasNodeAt(indexSegment)) {
            return null;
        }
        TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release(indexSegment));
        if (i2 == 30) {
            return nodeAtIndex$runtime_release.collisionGet(obj);
        }
        return nodeAtIndex$runtime_release.get(i, obj, i2 + 5);
    }

    public final TrieNode mutablePutAll(TrieNode trieNode, int i, DeltaCounter deltaCounter, PersistentHashMapBuilder persistentHashMapBuilder) {
        if (this == trieNode) {
            deltaCounter.plusAssign(calculateSize());
            return this;
        }
        if (i > 30) {
            return mutableCollisionPutAll(trieNode, deltaCounter, persistentHashMapBuilder.getOwnership());
        }
        int i2 = this.nodeMap | trieNode.nodeMap;
        int i3 = this.dataMap;
        int i4 = trieNode.dataMap;
        int i5 = (i3 ^ i4) & (~i2);
        int i6 = i3 & i4;
        int i7 = i5;
        while (i6 != 0) {
            int lowestOneBit = Integer.lowestOneBit(i6);
            if (Intrinsics.areEqual(keyAtIndex(entryKeyIndex$runtime_release(lowestOneBit)), trieNode.keyAtIndex(trieNode.entryKeyIndex$runtime_release(lowestOneBit)))) {
                i7 |= lowestOneBit;
            } else {
                i2 |= lowestOneBit;
            }
            i6 ^= lowestOneBit;
        }
        int i8 = 0;
        if (!((i2 & i7) == 0)) {
            PreconditionsKt.throwIllegalStateException("Check failed.");
        }
        TrieNode trieNode2 = (Intrinsics.areEqual(this.ownedBy, persistentHashMapBuilder.getOwnership()) && this.dataMap == i7 && this.nodeMap == i2) ? this : new TrieNode(i7, i2, new Object[(Integer.bitCount(i7) * 2) + Integer.bitCount(i2)]);
        int i9 = i2;
        int i10 = 0;
        while (i9 != 0) {
            int lowestOneBit2 = Integer.lowestOneBit(i9);
            Object[] objArr = trieNode2.buffer;
            objArr[(objArr.length - 1) - i10] = mutablePutAllFromOtherNodeCell(trieNode, lowestOneBit2, i, deltaCounter, persistentHashMapBuilder);
            i10++;
            i9 ^= lowestOneBit2;
        }
        while (i7 != 0) {
            int lowestOneBit3 = Integer.lowestOneBit(i7);
            int i11 = i8 * 2;
            if (!trieNode.hasEntryAt$runtime_release(lowestOneBit3)) {
                int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(lowestOneBit3);
                trieNode2.buffer[i11] = keyAtIndex(entryKeyIndex$runtime_release);
                trieNode2.buffer[i11 + 1] = valueAtKeyIndex(entryKeyIndex$runtime_release);
            } else {
                int entryKeyIndex$runtime_release2 = trieNode.entryKeyIndex$runtime_release(lowestOneBit3);
                trieNode2.buffer[i11] = trieNode.keyAtIndex(entryKeyIndex$runtime_release2);
                trieNode2.buffer[i11 + 1] = trieNode.valueAtKeyIndex(entryKeyIndex$runtime_release2);
                if (hasEntryAt$runtime_release(lowestOneBit3)) {
                    deltaCounter.setCount(deltaCounter.getCount() + 1);
                }
            }
            i8++;
            i7 ^= lowestOneBit3;
        }
        return elementsIdentityEquals(trieNode2) ? this : trieNode.elementsIdentityEquals(trieNode2) ? trieNode : trieNode2;
    }

    public final ModificationResult put(int i, Object obj, Object obj2, int i2) {
        ModificationResult put;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            if (Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release))) {
                if (valueAtKeyIndex(entryKeyIndex$runtime_release) == obj2) {
                    return null;
                }
                return updateValueAtIndex(entryKeyIndex$runtime_release, obj2).asUpdateResult();
            }
            return moveEntryToNode(entryKeyIndex$runtime_release, indexSegment, i, obj, obj2, i2).asInsertResult();
        }
        if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime_release = nodeIndex$runtime_release(indexSegment);
            TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release);
            if (i2 == 30) {
                put = nodeAtIndex$runtime_release.collisionPut(obj, obj2);
                if (put == null) {
                    return null;
                }
            } else {
                put = nodeAtIndex$runtime_release.put(i, obj, obj2, i2 + 5);
                if (put == null) {
                    return null;
                }
            }
            put.setNode(updateNodeAtIndex(nodeIndex$runtime_release, indexSegment, put.getNode()));
            return put;
        }
        return insertEntryAt(indexSegment, obj, obj2).asInsertResult();
    }

    public final TrieNode mutablePut(int i, Object obj, Object obj2, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode mutablePut;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            if (Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release))) {
                persistentHashMapBuilder.setOperationResult$runtime_release(valueAtKeyIndex(entryKeyIndex$runtime_release));
                return valueAtKeyIndex(entryKeyIndex$runtime_release) == obj2 ? this : mutableUpdateValueAtIndex(entryKeyIndex$runtime_release, obj2, persistentHashMapBuilder);
            }
            persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
            return mutableMoveEntryToNode(entryKeyIndex$runtime_release, indexSegment, i, obj, obj2, i2, persistentHashMapBuilder.getOwnership());
        }
        if (hasNodeAt(indexSegment)) {
            int nodeIndex$runtime_release = nodeIndex$runtime_release(indexSegment);
            TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release);
            if (i2 == 30) {
                mutablePut = nodeAtIndex$runtime_release.mutableCollisionPut(obj, obj2, persistentHashMapBuilder);
            } else {
                mutablePut = nodeAtIndex$runtime_release.mutablePut(i, obj, obj2, i2 + 5, persistentHashMapBuilder);
            }
            return nodeAtIndex$runtime_release == mutablePut ? this : mutableUpdateNodeAtIndex(nodeIndex$runtime_release, mutablePut, persistentHashMapBuilder.getOwnership());
        }
        persistentHashMapBuilder.setSize(persistentHashMapBuilder.size() + 1);
        return mutableInsertEntryAt(indexSegment, obj, obj2, persistentHashMapBuilder.getOwnership());
    }

    public final TrieNode remove(int i, Object obj, int i2) {
        TrieNode remove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            return Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release)) ? removeEntryAtIndex(entryKeyIndex$runtime_release, indexSegment) : this;
        }
        if (!hasNodeAt(indexSegment)) {
            return this;
        }
        int nodeIndex$runtime_release = nodeIndex$runtime_release(indexSegment);
        TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release);
        if (i2 == 30) {
            remove = nodeAtIndex$runtime_release.collisionRemove(obj);
        } else {
            remove = nodeAtIndex$runtime_release.remove(i, obj, i2 + 5);
        }
        return replaceNode(nodeAtIndex$runtime_release, remove, nodeIndex$runtime_release, indexSegment);
    }

    private final TrieNode replaceNode(TrieNode trieNode, TrieNode trieNode2, int i, int i2) {
        if (trieNode2 == null) {
            return removeNodeAtIndex(i, i2);
        }
        return trieNode != trieNode2 ? updateNodeAtIndex(i, i2, trieNode2) : this;
    }

    public final TrieNode mutableRemove(int i, Object obj, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode mutableRemove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            return Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release)) ? mutableRemoveEntryAtIndex(entryKeyIndex$runtime_release, indexSegment, persistentHashMapBuilder) : this;
        }
        if (!hasNodeAt(indexSegment)) {
            return this;
        }
        int nodeIndex$runtime_release = nodeIndex$runtime_release(indexSegment);
        TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release);
        if (i2 == 30) {
            mutableRemove = nodeAtIndex$runtime_release.mutableCollisionRemove(obj, persistentHashMapBuilder);
        } else {
            mutableRemove = nodeAtIndex$runtime_release.mutableRemove(i, obj, i2 + 5, persistentHashMapBuilder);
        }
        return mutableReplaceNode(nodeAtIndex$runtime_release, mutableRemove, nodeIndex$runtime_release, indexSegment, persistentHashMapBuilder.getOwnership());
    }

    private final TrieNode mutableReplaceNode(TrieNode trieNode, TrieNode trieNode2, int i, int i2, MutabilityOwnership mutabilityOwnership) {
        if (trieNode2 == null) {
            return mutableRemoveNodeAtIndex(i, i2, mutabilityOwnership);
        }
        return (this.ownedBy == mutabilityOwnership || trieNode != trieNode2) ? mutableUpdateNodeAtIndex(i, trieNode2, mutabilityOwnership) : this;
    }

    public final TrieNode mutableRemove(int i, Object obj, Object obj2, int i2, PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNode mutableRemove;
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i2);
        if (hasEntryAt$runtime_release(indexSegment)) {
            int entryKeyIndex$runtime_release = entryKeyIndex$runtime_release(indexSegment);
            return (Intrinsics.areEqual(obj, keyAtIndex(entryKeyIndex$runtime_release)) && Intrinsics.areEqual(obj2, valueAtKeyIndex(entryKeyIndex$runtime_release))) ? mutableRemoveEntryAtIndex(entryKeyIndex$runtime_release, indexSegment, persistentHashMapBuilder) : this;
        }
        if (!hasNodeAt(indexSegment)) {
            return this;
        }
        int nodeIndex$runtime_release = nodeIndex$runtime_release(indexSegment);
        TrieNode nodeAtIndex$runtime_release = nodeAtIndex$runtime_release(nodeIndex$runtime_release);
        if (i2 == 30) {
            mutableRemove = nodeAtIndex$runtime_release.mutableCollisionRemove(obj, obj2, persistentHashMapBuilder);
        } else {
            mutableRemove = nodeAtIndex$runtime_release.mutableRemove(i, obj, obj2, i2 + 5, persistentHashMapBuilder);
        }
        return mutableReplaceNode(nodeAtIndex$runtime_release, mutableRemove, nodeIndex$runtime_release, indexSegment, persistentHashMapBuilder.getOwnership());
    }

    /* compiled from: TrieNode.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TrieNode getEMPTY$runtime_release() {
            return TrieNode.EMPTY;
        }
    }
}
