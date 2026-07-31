package androidx.compose.runtime;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.ui.unit.IntRectKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ComposerKt {
    public static final OpaqueKey invocation = new OpaqueKey("provider");
    public static final OpaqueKey provider = new OpaqueKey("provider");
    public static final OpaqueKey compositionLocalMap = new OpaqueKey("compositionLocalMap");
    public static final OpaqueKey providerMaps = new OpaqueKey("providers");
    public static final OpaqueKey reference = new OpaqueKey("reference");

    public static final void composeImmediateRuntimeError(String str) {
        throw new ComposeRuntimeError(CameraDevices$CC.m("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void composeRuntimeError(String str) {
        throw new ComposeRuntimeError(CameraDevices$CC.m("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v9, types: [kotlin.collections.EmptyList] */
    public static final MovableContentState extractMovableContentAtCurrent(CompositionImpl compositionImpl, MovableContentStateReference movableContentStateReference, SlotWriter slotWriter, Applier applier) {
        NeverEqualPolicy neverEqualPolicy;
        SlotTable slotTable;
        ?? r6;
        GapAnchor gapAnchor;
        long[] jArr;
        GapAnchor gapAnchor2;
        NeverEqualPolicy neverEqualPolicy2;
        SlotTable slotTable2;
        long[] jArr2;
        int i;
        long j;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        long[] jArr3;
        int i4;
        long j2;
        long[] jArr4;
        int i5;
        int i6;
        MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
        NeverEqualPolicy neverEqualPolicy3 = Composer.Companion.Empty;
        SlotTable slotTable3 = new SlotTable();
        if (slotWriter.sourceInformationMap != null) {
            slotTable3.collectSourceInformation();
        }
        if (slotWriter.calledByMap != null) {
            slotTable3.calledByMap = new MutableIntObjectMap();
        }
        int i7 = slotWriter.currentGroup;
        if (applier != null && slotWriter.nodeCount(i7) > 0) {
            int i8 = slotWriter.parent;
            while (i8 > 0 && !slotWriter.isNode(i8)) {
                i8 = slotWriter.parent(slotWriter.groups, i8);
            }
            if (i8 >= 0 && slotWriter.isNode(i8)) {
                Object node = slotWriter.node(i8);
                int i9 = i8 + 1;
                int groupSize = slotWriter.groupSize(i8) + i8;
                int i10 = 0;
                while (i9 < groupSize) {
                    int groupSize2 = slotWriter.groupSize(i9) + i9;
                    if (groupSize2 > i7) {
                        break;
                    }
                    i10 += slotWriter.isNode(i9) ? 1 : slotWriter.nodeCount(i9);
                    i9 = groupSize2;
                }
                int nodeCount = slotWriter.isNode(i7) ? 1 : slotWriter.nodeCount(i7);
                applier.down(node);
                applier.remove(i10, nodeCount);
                applier.up();
            }
        }
        GapAnchor gapAnchor3 = movableContentStateReference2.anchor;
        if (gapAnchor3.getValid()) {
            compositionImpl.getClass();
            if (compositionImpl.invalidations._size > 0) {
                r6 = new ArrayList();
                MutableScatterMap mutableScatterMap = compositionImpl.invalidations;
                long[] jArr5 = mutableScatterMap.metadata;
                int length = jArr5.length - 2;
                if (length >= 0) {
                    int i11 = 0;
                    while (true) {
                        long j3 = jArr5[i11];
                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i12 = 8;
                            int i13 = 8 - ((~(i11 - length)) >>> 31);
                            int i14 = 0;
                            while (i14 < i13) {
                                if ((j3 & 255) < 128) {
                                    int i15 = i12;
                                    int i16 = (i11 << 3) + i14;
                                    gapAnchor2 = gapAnchor3;
                                    Object obj = mutableScatterMap.keys[i16];
                                    Object obj2 = mutableScatterMap.values[i16];
                                    obj.getClass();
                                    jArr2 = jArr5;
                                    if (obj2 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                        Object[] objArr = mutableScatterSet.elements;
                                        long[] jArr6 = mutableScatterSet.metadata;
                                        j = j3;
                                        int length2 = jArr6.length - 2;
                                        neverEqualPolicy2 = neverEqualPolicy3;
                                        slotTable2 = slotTable3;
                                        if (length2 >= 0) {
                                            int i17 = 0;
                                            while (true) {
                                                long j4 = jArr6[i17];
                                                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i18 = 8 - ((~(i17 - length2)) >>> 31);
                                                    int i19 = 0;
                                                    while (i19 < i18) {
                                                        if ((j4 & 255) < 128) {
                                                            i4 = i19;
                                                            int i20 = (i17 << 3) + i4;
                                                            j2 = j4;
                                                            Object obj3 = objArr[i20];
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                                                            jArr4 = jArr6;
                                                            GapAnchor gapAnchor4 = recomposeScopeImpl.anchor;
                                                            if (gapAnchor4 != null) {
                                                                GapAnchor asGapAnchor = IntRectKt.asGapAnchor(gapAnchor2);
                                                                i6 = i14;
                                                                GapAnchor asGapAnchor2 = IntRectKt.asGapAnchor(gapAnchor4);
                                                                int anchorIndex = slotWriter.anchorIndex(asGapAnchor);
                                                                i5 = length;
                                                                int i21 = slotWriter.groups[(anchorIndex * 5) + 3] + anchorIndex;
                                                                int i22 = asGapAnchor2.location;
                                                                if (anchorIndex <= i22 && i22 < i21) {
                                                                    r6.add(new Pair(recomposeScopeImpl, obj3));
                                                                    mutableScatterSet.removeElementAt(i20);
                                                                }
                                                                j4 = j2 >> i15;
                                                                i19 = i4 + 1;
                                                                jArr6 = jArr4;
                                                                length = i5;
                                                                i14 = i6;
                                                            }
                                                        } else {
                                                            i4 = i19;
                                                            j2 = j4;
                                                            jArr4 = jArr6;
                                                        }
                                                        i5 = length;
                                                        i6 = i14;
                                                        j4 = j2 >> i15;
                                                        i19 = i4 + 1;
                                                        jArr6 = jArr4;
                                                        length = i5;
                                                        i14 = i6;
                                                    }
                                                    jArr3 = jArr6;
                                                    i = length;
                                                    i2 = i14;
                                                    if (i18 != i15) {
                                                        break;
                                                    }
                                                } else {
                                                    jArr3 = jArr6;
                                                    i = length;
                                                    i2 = i14;
                                                }
                                                if (i17 == length2) {
                                                    break;
                                                }
                                                i17++;
                                                jArr6 = jArr3;
                                                length = i;
                                                i14 = i2;
                                                i15 = 8;
                                            }
                                        } else {
                                            i = length;
                                            i2 = i14;
                                        }
                                        z2 = mutableScatterSet.isEmpty();
                                    } else {
                                        neverEqualPolicy2 = neverEqualPolicy3;
                                        slotTable2 = slotTable3;
                                        i = length;
                                        j = j3;
                                        i2 = i14;
                                        obj2.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj;
                                        GapAnchor gapAnchor5 = recomposeScopeImpl2.anchor;
                                        if (gapAnchor5 != null) {
                                            GapAnchor asGapAnchor3 = IntRectKt.asGapAnchor(gapAnchor2);
                                            GapAnchor asGapAnchor4 = IntRectKt.asGapAnchor(gapAnchor5);
                                            int anchorIndex2 = slotWriter.anchorIndex(asGapAnchor3);
                                            int i23 = slotWriter.groups[(anchorIndex2 * 5) + 3] + anchorIndex2;
                                            int i24 = asGapAnchor4.location;
                                            if (anchorIndex2 <= i24 && i24 < i23) {
                                                r6.add(new Pair(recomposeScopeImpl2, obj2));
                                                z = true;
                                                z2 = z;
                                            }
                                        }
                                        z = false;
                                        z2 = z;
                                    }
                                    if (z2) {
                                        mutableScatterMap.removeValueAt(i16);
                                    }
                                    i3 = 8;
                                } else {
                                    gapAnchor2 = gapAnchor3;
                                    neverEqualPolicy2 = neverEqualPolicy3;
                                    slotTable2 = slotTable3;
                                    jArr2 = jArr5;
                                    i = length;
                                    j = j3;
                                    i2 = i14;
                                    i3 = i12;
                                }
                                j3 = j >> i3;
                                i14 = i2 + 1;
                                i12 = i3;
                                gapAnchor3 = gapAnchor2;
                                jArr5 = jArr2;
                                neverEqualPolicy3 = neverEqualPolicy2;
                                slotTable3 = slotTable2;
                                length = i;
                            }
                            gapAnchor = gapAnchor3;
                            neverEqualPolicy = neverEqualPolicy3;
                            slotTable = slotTable3;
                            jArr = jArr5;
                            int i25 = length;
                            if (i13 != i12) {
                                break;
                            }
                            length = i25;
                        } else {
                            gapAnchor = gapAnchor3;
                            neverEqualPolicy = neverEqualPolicy3;
                            slotTable = slotTable3;
                            jArr = jArr5;
                        }
                        if (i11 == length) {
                            break;
                        }
                        i11++;
                        gapAnchor3 = gapAnchor;
                        jArr5 = jArr;
                        neverEqualPolicy3 = neverEqualPolicy;
                        slotTable3 = slotTable;
                    }
                } else {
                    neverEqualPolicy = neverEqualPolicy3;
                    slotTable = slotTable3;
                }
            } else {
                neverEqualPolicy = neverEqualPolicy3;
                slotTable = slotTable3;
                r6 = EmptyList.INSTANCE;
            }
            movableContentStateReference2 = movableContentStateReference;
            movableContentStateReference2.invalidations = CollectionsKt.plus((Collection) movableContentStateReference2.invalidations, (Iterable) r6);
        } else {
            neverEqualPolicy = neverEqualPolicy3;
            slotTable = slotTable3;
        }
        SlotWriter openWriter = slotTable.openWriter();
        try {
            openWriter.beginInsert();
            NeverEqualPolicy neverEqualPolicy4 = neverEqualPolicy;
            openWriter.startGroup(126665345, movableContentStateReference2.content, neverEqualPolicy4, false);
            SlotWriter.markGroup$default(openWriter);
            openWriter.update(movableContentStateReference2.parameter);
            List moveTo = slotWriter.moveTo(IntRectKt.asGapAnchor(movableContentStateReference2.anchor), openWriter);
            openWriter.skipGroup();
            openWriter.endGroup();
            openWriter.endInsert();
            openWriter.close(true);
            SlotTable slotTable4 = slotTable;
            MovableContentState movableContentState = new MovableContentState(slotTable4);
            if (!moveTo.isEmpty()) {
                int size = moveTo.size();
                for (int i26 = 0; i26 < size; i26++) {
                    GapAnchor gapAnchor6 = (GapAnchor) moveTo.get(i26);
                    if (slotTable4.ownsAnchor(gapAnchor6)) {
                        int anchorIndex3 = slotTable4.anchorIndex(gapAnchor6);
                        int access$slotAnchor = SlotTableKt.access$slotAnchor(slotTable4.groups, anchorIndex3);
                        int i27 = anchorIndex3 + 1;
                        if (((i27 < slotTable4.groupsSize ? slotTable4.groups[(i27 * 5) + 4] : slotTable4.slots.length) - access$slotAnchor > 0 ? slotTable4.slots[access$slotAnchor] : neverEqualPolicy4) instanceof RecomposeScopeImpl) {
                            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(28, compositionImpl, movableContentStateReference2, false);
                            SlotWriter openWriter2 = slotTable4.openWriter();
                            try {
                                Updater.adoptAnchoredScopes$runtime(openWriter2, moveTo, anonymousClass1);
                                openWriter2.close(true);
                                return movableContentState;
                            } catch (Throwable th) {
                                openWriter2.close(false);
                                throw th;
                            }
                        }
                    }
                }
            }
            return movableContentState;
        } catch (Throwable th2) {
            openWriter.close(false);
            throw th2;
        }
    }
}
