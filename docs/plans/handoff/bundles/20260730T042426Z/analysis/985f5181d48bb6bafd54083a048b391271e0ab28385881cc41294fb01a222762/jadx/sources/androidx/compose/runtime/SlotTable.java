package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.tooling.CompositionData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: SlotTable.kt */
/* loaded from: classes.dex */
public final class SlotTable implements CompositionData, Iterable, KMappedMarker {
    private MutableIntObjectMap calledByMap;
    private int groupsSize;
    private int readers;
    private int slotsSize;
    private HashMap sourceInformationMap;
    private int version;
    private boolean writer;
    private int[] groups = new int[0];
    private Object[] slots = new Object[0];
    private ArrayList anchors = new ArrayList();

    public final int[] getGroups() {
        return this.groups;
    }

    public final int getGroupsSize() {
        return this.groupsSize;
    }

    public final Object[] getSlots() {
        return this.slots;
    }

    public final int getSlotsSize() {
        return this.slotsSize;
    }

    public final boolean getWriter$runtime_release() {
        return this.writer;
    }

    public final int getVersion$runtime_release() {
        return this.version;
    }

    public final ArrayList getAnchors$runtime_release() {
        return this.anchors;
    }

    public final HashMap getSourceInformationMap$runtime_release() {
        return this.sourceInformationMap;
    }

    public final MutableIntObjectMap getCalledByMap$runtime_release() {
        return this.calledByMap;
    }

    public boolean isEmpty() {
        return this.groupsSize == 0;
    }

    public final SlotReader openReader() {
        if (this.writer) {
            throw new IllegalStateException("Cannot read while a writer is pending");
        }
        this.readers++;
        return new SlotReader(this);
    }

    public final SlotWriter openWriter() {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        if (!(this.readers <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final Anchor anchor(int i) {
        int search;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to create an anchor location instead");
        }
        boolean z = false;
        if (i >= 0 && i < this.groupsSize) {
            z = true;
        }
        if (!z) {
            PreconditionsKt.throwIllegalArgumentException("Parameter index is out of range");
        }
        ArrayList arrayList = this.anchors;
        search = SlotTableKt.search(arrayList, i, this.groupsSize);
        if (search < 0) {
            Anchor anchor = new Anchor(i);
            arrayList.add(-(search + 1), anchor);
            return anchor;
        }
        return (Anchor) arrayList.get(search);
    }

    private final Anchor tryAnchor(int i) {
        int i2;
        Anchor find;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to crate an anchor for location instead");
        }
        if (i < 0 || i >= (i2 = this.groupsSize)) {
            return null;
        }
        find = SlotTableKt.find(this.anchors, i, i2);
        return find;
    }

    public final int anchorIndex(Anchor anchor) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Use active SlotWriter to determine anchor location instead");
        }
        if (!anchor.getValid()) {
            PreconditionsKt.throwIllegalArgumentException("Anchor refers to a group that was removed");
        }
        return anchor.getLocation$runtime_release();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
    
        r0 = androidx.compose.runtime.SlotTableKt.search(r3.anchors, r4.getLocation$runtime_release(), r3.groupsSize);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean ownsAnchor(androidx.compose.runtime.Anchor r4) {
        /*
            r3 = this;
            boolean r0 = r4.getValid()
            if (r0 == 0) goto L22
            java.util.ArrayList r0 = r3.anchors
            int r1 = r4.getLocation$runtime_release()
            int r2 = r3.groupsSize
            int r0 = androidx.compose.runtime.SlotTableKt.access$search(r0, r1, r2)
            if (r0 < 0) goto L22
            java.util.ArrayList r1 = r3.anchors
            java.lang.Object r0 = r1.get(r0)
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r4)
            if (r4 == 0) goto L22
            r4 = 1
            goto L23
        L22:
            r4 = 0
        L23:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SlotTable.ownsAnchor(androidx.compose.runtime.Anchor):boolean");
    }

    public final boolean groupContainsAnchor(int i, Anchor anchor) {
        int groupSize;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Writer is active");
        }
        if (!(i >= 0 && i < this.groupsSize)) {
            ComposerKt.composeImmediateRuntimeError("Invalid group index");
        }
        if (ownsAnchor(anchor)) {
            groupSize = SlotTableKt.groupSize(this.groups, i);
            int i2 = groupSize + i;
            int location$runtime_release = anchor.getLocation$runtime_release();
            if (i <= location$runtime_release && location$runtime_release < i2) {
                return true;
            }
        }
        return false;
    }

    public final void close$runtime_release(SlotReader slotReader, HashMap hashMap) {
        if (!(slotReader.getTable$runtime_release() == this && this.readers > 0)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        this.readers--;
        if (hashMap != null) {
            synchronized (this) {
                try {
                    HashMap hashMap2 = this.sourceInformationMap;
                    if (hashMap2 != null) {
                        hashMap2.putAll(hashMap);
                    } else {
                        this.sourceInformationMap = hashMap;
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void close$runtime_release(SlotWriter slotWriter, int[] iArr, int i, Object[] objArr, int i2, ArrayList arrayList, HashMap hashMap, MutableIntObjectMap mutableIntObjectMap) {
        if (!(slotWriter.getTable$runtime_release() == this && this.writer)) {
            PreconditionsKt.throwIllegalArgumentException("Unexpected writer close()");
        }
        this.writer = false;
        setTo$runtime_release(iArr, i, objArr, i2, arrayList, hashMap, mutableIntObjectMap);
    }

    public final void setTo$runtime_release(int[] iArr, int i, Object[] objArr, int i2, ArrayList arrayList, HashMap hashMap, MutableIntObjectMap mutableIntObjectMap) {
        this.groups = iArr;
        this.groupsSize = i;
        this.slots = objArr;
        this.slotsSize = i2;
        this.anchors = arrayList;
        this.sourceInformationMap = hashMap;
        this.calledByMap = mutableIntObjectMap;
    }

    public final boolean containsMark() {
        boolean containsMark;
        if (this.groupsSize <= 0) {
            return false;
        }
        containsMark = SlotTableKt.containsMark(this.groups, 0);
        return containsMark;
    }

    public final GroupSourceInformation sourceInformationOf(int i) {
        Anchor tryAnchor;
        HashMap hashMap = this.sourceInformationMap;
        if (hashMap == null || (tryAnchor = tryAnchor(i)) == null) {
            return null;
        }
        return (GroupSourceInformation) hashMap.get(tryAnchor);
    }

    public final void collectCalledByInformation() {
        this.calledByMap = new MutableIntObjectMap(0, 1, null);
    }

    public final void collectSourceInformation() {
        this.sourceInformationMap = new HashMap();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }
}
