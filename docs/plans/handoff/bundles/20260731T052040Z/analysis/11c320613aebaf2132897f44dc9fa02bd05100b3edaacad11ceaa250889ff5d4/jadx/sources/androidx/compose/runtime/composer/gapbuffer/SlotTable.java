package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.sqlite.SQLite;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SlotTable implements CompositionData, Iterable, KMappedMarker {
    public MutableIntObjectMap calledByMap;
    public int groupsSize;
    public int readers;
    public int slotsSize;
    public HashMap sourceInformationMap;
    public int version;
    public boolean writer;
    public int[] groups = new int[0];
    public Object[] slots = new Object[0];
    public final Object lock = new Object();
    public ArrayList anchors = new ArrayList();

    public static final void extractNestedStates$lambda$2$closeToGroupContaining(SlotWriter slotWriter, int i) {
        while (slotWriter.parent >= 0 && slotWriter.currentGroupEnd <= i) {
            slotWriter.skipToGroupEnd();
            slotWriter.endGroup();
        }
    }

    public final int anchorIndex(GapAnchor gapAnchor) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Use active SlotWriter to determine anchor location instead");
        }
        if (!gapAnchor.getValid()) {
            PreconditionsKt.throwIllegalArgumentException("Anchor refers to a group that was removed");
        }
        return gapAnchor.location;
    }

    public final void collectSourceInformation() {
        this.sourceInformationMap = new HashMap();
    }

    public final MutableScatterMap extractNestedStates(Applier applier, ObjectList objectList) {
        int i;
        Object[] objArr = objectList.content;
        int i2 = objectList._size;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            if (ownsAnchor(SQLite.asGapAnchor(((MovableContentStateReference) objArr[i4]).anchor))) {
                i4++;
            } else {
                MutableObjectList mutableObjectList = new MutableObjectList();
                Object[] objArr2 = objectList.content;
                int i5 = objectList._size;
                for (int i6 = 0; i6 < i5; i6++) {
                    Object obj = objArr2[i6];
                    if (ownsAnchor(SQLite.asGapAnchor(((MovableContentStateReference) obj).anchor))) {
                        mutableObjectList.add(obj);
                    }
                }
                objectList = mutableObjectList;
            }
        }
        DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(this, 15);
        int i7 = 1;
        if (objectList._size > 1) {
            Comparable comparable = (Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(objectList.get(0));
            int i8 = objectList._size;
            int i9 = 1;
            while (true) {
                if (i9 >= i8) {
                    break;
                }
                Comparable comparable2 = (Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(objectList.get(i9));
                if (comparable.compareTo(comparable2) > 0) {
                    MutableObjectList mutableObjectList2 = new MutableObjectList(objectList._size);
                    Object[] objArr3 = objectList.content;
                    int i10 = objectList._size;
                    for (int i11 = 0; i11 < i10; i11++) {
                        mutableObjectList2.add(objArr3[i11]);
                    }
                    MutableObjectList.ObjectListMutableList objectListMutableList = mutableObjectList2.list;
                    if (objectListMutableList == null) {
                        objectListMutableList = new MutableObjectList.ObjectListMutableList(mutableObjectList2, i3);
                        mutableObjectList2.list = objectListMutableList;
                    }
                    if (((MutableObjectList) objectListMutableList.objectList)._size > 1) {
                        CollectionsKt__MutableCollectionsJVMKt.sortWith(new SemanticsSortKt$special$$inlined$thenBy$1(diskLruCache$$ExternalSyntheticLambda0, i7), objectListMutableList);
                    }
                    objectList = mutableObjectList2;
                } else {
                    i9++;
                    comparable = comparable2;
                }
            }
        }
        if (objectList.isEmpty()) {
            MutableScatterMap mutableScatterMap = ScatterMapKt.EmptyScatterMap;
            mutableScatterMap.getClass();
            return mutableScatterMap;
        }
        long[] jArr = ScatterMapKt.EmptyGroup;
        MutableScatterMap mutableScatterMap2 = new MutableScatterMap();
        SlotWriter openWriter = openWriter();
        try {
            Object[] objArr4 = objectList.content;
            int i12 = objectList._size;
            for (int i13 = 0; i13 < i12; i13++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr4[i13];
                int anchorIndex = openWriter.anchorIndex(SQLite.asGapAnchor(movableContentStateReference.anchor));
                int parent = openWriter.parent(openWriter.groups, anchorIndex);
                extractNestedStates$lambda$2$closeToGroupContaining(openWriter, parent);
                extractNestedStates$lambda$2$closeToGroupContaining(openWriter, parent);
                while (true) {
                    i = openWriter.currentGroup;
                    if (i == parent || i == openWriter.currentGroupEnd) {
                        break;
                    }
                    if (parent < openWriter.groupSize(i) + i) {
                        openWriter.startGroup();
                    } else {
                        openWriter.skipGroup();
                    }
                }
                if (i != parent) {
                    ComposerKt.composeImmediateRuntimeError("Unexpected slot table structure");
                }
                openWriter.startGroup();
                openWriter.advanceBy(anchorIndex - openWriter.currentGroup);
                mutableScatterMap2.set(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent(movableContentStateReference.composition, movableContentStateReference, openWriter, applier));
            }
            extractNestedStates$lambda$2$closeToGroupContaining(openWriter, Log.LOG_LEVEL_OFF);
            openWriter.close(true);
            return mutableScatterMap2;
        } catch (Throwable th) {
            openWriter.close(false);
            throw th;
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }

    public final SlotReader openReader() {
        if (this.writer) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot read while a writer is pending");
            return null;
        }
        this.readers++;
        return new SlotReader(this);
    }

    public final SlotWriter openWriter() {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        if (this.readers > 0) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final boolean ownsAnchor(GapAnchor gapAnchor) {
        int search;
        return gapAnchor.getValid() && (search = SlotTableKt.search(this.anchors, gapAnchor.location, this.groupsSize)) >= 0 && Intrinsics.areEqual(this.anchors.get(search), gapAnchor);
    }

    public final GapGroupSourceInformation sourceInformationOf(int i) {
        int i2;
        ArrayList arrayList;
        int search;
        HashMap hashMap = this.sourceInformationMap;
        if (hashMap != null) {
            if (this.writer) {
                ComposerKt.composeImmediateRuntimeError("use active SlotWriter to crate an anchor for location instead");
            }
            GapAnchor gapAnchor = (i < 0 || i >= (i2 = this.groupsSize) || (search = SlotTableKt.search((arrayList = this.anchors), i, i2)) < 0) ? null : (GapAnchor) arrayList.get(search);
            if (gapAnchor != null) {
                return (GapGroupSourceInformation) hashMap.get(gapAnchor);
            }
        }
        return null;
    }
}
