package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.ui.unit.IntRectKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public final MutableScatterMap extractNestedStates(Applier applier, MutableObjectList mutableObjectList) {
        int i;
        Object[] objArr = mutableObjectList.content;
        int i2 = mutableObjectList._size;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            if (ownsAnchor(IntRectKt.asGapAnchor(((MovableContentStateReference) objArr[i4]).anchor))) {
                i4++;
            } else {
                MutableObjectList mutableObjectList2 = new MutableObjectList();
                Object[] objArr2 = mutableObjectList.content;
                int i5 = mutableObjectList._size;
                for (int i6 = 0; i6 < i5; i6++) {
                    Object obj = objArr2[i6];
                    if (ownsAnchor(IntRectKt.asGapAnchor(((MovableContentStateReference) obj).anchor))) {
                        mutableObjectList2.add(obj);
                    }
                }
                mutableObjectList = mutableObjectList2;
            }
        }
        DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(11, this);
        if (mutableObjectList._size > 1) {
            Comparable comparable = (Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(mutableObjectList.get(0));
            int i7 = mutableObjectList._size;
            int i8 = 1;
            while (true) {
                if (i8 >= i7) {
                    break;
                }
                Comparable comparable2 = (Comparable) diskLruCache$$ExternalSyntheticLambda0.invoke(mutableObjectList.get(i8));
                if (comparable.compareTo(comparable2) > 0) {
                    MutableObjectList mutableObjectList3 = new MutableObjectList(mutableObjectList._size);
                    Object[] objArr3 = mutableObjectList.content;
                    int i9 = mutableObjectList._size;
                    for (int i10 = 0; i10 < i9; i10++) {
                        mutableObjectList3.add(objArr3[i10]);
                    }
                    MutableObjectList.ObjectListMutableList objectListMutableList = mutableObjectList3.list;
                    if (objectListMutableList == null) {
                        objectListMutableList = new MutableObjectList.ObjectListMutableList(i3, mutableObjectList3);
                        mutableObjectList3.list = objectListMutableList;
                    }
                    if (((MutableObjectList) objectListMutableList.objectList)._size > 1) {
                        CollectionsKt__MutableCollectionsJVMKt.sortWith(objectListMutableList, new PreferenceParser.AnonymousClass1(3, diskLruCache$$ExternalSyntheticLambda0));
                    }
                    mutableObjectList = mutableObjectList3;
                } else {
                    i8++;
                    comparable = comparable2;
                }
            }
        }
        if (mutableObjectList.isEmpty()) {
            MutableScatterMap mutableScatterMap = ScatterMapKt.EmptyScatterMap;
            mutableScatterMap.getClass();
            return mutableScatterMap;
        }
        long[] jArr = ScatterMapKt.EmptyGroup;
        MutableScatterMap mutableScatterMap2 = new MutableScatterMap();
        SlotWriter openWriter = openWriter();
        try {
            Object[] objArr4 = mutableObjectList.content;
            int i11 = mutableObjectList._size;
            for (int i12 = 0; i12 < i11; i12++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr4[i12];
                int anchorIndex = openWriter.anchorIndex(IntRectKt.asGapAnchor(movableContentStateReference.anchor));
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
            extractNestedStates$lambda$2$closeToGroupContaining(openWriter, Integer.MAX_VALUE);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot read while a writer is pending");
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
