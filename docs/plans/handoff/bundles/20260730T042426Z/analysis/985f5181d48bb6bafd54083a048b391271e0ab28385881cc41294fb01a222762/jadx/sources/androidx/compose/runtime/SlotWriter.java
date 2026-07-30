package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SlotTable.kt */
/* loaded from: classes.dex */
public final class SlotWriter {
    private ArrayList anchors;
    private MutableIntObjectMap calledByMap;
    private boolean closed;
    private int currentGroup;
    private int currentGroupEnd;
    private int currentSlot;
    private int currentSlotEnd;
    private MutableIntObjectMap deferredSlotWrites;
    private int groupGapLen;
    private int groupGapStart;
    private int[] groups;
    private int insertCount;
    private int nodeCount;
    private PrioritySet pendingRecalculateMarks;
    private Object[] slots;
    private int slotsGapLen;
    private int slotsGapOwner;
    private int slotsGapStart;
    private HashMap sourceInformationMap;
    private final SlotTable table;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private final IntStack startStack = new IntStack();
    private final IntStack endStack = new IntStack();
    private final IntStack nodeCountStack = new IntStack();
    private int parent = -1;

    private final int dataAnchorToDataIndex(int i, int i2, int i3) {
        return i < 0 ? (i3 - i2) + i + 1 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAnchor(int i, int i2, int i3, int i4) {
        return i > i2 ? -(((i4 - i3) - i) + 1) : i;
    }

    public SlotWriter(SlotTable slotTable) {
        this.table = slotTable;
        this.groups = slotTable.getGroups();
        this.slots = slotTable.getSlots();
        this.anchors = slotTable.getAnchors$runtime_release();
        this.sourceInformationMap = slotTable.getSourceInformationMap$runtime_release();
        this.calledByMap = slotTable.getCalledByMap$runtime_release();
        this.groupGapStart = slotTable.getGroupsSize();
        this.groupGapLen = (this.groups.length / 5) - slotTable.getGroupsSize();
        this.slotsGapStart = slotTable.getSlotsSize();
        this.slotsGapLen = this.slots.length - slotTable.getSlotsSize();
        this.slotsGapOwner = slotTable.getGroupsSize();
        this.currentGroupEnd = slotTable.getGroupsSize();
    }

    public final SlotTable getTable$runtime_release() {
        return this.table;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    public final int getCurrentGroupEnd() {
        return this.currentGroupEnd;
    }

    public final int getSlotsSize() {
        return this.slots.length - this.slotsGapLen;
    }

    public final boolean isNode() {
        boolean isNode;
        int i = this.currentGroup;
        if (i < this.currentGroupEnd) {
            isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress(i));
            if (isNode) {
                return true;
            }
        }
        return false;
    }

    public final boolean isNode(int i) {
        boolean isNode;
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress(i));
        return isNode;
    }

    public final int nodeCount(int i) {
        int nodeCount;
        nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress(i));
        return nodeCount;
    }

    public final int groupKey(int i) {
        int key;
        key = SlotTableKt.key(this.groups, groupIndexToAddress(i));
        return key;
    }

    public final Object groupObjectKey(int i) {
        boolean hasObjectKey;
        int objectKeyIndex;
        int groupIndexToAddress = groupIndexToAddress(i);
        hasObjectKey = SlotTableKt.hasObjectKey(this.groups, groupIndexToAddress);
        if (!hasObjectKey) {
            return null;
        }
        Object[] objArr = this.slots;
        objectKeyIndex = SlotTableKt.objectKeyIndex(this.groups, groupIndexToAddress);
        return objArr[objectKeyIndex];
    }

    public final int groupSize(int i) {
        int groupSize;
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i));
        return groupSize;
    }

    public final Object groupAux(int i) {
        boolean hasAux;
        int groupIndexToAddress = groupIndexToAddress(i);
        hasAux = SlotTableKt.hasAux(this.groups, groupIndexToAddress);
        return hasAux ? this.slots[auxIndex(this.groups, groupIndexToAddress)] : Composer.Companion.getEmpty();
    }

    public final boolean indexInParent(int i) {
        int i2 = this.parent;
        return (i > i2 && i < this.currentGroupEnd) || (i2 == 0 && i == 0);
    }

    public final boolean indexInCurrentGroup(int i) {
        return indexInGroup(i, this.currentGroup);
    }

    public final boolean indexInGroup(int i, int i2) {
        int capacity;
        int groupSize;
        if (i2 == this.parent) {
            capacity = this.currentGroupEnd;
        } else {
            if (i2 > this.startStack.peekOr(0)) {
                groupSize = groupSize(i2);
            } else {
                int indexOf = this.startStack.indexOf(i2);
                if (indexOf < 0) {
                    groupSize = groupSize(i2);
                } else {
                    capacity = (getCapacity() - this.groupGapLen) - this.endStack.peek(indexOf);
                }
            }
            capacity = groupSize + i2;
        }
        return i > i2 && i < capacity;
    }

    public final Object node(int i) {
        boolean isNode;
        int groupIndexToAddress = groupIndexToAddress(i);
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (isNode) {
            return this.slots[dataIndexToDataAddress(nodeIndex(this.groups, groupIndexToAddress))];
        }
        return null;
    }

    public final Object node(Anchor anchor) {
        return node(anchor.toIndexFor(this));
    }

    public final int getParent() {
        return this.parent;
    }

    public final int parent(int i) {
        return parent(this.groups, i);
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final void close(boolean z) {
        this.closed = true;
        if (z && this.startStack.isEmpty()) {
            moveGroupGapTo(getSize$runtime_release());
            moveSlotGapTo(this.slots.length - this.slotsGapLen, this.groupGapStart);
            clearSlotGap();
            recalculateMarks();
        }
        this.table.close$runtime_release(this, this.groups, this.groupGapStart, this.slots, this.slotsGapStart, this.anchors, this.sourceInformationMap, this.calledByMap);
    }

    public final void reset() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot reset when inserting");
        }
        recalculateMarks();
        this.currentGroup = 0;
        this.currentGroupEnd = getCapacity() - this.groupGapLen;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
        this.nodeCount = 0;
    }

    public final Object update(Object obj) {
        if (this.insertCount > 0 && this.currentSlot != this.slotsGapStart) {
            MutableIntObjectMap mutableIntObjectMap = this.deferredSlotWrites;
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i = 1;
            int i2 = 0;
            if (mutableIntObjectMap == null) {
                mutableIntObjectMap = new MutableIntObjectMap(i2, i, defaultConstructorMarker);
            }
            this.deferredSlotWrites = mutableIntObjectMap;
            int i3 = this.parent;
            Object obj2 = mutableIntObjectMap.get(i3);
            if (obj2 == null) {
                obj2 = new MutableObjectList(i2, i, defaultConstructorMarker);
                mutableIntObjectMap.set(i3, obj2);
            }
            ((MutableObjectList) obj2).add(obj);
            return Composer.Companion.getEmpty();
        }
        return rawUpdate(obj);
    }

    private final Object rawUpdate(Object obj) {
        Object skip = skip();
        set(obj);
        return skip;
    }

    public final void appendSlot(Anchor anchor, Object obj) {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Can only append a slot if not current inserting");
        }
        int i = this.currentSlot;
        int i2 = this.currentSlotEnd;
        int anchorIndex = anchorIndex(anchor);
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(anchorIndex + 1));
        this.currentSlot = dataIndex;
        this.currentSlotEnd = dataIndex;
        insertSlots(1, anchorIndex);
        if (i >= dataIndex) {
            i++;
            i2++;
        }
        this.slots[dataIndex] = obj;
        this.currentSlot = i;
        this.currentSlotEnd = i2;
    }

    public final void trimTailSlots(int i) {
        ComposerKt.runtimeCheck(i > 0);
        int i2 = this.parent;
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i2));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i2 + 1)) - i;
        ComposerKt.runtimeCheck(dataIndex >= slotIndex);
        removeSlots(dataIndex, i, i2);
        int i3 = this.currentSlot;
        if (i3 >= slotIndex) {
            this.currentSlot = i3 - i;
        }
    }

    public final void updateAux(Object obj) {
        boolean hasAux;
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        hasAux = SlotTableKt.hasAux(this.groups, groupIndexToAddress);
        if (!hasAux) {
            ComposerKt.composeImmediateRuntimeError("Updating the data of a group that was not created with a data slot");
        }
        this.slots[dataIndexToDataAddress(auxIndex(this.groups, groupIndexToAddress))] = obj;
    }

    public final void updateToTableMaps() {
        this.sourceInformationMap = this.table.getSourceInformationMap$runtime_release();
        this.calledByMap = this.table.getCalledByMap$runtime_release();
    }

    public final void updateNode(Object obj) {
        updateNodeOfGroup(this.currentGroup, obj);
    }

    public final void updateNode(Anchor anchor, Object obj) {
        updateNodeOfGroup(anchor.toIndexFor(this), obj);
    }

    public final void set(Object obj) {
        if (!(this.currentSlot <= this.currentSlotEnd)) {
            ComposerKt.composeImmediateRuntimeError("Writing to an invalid slot");
        }
        this.slots[dataIndexToDataAddress(this.currentSlot - 1)] = obj;
    }

    public final Object set(int i, Object obj) {
        return set(this.currentGroup, i, obj);
    }

    public final int slotIndexOfGroupSlotIndex(int i, int i2) {
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i));
        int i3 = slotIndex + i2;
        if (!(i3 >= slotIndex && i3 < dataIndex(this.groups, groupIndexToAddress(i + 1)))) {
            ComposerKt.composeImmediateRuntimeError("Write to an invalid slot index " + i2 + " for group " + i);
        }
        return i3;
    }

    public final Object set(int i, int i2, Object obj) {
        int dataIndexToDataAddress = dataIndexToDataAddress(slotIndexOfGroupSlotIndex(i, i2));
        Object[] objArr = this.slots;
        Object obj2 = objArr[dataIndexToDataAddress];
        objArr[dataIndexToDataAddress] = obj;
        return obj2;
    }

    public final Object skip() {
        if (this.insertCount > 0) {
            insertSlots(1, this.parent);
        }
        Object[] objArr = this.slots;
        int i = this.currentSlot;
        this.currentSlot = i + 1;
        return objArr[dataIndexToDataAddress(i)];
    }

    public final Object slot(Anchor anchor, int i) {
        return slot(anchorIndex(anchor), i);
    }

    public final Object slot(int i, int i2) {
        int slotIndex = slotIndex(this.groups, groupIndexToAddress(i));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i + 1));
        int i3 = i2 + slotIndex;
        if (slotIndex > i3 || i3 >= dataIndex) {
            return Composer.Companion.getEmpty();
        }
        return this.slots[dataIndexToDataAddress(i3)];
    }

    public final int slotsStartIndex$runtime_release(int i) {
        return slotIndex(this.groups, groupIndexToAddress(i));
    }

    public final int slotsEndIndex$runtime_release(int i) {
        return dataIndex(this.groups, groupIndexToAddress(i + 1));
    }

    public final int slotsEndAllIndex$runtime_release(int i) {
        return dataIndex(this.groups, groupIndexToAddress(i + groupSize(i)));
    }

    public final void advanceBy(int i) {
        boolean z = false;
        if (!(i >= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek backwards");
        }
        if (!(this.insertCount <= 0)) {
            PreconditionsKt.throwIllegalStateException("Cannot call seek() while inserting");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.currentGroup + i;
        if (i2 >= this.parent && i2 <= this.currentGroupEnd) {
            z = true;
        }
        if (!z) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek outside the current group (" + this.parent + CoreConstants.DASH_CHAR + this.currentGroupEnd + CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }
        this.currentGroup = i2;
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i2));
        this.currentSlot = dataIndex;
        this.currentSlotEnd = dataIndex;
    }

    public final void skipToGroupEnd() {
        int i = this.currentGroupEnd;
        this.currentGroup = i;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i));
    }

    public final void beginInsert() {
        int i = this.insertCount;
        this.insertCount = i + 1;
        if (i == 0) {
            saveCurrentGroupEnd();
        }
    }

    public final void endInsert() {
        if (!(this.insertCount > 0)) {
            PreconditionsKt.throwIllegalStateException("Unbalanced begin/end insert");
        }
        int i = this.insertCount - 1;
        this.insertCount = i;
        if (i == 0) {
            if (!(this.nodeCountStack.getSize() == this.startStack.getSize())) {
                ComposerKt.composeImmediateRuntimeError("startGroup/endGroup mismatch while inserting");
            }
            restoreCurrentGroupEnd();
        }
    }

    public final void startGroup() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Key must be supplied when inserting");
        }
        Composer.Companion companion = Composer.Companion;
        startGroup(0, companion.getEmpty(), false, companion.getEmpty());
    }

    public final void startGroup(int i, Object obj) {
        startGroup(i, obj, false, Composer.Companion.getEmpty());
    }

    public final void startNode(int i, Object obj) {
        startGroup(i, obj, true, Composer.Companion.getEmpty());
    }

    public final void startData(int i, Object obj, Object obj2) {
        startGroup(i, obj, false, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void startGroup(int i, Object obj, boolean z, Object obj2) {
        int nodeCount;
        int groupSize;
        int i2;
        int i3 = this.parent;
        Object[] objArr = this.insertCount > 0;
        this.nodeCountStack.push(this.nodeCount);
        if (objArr != false) {
            int i4 = this.currentGroup;
            int dataIndex = dataIndex(this.groups, groupIndexToAddress(i4));
            insertGroups(1);
            this.currentSlot = dataIndex;
            this.currentSlotEnd = dataIndex;
            int groupIndexToAddress = groupIndexToAddress(i4);
            Composer.Companion companion = Composer.Companion;
            int i5 = obj != companion.getEmpty() ? 1 : 0;
            int i6 = (z || obj2 == companion.getEmpty()) ? 0 : 1;
            int dataIndexToDataAnchor = dataIndexToDataAnchor(dataIndex, this.slotsGapStart, this.slotsGapLen, this.slots.length);
            if (dataIndexToDataAnchor >= 0 && this.slotsGapOwner < i4) {
                dataIndexToDataAnchor = -(((this.slots.length - this.slotsGapLen) - dataIndexToDataAnchor) + 1);
            }
            SlotTableKt.initGroup(this.groups, groupIndexToAddress, i, z, i5, i6, this.parent, dataIndexToDataAnchor);
            int i7 = (z ? 1 : 0) + i5 + i6;
            if (i7 > 0) {
                insertSlots(i7, i4);
                Object[] objArr2 = this.slots;
                int i8 = this.currentSlot;
                if (z) {
                    objArr2[i8] = obj2;
                    i8++;
                }
                if (i5 != 0) {
                    objArr2[i8] = obj;
                    i8++;
                }
                if (i6 != 0) {
                    objArr2[i8] = obj2;
                    i8++;
                }
                this.currentSlot = i8;
            }
            this.nodeCount = 0;
            i2 = i4 + 1;
            this.parent = i4;
            this.currentGroup = i2;
            if (i3 >= 0) {
                sourceInformationOf(i3);
            }
        } else {
            this.startStack.push(i3);
            saveCurrentGroupEnd();
            int i9 = this.currentGroup;
            int groupIndexToAddress2 = groupIndexToAddress(i9);
            if (!Intrinsics.areEqual(obj2, Composer.Companion.getEmpty())) {
                if (z) {
                    updateNode(obj2);
                } else {
                    updateAux(obj2);
                }
            }
            this.currentSlot = slotIndex(this.groups, groupIndexToAddress2);
            this.currentSlotEnd = dataIndex(this.groups, groupIndexToAddress(this.currentGroup + 1));
            nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress2);
            this.nodeCount = nodeCount;
            this.parent = i9;
            this.currentGroup = i9 + 1;
            groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress2);
            i2 = i9 + groupSize;
        }
        this.currentGroupEnd = i2;
    }

    public final int endGroup() {
        boolean isNode;
        int groupSize;
        int nodeCount;
        boolean isNode2;
        int nodeCount2;
        int groupSize2;
        MutableObjectList mutableObjectList;
        boolean z = this.insertCount > 0;
        int i = this.currentGroup;
        int i2 = this.currentGroupEnd;
        int i3 = this.parent;
        int groupIndexToAddress = groupIndexToAddress(i3);
        int i4 = this.nodeCount;
        int i5 = i - i3;
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (!z) {
            if (!(i == i2)) {
                ComposerKt.composeImmediateRuntimeError("Expected to be at the end of a group");
            }
            groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
            nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
            SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress, i5);
            SlotTableKt.updateNodeCount(this.groups, groupIndexToAddress, i4);
            int pop = this.startStack.pop();
            restoreCurrentGroupEnd();
            this.parent = pop;
            int parent = parent(this.groups, i3);
            int pop2 = this.nodeCountStack.pop();
            this.nodeCount = pop2;
            if (parent == pop) {
                this.nodeCount = pop2 + (isNode ? 0 : i4 - nodeCount);
            } else {
                int i6 = i5 - groupSize;
                int i7 = isNode ? 0 : i4 - nodeCount;
                if (i6 != 0 || i7 != 0) {
                    while (parent != 0 && parent != pop && (i7 != 0 || i6 != 0)) {
                        int groupIndexToAddress2 = groupIndexToAddress(parent);
                        if (i6 != 0) {
                            groupSize2 = SlotTableKt.groupSize(this.groups, groupIndexToAddress2);
                            SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress2, groupSize2 + i6);
                        }
                        if (i7 != 0) {
                            int[] iArr = this.groups;
                            nodeCount2 = SlotTableKt.nodeCount(iArr, groupIndexToAddress2);
                            SlotTableKt.updateNodeCount(iArr, groupIndexToAddress2, nodeCount2 + i7);
                        }
                        isNode2 = SlotTableKt.isNode(this.groups, groupIndexToAddress2);
                        if (isNode2) {
                            i7 = 0;
                        }
                        parent = parent(this.groups, parent);
                    }
                }
                this.nodeCount += i7;
            }
        } else {
            MutableIntObjectMap mutableIntObjectMap = this.deferredSlotWrites;
            if (mutableIntObjectMap != null && (mutableObjectList = (MutableObjectList) mutableIntObjectMap.get(i3)) != null) {
                Object[] objArr = mutableObjectList.content;
                int i8 = mutableObjectList._size;
                for (int i9 = 0; i9 < i8; i9++) {
                    rawUpdate(objArr[i9]);
                }
            }
            SlotTableKt.updateGroupSize(this.groups, groupIndexToAddress, i5);
            SlotTableKt.updateNodeCount(this.groups, groupIndexToAddress, i4);
            this.nodeCount = this.nodeCountStack.pop() + (isNode ? 1 : i4);
            int parent2 = parent(this.groups, i3);
            this.parent = parent2;
            int size$runtime_release = parent2 < 0 ? getSize$runtime_release() : groupIndexToAddress(parent2 + 1);
            int dataIndex = size$runtime_release >= 0 ? dataIndex(this.groups, size$runtime_release) : 0;
            this.currentSlot = dataIndex;
            this.currentSlotEnd = dataIndex;
        }
        return i4;
    }

    public final void ensureStarted(int i) {
        boolean z = false;
        if (!(this.insertCount <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot call ensureStarted() while inserting");
        }
        int i2 = this.parent;
        if (i2 != i) {
            if (i >= i2 && i < this.currentGroupEnd) {
                z = true;
            }
            if (!z) {
                ComposerKt.composeImmediateRuntimeError("Started group at " + i + " must be a subgroup of the group at " + i2);
            }
            int i3 = this.currentGroup;
            int i4 = this.currentSlot;
            int i5 = this.currentSlotEnd;
            this.currentGroup = i;
            startGroup();
            this.currentGroup = i3;
            this.currentSlot = i4;
            this.currentSlotEnd = i5;
        }
    }

    public final void ensureStarted(Anchor anchor) {
        ensureStarted(anchor.toIndexFor(this));
    }

    public final int skipGroup() {
        int groupSize;
        boolean isNode;
        int nodeCount;
        int groupIndexToAddress = groupIndexToAddress(this.currentGroup);
        int i = this.currentGroup;
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress);
        int i2 = i + groupSize;
        this.currentGroup = i2;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i2));
        isNode = SlotTableKt.isNode(this.groups, groupIndexToAddress);
        if (isNode) {
            return 1;
        }
        nodeCount = SlotTableKt.nodeCount(this.groups, groupIndexToAddress);
        return nodeCount;
    }

    public final boolean removeGroup() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot remove group while inserting");
        }
        int i = this.currentGroup;
        int i2 = this.currentSlot;
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(i));
        int skipGroup = skipGroup();
        sourceInformationOf(this.parent);
        PrioritySet prioritySet = this.pendingRecalculateMarks;
        if (prioritySet != null) {
            while (prioritySet.isNotEmpty() && prioritySet.peek() >= i) {
                prioritySet.takeMax();
            }
        }
        boolean removeGroups = removeGroups(i, this.currentGroup - i);
        removeSlots(dataIndex, this.currentSlot - dataIndex, i - 1);
        this.currentGroup = i;
        this.currentSlot = i2;
        this.nodeCount -= skipGroup;
        return removeGroups;
    }

    public final void moveGroup(int i) {
        int groupSize;
        int groupSize2;
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot move a group while inserting");
        }
        if (!(i >= 0)) {
            ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.currentGroup;
        int i3 = this.parent;
        int i4 = this.currentGroupEnd;
        int i5 = i2;
        for (int i6 = i; i6 > 0; i6--) {
            groupSize2 = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i5));
            i5 += groupSize2;
            if (!(i5 <= i4)) {
                ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
            }
        }
        groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i5));
        int dataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int dataIndex2 = dataIndex(this.groups, groupIndexToAddress(i5));
        int i7 = i5 + groupSize;
        int dataIndex3 = dataIndex(this.groups, groupIndexToAddress(i7));
        int i8 = dataIndex3 - dataIndex2;
        insertSlots(i8, Math.max(this.currentGroup - 1, 0));
        insertGroups(groupSize);
        int[] iArr = this.groups;
        int groupIndexToAddress = groupIndexToAddress(i7) * 5;
        ArraysKt.copyInto(iArr, iArr, groupIndexToAddress(i2) * 5, groupIndexToAddress, (groupSize * 5) + groupIndexToAddress);
        if (i8 > 0) {
            Object[] objArr = this.slots;
            ArraysKt.copyInto(objArr, objArr, dataIndex, dataIndexToDataAddress(dataIndex2 + i8), dataIndexToDataAddress(dataIndex3 + i8));
        }
        int i9 = dataIndex2 + i8;
        int i10 = i9 - dataIndex;
        int i11 = this.slotsGapStart;
        int i12 = this.slotsGapLen;
        int length = this.slots.length;
        int i13 = this.slotsGapOwner;
        int i14 = i2 + groupSize;
        int i15 = i2;
        while (i15 < i14) {
            int groupIndexToAddress2 = groupIndexToAddress(i15);
            int i16 = i11;
            int i17 = i10;
            updateDataIndex(iArr, groupIndexToAddress2, dataIndexToDataAnchor(dataIndex(iArr, groupIndexToAddress2) - i10, i13 < groupIndexToAddress2 ? 0 : i16, i12, length));
            i15++;
            i11 = i16;
            i10 = i17;
        }
        moveAnchors(i7, i2, groupSize);
        if (removeGroups(i7, groupSize)) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        fixParentAnchorsFor(i3, this.currentGroupEnd, i2);
        if (i8 > 0) {
            removeSlots(i9, i8, i7 - 1);
        }
    }

    /* compiled from: SlotTable.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        static /* synthetic */ List moveGroup$default(Companion companion, SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3, int i2, Object obj) {
            if ((i2 & 32) != 0) {
                z3 = true;
            }
            return companion.moveGroup(slotWriter, i, slotWriter2, z, z2, z3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List moveGroup(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            int locationOf;
            int locationOf2;
            List list;
            boolean isNode;
            int locationOf3;
            int i2;
            int parentAnchor;
            int groupSize = slotWriter.groupSize(i);
            int i3 = i + groupSize;
            int dataIndex = slotWriter.dataIndex(i);
            int dataIndex2 = slotWriter.dataIndex(i3);
            int i4 = dataIndex2 - dataIndex;
            boolean containsAnyGroupMarks = slotWriter.containsAnyGroupMarks(i);
            slotWriter2.insertGroups(groupSize);
            slotWriter2.insertSlots(i4, slotWriter2.getCurrentGroup());
            if (slotWriter.groupGapStart < i3) {
                slotWriter.moveGroupGapTo(i3);
            }
            if (slotWriter.slotsGapStart < dataIndex2) {
                slotWriter.moveSlotGapTo(dataIndex2, i3);
            }
            int[] iArr = slotWriter2.groups;
            int currentGroup = slotWriter2.getCurrentGroup();
            ArraysKt.copyInto(slotWriter.groups, iArr, currentGroup * 5, i * 5, i3 * 5);
            Object[] objArr = slotWriter2.slots;
            int i5 = slotWriter2.currentSlot;
            ArraysKt.copyInto(slotWriter.slots, objArr, i5, dataIndex, dataIndex2);
            int parent = slotWriter2.getParent();
            SlotTableKt.updateParentAnchor(iArr, currentGroup, parent);
            int i6 = currentGroup - i;
            int i7 = currentGroup + groupSize;
            int dataIndex3 = i5 - slotWriter2.dataIndex(iArr, currentGroup);
            int i8 = slotWriter2.slotsGapOwner;
            int i9 = slotWriter2.slotsGapLen;
            int length = objArr.length;
            int i10 = i8;
            int i11 = currentGroup;
            while (true) {
                z4 = false;
                if (i11 >= i7) {
                    break;
                }
                if (i11 != currentGroup) {
                    parentAnchor = SlotTableKt.parentAnchor(iArr, i11);
                    i2 = i7;
                    SlotTableKt.updateParentAnchor(iArr, i11, parentAnchor + i6);
                } else {
                    i2 = i7;
                }
                int i12 = dataIndex3;
                SlotTableKt.updateDataAnchor(iArr, i11, slotWriter2.dataIndexToDataAnchor(slotWriter2.dataIndex(iArr, i11) + dataIndex3, i10 >= i11 ? slotWriter2.slotsGapStart : 0, i9, length));
                if (i11 == i10) {
                    i10++;
                }
                i11++;
                dataIndex3 = i12;
                i7 = i2;
            }
            int i13 = i7;
            slotWriter2.slotsGapOwner = i10;
            locationOf = SlotTableKt.locationOf(slotWriter.anchors, i, slotWriter.getSize$runtime_release());
            locationOf2 = SlotTableKt.locationOf(slotWriter.anchors, i3, slotWriter.getSize$runtime_release());
            if (locationOf < locationOf2) {
                ArrayList arrayList = slotWriter.anchors;
                ArrayList arrayList2 = new ArrayList(locationOf2 - locationOf);
                for (int i14 = locationOf; i14 < locationOf2; i14++) {
                    Anchor anchor = (Anchor) arrayList.get(i14);
                    anchor.setLocation$runtime_release(anchor.getLocation$runtime_release() + i6);
                    arrayList2.add(anchor);
                }
                locationOf3 = SlotTableKt.locationOf(slotWriter2.anchors, slotWriter2.getCurrentGroup(), slotWriter2.getSize$runtime_release());
                slotWriter2.anchors.addAll(locationOf3, arrayList2);
                arrayList.subList(locationOf, locationOf2).clear();
                list = arrayList2;
            } else {
                list = CollectionsKt.emptyList();
            }
            if (!list.isEmpty()) {
                HashMap hashMap = slotWriter.sourceInformationMap;
                HashMap hashMap2 = slotWriter2.sourceInformationMap;
                if (hashMap != null && hashMap2 != null) {
                    int size = list.size();
                    for (int i15 = 0; i15 < size; i15++) {
                    }
                }
            }
            slotWriter2.getParent();
            slotWriter2.sourceInformationOf(parent);
            int parent2 = slotWriter.parent(i);
            if (z3) {
                if (!z) {
                    z4 = slotWriter.removeGroups(i, groupSize);
                    slotWriter.removeSlots(dataIndex, i4, i - 1);
                } else {
                    boolean z5 = parent2 >= 0;
                    if (z5) {
                        slotWriter.startGroup();
                        slotWriter.advanceBy(parent2 - slotWriter.getCurrentGroup());
                        slotWriter.startGroup();
                    }
                    slotWriter.advanceBy(i - slotWriter.getCurrentGroup());
                    boolean removeGroup = slotWriter.removeGroup();
                    if (z5) {
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                    }
                    z4 = removeGroup;
                }
            }
            if (z4) {
                ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
            }
            int i16 = slotWriter2.nodeCount;
            isNode = SlotTableKt.isNode(iArr, currentGroup);
            slotWriter2.nodeCount = i16 + (isNode ? 1 : SlotTableKt.nodeCount(iArr, currentGroup));
            if (z2) {
                slotWriter2.currentGroup = i13;
                slotWriter2.currentSlot = i5 + i4;
            }
            if (containsAnyGroupMarks) {
                slotWriter2.updateContainsMark(parent);
            }
            return list;
        }
    }

    public final List moveFrom(SlotTable slotTable, int i, boolean z) {
        int groupSize;
        ComposerKt.runtimeCheck(this.insertCount > 0);
        if (i == 0 && this.currentGroup == 0 && this.table.getGroupsSize() == 0) {
            groupSize = SlotTableKt.groupSize(slotTable.getGroups(), i);
            if (groupSize == slotTable.getGroupsSize()) {
                int[] iArr = this.groups;
                Object[] objArr = this.slots;
                ArrayList arrayList = this.anchors;
                HashMap hashMap = this.sourceInformationMap;
                MutableIntObjectMap mutableIntObjectMap = this.calledByMap;
                int[] groups = slotTable.getGroups();
                int groupsSize = slotTable.getGroupsSize();
                Object[] slots = slotTable.getSlots();
                int slotsSize = slotTable.getSlotsSize();
                HashMap sourceInformationMap$runtime_release = slotTable.getSourceInformationMap$runtime_release();
                MutableIntObjectMap calledByMap$runtime_release = slotTable.getCalledByMap$runtime_release();
                this.groups = groups;
                this.slots = slots;
                this.anchors = slotTable.getAnchors$runtime_release();
                this.groupGapStart = groupsSize;
                this.groupGapLen = (groups.length / 5) - groupsSize;
                this.slotsGapStart = slotsSize;
                this.slotsGapLen = slots.length - slotsSize;
                this.slotsGapOwner = groupsSize;
                this.sourceInformationMap = sourceInformationMap$runtime_release;
                this.calledByMap = calledByMap$runtime_release;
                slotTable.setTo$runtime_release(iArr, 0, objArr, 0, arrayList, hashMap, mutableIntObjectMap);
                return this.anchors;
            }
        }
        SlotWriter openWriter = slotTable.openWriter();
        try {
            List moveGroup = Companion.moveGroup(openWriter, i, this, true, true, z);
            openWriter.close(true);
            return moveGroup;
        } catch (Throwable th) {
            openWriter.close(false);
            throw th;
        }
    }

    public final List moveIntoGroupFrom(int i, SlotTable slotTable, int i2) {
        ComposerKt.runtimeCheck(this.insertCount <= 0 && groupSize(this.currentGroup + i) == 1);
        int i3 = this.currentGroup;
        int i4 = this.currentSlot;
        int i5 = this.currentSlotEnd;
        advanceBy(i);
        startGroup();
        beginInsert();
        SlotWriter openWriter = slotTable.openWriter();
        try {
            List moveGroup$default = Companion.moveGroup$default(Companion, openWriter, i2, this, false, true, false, 32, null);
            openWriter.close(true);
            endInsert();
            endGroup();
            this.currentGroup = i3;
            this.currentSlot = i4;
            this.currentSlotEnd = i5;
            return moveGroup$default;
        } catch (Throwable th) {
            openWriter.close(false);
            throw th;
        }
    }

    public final Anchor anchor(int i) {
        int search;
        ArrayList arrayList = this.anchors;
        search = SlotTableKt.search(arrayList, i, getSize$runtime_release());
        if (search < 0) {
            if (i > this.groupGapStart) {
                i = -(getSize$runtime_release() - i);
            }
            Anchor anchor = new Anchor(i);
            arrayList.add(-(search + 1), anchor);
            return anchor;
        }
        return (Anchor) arrayList.get(search);
    }

    public static /* synthetic */ void markGroup$default(SlotWriter slotWriter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotWriter.parent;
        }
        slotWriter.markGroup(i);
    }

    public final void markGroup(int i) {
        boolean hasMark;
        boolean containsMark;
        int groupIndexToAddress = groupIndexToAddress(i);
        hasMark = SlotTableKt.hasMark(this.groups, groupIndexToAddress);
        if (hasMark) {
            return;
        }
        SlotTableKt.updateMark(this.groups, groupIndexToAddress, true);
        containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress);
        if (containsMark) {
            return;
        }
        updateContainsMark(parent(i));
    }

    private final boolean containsGroupMark(int i) {
        boolean containsMark;
        if (i >= 0) {
            containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress(i));
            if (containsMark) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean containsAnyGroupMarks(int i) {
        boolean containsAnyMark;
        if (i >= 0) {
            containsAnyMark = SlotTableKt.containsAnyMark(this.groups, groupIndexToAddress(i));
            if (containsAnyMark) {
                return true;
            }
        }
        return false;
    }

    private final void recalculateMarks() {
        PrioritySet prioritySet = this.pendingRecalculateMarks;
        if (prioritySet != null) {
            while (prioritySet.isNotEmpty()) {
                updateContainsMarkNow(prioritySet.takeMax(), prioritySet);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void updateContainsMark(int i) {
        if (i >= 0) {
            PrioritySet prioritySet = this.pendingRecalculateMarks;
            if (prioritySet == null) {
                prioritySet = new PrioritySet(null, 1, 0 == true ? 1 : 0);
                this.pendingRecalculateMarks = prioritySet;
            }
            prioritySet.add(i);
        }
    }

    private final void updateContainsMarkNow(int i, PrioritySet prioritySet) {
        boolean containsMark;
        int groupIndexToAddress = groupIndexToAddress(i);
        boolean childContainsAnyMarks = childContainsAnyMarks(i);
        containsMark = SlotTableKt.containsMark(this.groups, groupIndexToAddress);
        if (containsMark != childContainsAnyMarks) {
            SlotTableKt.updateContainsMark(this.groups, groupIndexToAddress, childContainsAnyMarks);
            int parent = parent(i);
            if (parent >= 0) {
                prioritySet.add(parent);
            }
        }
    }

    private final boolean childContainsAnyMarks(int i) {
        boolean containsAnyMark;
        int i2 = i + 1;
        int groupSize = i + groupSize(i);
        while (i2 < groupSize) {
            containsAnyMark = SlotTableKt.containsAnyMark(this.groups, groupIndexToAddress(i2));
            if (containsAnyMark) {
                return true;
            }
            i2 += groupSize(i2);
        }
        return false;
    }

    public final int anchorIndex(Anchor anchor) {
        int location$runtime_release = anchor.getLocation$runtime_release();
        return location$runtime_release < 0 ? location$runtime_release + getSize$runtime_release() : location$runtime_release;
    }

    public String toString() {
        return "SlotWriter(current = " + this.currentGroup + " end=" + this.currentGroupEnd + " size = " + getSize$runtime_release() + " gap=" + this.groupGapStart + CoreConstants.DASH_CHAR + (this.groupGapStart + this.groupGapLen) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    private final void saveCurrentGroupEnd() {
        this.endStack.push((getCapacity() - this.groupGapLen) - this.currentGroupEnd);
    }

    private final int restoreCurrentGroupEnd() {
        int capacity = (getCapacity() - this.groupGapLen) - this.endStack.pop();
        this.currentGroupEnd = capacity;
        return capacity;
    }

    private final void fixParentAnchorsFor(int i, int i2, int i3) {
        int groupSize;
        int parentIndexToAnchor = parentIndexToAnchor(i, this.groupGapStart);
        while (i3 < i2) {
            SlotTableKt.updateParentAnchor(this.groups, groupIndexToAddress(i3), parentIndexToAnchor);
            groupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i3));
            int i4 = groupSize + i3;
            fixParentAnchorsFor(i3, i4, i3 + 1);
            i3 = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveGroupGapTo(int i) {
        int parentAnchor;
        int i2 = this.groupGapLen;
        int i3 = this.groupGapStart;
        if (i3 != i) {
            if (!this.anchors.isEmpty()) {
                updateAnchors(i3, i);
            }
            if (i2 > 0) {
                int[] iArr = this.groups;
                int i4 = i * 5;
                int i5 = i2 * 5;
                int i6 = i3 * 5;
                if (i < i3) {
                    ArraysKt.copyInto(iArr, iArr, i5 + i4, i4, i6);
                } else {
                    ArraysKt.copyInto(iArr, iArr, i6, i6 + i5, i4 + i5);
                }
            }
            if (i < i3) {
                i3 = i + i2;
            }
            int capacity = getCapacity();
            ComposerKt.runtimeCheck(i3 < capacity);
            while (i3 < capacity) {
                parentAnchor = SlotTableKt.parentAnchor(this.groups, i3);
                int parentIndexToAnchor = parentIndexToAnchor(parentAnchorToIndex(parentAnchor), i);
                if (parentIndexToAnchor != parentAnchor) {
                    SlotTableKt.updateParentAnchor(this.groups, i3, parentIndexToAnchor);
                }
                i3++;
                if (i3 == i) {
                    i3 += i2;
                }
            }
        }
        this.groupGapStart = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveSlotGapTo(int i, int i2) {
        int dataAnchor;
        int dataAnchor2;
        int i3 = this.slotsGapLen;
        int i4 = this.slotsGapStart;
        int i5 = this.slotsGapOwner;
        if (i4 != i) {
            Object[] objArr = this.slots;
            if (i < i4) {
                ArraysKt.copyInto(objArr, objArr, i + i3, i, i4);
            } else {
                ArraysKt.copyInto(objArr, objArr, i4, i4 + i3, i + i3);
            }
        }
        int min = Math.min(i2 + 1, getSize$runtime_release());
        if (i5 != min) {
            int length = this.slots.length - i3;
            if (min < i5) {
                int groupIndexToAddress = groupIndexToAddress(min);
                int groupIndexToAddress2 = groupIndexToAddress(i5);
                int i6 = this.groupGapStart;
                while (groupIndexToAddress < groupIndexToAddress2) {
                    dataAnchor2 = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress);
                    if (!(dataAnchor2 >= 0)) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a positive anchor");
                    }
                    SlotTableKt.updateDataAnchor(this.groups, groupIndexToAddress, -((length - dataAnchor2) + 1));
                    groupIndexToAddress++;
                    if (groupIndexToAddress == i6) {
                        groupIndexToAddress += this.groupGapLen;
                    }
                }
            } else {
                int groupIndexToAddress3 = groupIndexToAddress(i5);
                int groupIndexToAddress4 = groupIndexToAddress(min);
                while (groupIndexToAddress3 < groupIndexToAddress4) {
                    dataAnchor = SlotTableKt.dataAnchor(this.groups, groupIndexToAddress3);
                    if (!(dataAnchor < 0)) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a negative anchor");
                    }
                    SlotTableKt.updateDataAnchor(this.groups, groupIndexToAddress3, dataAnchor + length + 1);
                    groupIndexToAddress3++;
                    if (groupIndexToAddress3 == this.groupGapStart) {
                        groupIndexToAddress3 += this.groupGapLen;
                    }
                }
            }
            this.slotsGapOwner = min;
        }
        this.slotsGapStart = i;
    }

    private final void clearSlotGap() {
        int i = this.slotsGapStart;
        ArraysKt.fill(this.slots, (Object) null, i, this.slotsGapLen + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertGroups(int i) {
        if (i > 0) {
            int i2 = this.currentGroup;
            moveGroupGapTo(i2);
            int i3 = this.groupGapStart;
            int i4 = this.groupGapLen;
            int[] iArr = this.groups;
            int length = iArr.length / 5;
            int i5 = length - i4;
            if (i4 < i) {
                int max = Math.max(Math.max(length * 2, i5 + i), 32);
                int[] iArr2 = new int[max * 5];
                int i6 = max - i5;
                ArraysKt.copyInto(iArr, iArr2, 0, 0, i3 * 5);
                ArraysKt.copyInto(iArr, iArr2, (i3 + i6) * 5, (i4 + i3) * 5, length * 5);
                this.groups = iArr2;
                i4 = i6;
            }
            int i7 = this.currentGroupEnd;
            if (i7 >= i3) {
                this.currentGroupEnd = i7 + i;
            }
            int i8 = i3 + i;
            this.groupGapStart = i8;
            this.groupGapLen = i4 - i;
            int dataIndexToDataAnchor = dataIndexToDataAnchor(i5 > 0 ? dataIndex(i2 + i) : 0, this.slotsGapOwner >= i3 ? this.slotsGapStart : 0, this.slotsGapLen, this.slots.length);
            for (int i9 = i3; i9 < i8; i9++) {
                SlotTableKt.updateDataAnchor(this.groups, i9, dataIndexToDataAnchor);
            }
            int i10 = this.slotsGapOwner;
            if (i10 >= i3) {
                this.slotsGapOwner = i10 + i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertSlots(int i, int i2) {
        if (i > 0) {
            moveSlotGapTo(this.currentSlot, i2);
            int i3 = this.slotsGapStart;
            int i4 = this.slotsGapLen;
            if (i4 < i) {
                Object[] objArr = this.slots;
                int length = objArr.length;
                int i5 = length - i4;
                int max = Math.max(Math.max(length * 2, i5 + i), 32);
                Object[] objArr2 = new Object[max];
                for (int i6 = 0; i6 < max; i6++) {
                    objArr2[i6] = null;
                }
                int i7 = max - i5;
                ArraysKt.copyInto(objArr, objArr2, 0, 0, i3);
                ArraysKt.copyInto(objArr, objArr2, i3 + i7, i4 + i3, length);
                this.slots = objArr2;
                i4 = i7;
            }
            int i8 = this.currentSlotEnd;
            if (i8 >= i3) {
                this.currentSlotEnd = i8 + i;
            }
            this.slotsGapStart = i3 + i;
            this.slotsGapLen = i4 - i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean removeGroups(int i, int i2) {
        if (i2 > 0) {
            ArrayList arrayList = this.anchors;
            moveGroupGapTo(i);
            r0 = arrayList.isEmpty() ? false : removeAnchors(i, i2, this.sourceInformationMap);
            this.groupGapStart = i;
            this.groupGapLen += i2;
            int i3 = this.slotsGapOwner;
            if (i3 > i) {
                this.slotsGapOwner = Math.max(i, i3 - i2);
            }
            int i4 = this.currentGroupEnd;
            if (i4 >= this.groupGapStart) {
                this.currentGroupEnd = i4 - i2;
            }
            int i5 = this.parent;
            if (containsGroupMark(i5)) {
                updateContainsMark(i5);
            }
        }
        return r0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GroupSourceInformation sourceInformationOf(int i) {
        Anchor tryAnchor$runtime_release;
        HashMap hashMap = this.sourceInformationMap;
        if (hashMap == null || (tryAnchor$runtime_release = tryAnchor$runtime_release(i)) == null) {
            return null;
        }
        return (GroupSourceInformation) hashMap.get(tryAnchor$runtime_release);
    }

    public final Anchor tryAnchor$runtime_release(int i) {
        Anchor find;
        if (i < 0 || i >= getSize$runtime_release()) {
            return null;
        }
        find = SlotTableKt.find(this.anchors, i, getSize$runtime_release());
        return find;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSlots(int i, int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.slotsGapLen;
            int i5 = i + i2;
            moveSlotGapTo(i5, i3);
            this.slotsGapStart = i;
            this.slotsGapLen = i4 + i2;
            ArraysKt.fill(this.slots, (Object) null, i, i5);
            int i6 = this.currentSlotEnd;
            if (i6 >= i) {
                this.currentSlotEnd = i6 - i2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateNodeOfGroup(int r4, java.lang.Object r5) {
        /*
            r3 = this;
            int r0 = r3.groupIndexToAddress(r4)
            int[] r1 = r3.groups
            int r2 = r1.length
            if (r0 >= r2) goto L11
            boolean r1 = androidx.compose.runtime.SlotTableKt.access$isNode(r1, r0)
            if (r1 == 0) goto L11
            r1 = 1
            goto L12
        L11:
            r1 = 0
        L12:
            if (r1 != 0) goto L2d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Updating the node of a group at "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = " that was not created with as a node group"
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            androidx.compose.runtime.ComposerKt.composeImmediateRuntimeError(r4)
        L2d:
            java.lang.Object[] r4 = r3.slots
            int[] r1 = r3.groups
            int r0 = r3.nodeIndex(r1, r0)
            int r0 = r3.dataIndexToDataAddress(r0)
            r4[r0] = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SlotWriter.updateNodeOfGroup(int, java.lang.Object):void");
    }

    private final void updateAnchors(int i, int i2) {
        int locationOf;
        Anchor anchor;
        int location$runtime_release;
        int locationOf2;
        Anchor anchor2;
        int location$runtime_release2;
        int i3;
        int capacity = getCapacity() - this.groupGapLen;
        if (i < i2) {
            for (locationOf2 = SlotTableKt.locationOf(this.anchors, i, capacity); locationOf2 < this.anchors.size() && (location$runtime_release2 = (anchor2 = (Anchor) this.anchors.get(locationOf2)).getLocation$runtime_release()) < 0 && (i3 = location$runtime_release2 + capacity) < i2; locationOf2++) {
                anchor2.setLocation$runtime_release(i3);
            }
            return;
        }
        for (locationOf = SlotTableKt.locationOf(this.anchors, i2, capacity); locationOf < this.anchors.size() && (location$runtime_release = (anchor = (Anchor) this.anchors.get(locationOf)).getLocation$runtime_release()) >= 0; locationOf++) {
            anchor.setLocation$runtime_release(-(capacity - location$runtime_release));
        }
    }

    private final boolean removeAnchors(int i, int i2, HashMap hashMap) {
        int locationOf;
        int i3 = i2 + i;
        locationOf = SlotTableKt.locationOf(this.anchors, i3, getCapacity() - this.groupGapLen);
        if (locationOf >= this.anchors.size()) {
            locationOf--;
        }
        int i4 = locationOf + 1;
        int i5 = 0;
        while (locationOf >= 0) {
            Anchor anchor = (Anchor) this.anchors.get(locationOf);
            int anchorIndex = anchorIndex(anchor);
            if (anchorIndex < i) {
                break;
            }
            if (anchorIndex < i3) {
                anchor.setLocation$runtime_release(Integer.MIN_VALUE);
                if (hashMap != null) {
                }
                if (i5 == 0) {
                    i5 = locationOf + 1;
                }
                i4 = locationOf;
            }
            locationOf--;
        }
        boolean z = i4 < i5;
        if (z) {
            this.anchors.subList(i4, i5).clear();
        }
        return z;
    }

    private final void moveAnchors(int i, int i2, int i3) {
        int locationOf;
        int locationOf2;
        Anchor anchor;
        int anchorIndex;
        int i4 = i3 + i;
        int size$runtime_release = getSize$runtime_release();
        locationOf = SlotTableKt.locationOf(this.anchors, i, size$runtime_release);
        ArrayList arrayList = new ArrayList();
        if (locationOf >= 0) {
            while (locationOf < this.anchors.size() && (anchorIndex = anchorIndex((anchor = (Anchor) this.anchors.get(locationOf)))) >= i && anchorIndex < i4) {
                arrayList.add(anchor);
                this.anchors.remove(locationOf);
            }
        }
        int i5 = i2 - i;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            Anchor anchor2 = (Anchor) arrayList.get(i6);
            int anchorIndex2 = anchorIndex(anchor2) + i5;
            if (anchorIndex2 >= this.groupGapStart) {
                anchor2.setLocation$runtime_release(-(size$runtime_release - anchorIndex2));
            } else {
                anchor2.setLocation$runtime_release(anchorIndex2);
            }
            locationOf2 = SlotTableKt.locationOf(this.anchors, anchorIndex2, size$runtime_release);
            this.anchors.add(locationOf2, anchor2);
        }
    }

    public final int getSize$runtime_release() {
        return getCapacity() - this.groupGapLen;
    }

    private final int getCapacity() {
        return this.groups.length / 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int groupIndexToAddress(int i) {
        return i < this.groupGapStart ? i : i + this.groupGapLen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAddress(int i) {
        return i < this.slotsGapStart ? i : i + this.slotsGapLen;
    }

    private final int parent(int[] iArr, int i) {
        int parentAnchor;
        parentAnchor = SlotTableKt.parentAnchor(iArr, groupIndexToAddress(i));
        return parentAnchorToIndex(parentAnchor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int i) {
        return dataIndex(this.groups, groupIndexToAddress(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int[] iArr, int i) {
        int dataAnchor;
        if (i >= getCapacity()) {
            return this.slots.length - this.slotsGapLen;
        }
        dataAnchor = SlotTableKt.dataAnchor(iArr, i);
        return dataAnchorToDataIndex(dataAnchor, this.slotsGapLen, this.slots.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int slotIndex(int[] iArr, int i) {
        int slotAnchor;
        if (i >= getCapacity()) {
            return this.slots.length - this.slotsGapLen;
        }
        slotAnchor = SlotTableKt.slotAnchor(iArr, i);
        return dataAnchorToDataIndex(slotAnchor, this.slotsGapLen, this.slots.length);
    }

    private final void updateDataIndex(int[] iArr, int i, int i2) {
        SlotTableKt.updateDataAnchor(iArr, i, dataIndexToDataAnchor(i2, this.slotsGapStart, this.slotsGapLen, this.slots.length));
    }

    private final int nodeIndex(int[] iArr, int i) {
        return dataIndex(iArr, i);
    }

    private final int auxIndex(int[] iArr, int i) {
        int groupInfo;
        int countOneBits;
        int dataIndex = dataIndex(iArr, i);
        groupInfo = SlotTableKt.groupInfo(iArr, i);
        countOneBits = SlotTableKt.countOneBits(groupInfo >> 29);
        return dataIndex + countOneBits;
    }

    private final int parentIndexToAnchor(int i, int i2) {
        return i < i2 ? i : -((getSize$runtime_release() - i) + 2);
    }

    private final int parentAnchorToIndex(int i) {
        return i > -2 ? i : getSize$runtime_release() + i + 2;
    }
}
