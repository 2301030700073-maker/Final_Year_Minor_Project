package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PausedCompositionRemembers;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.room.Room;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import okhttp3.internal.http2.Huffman;
import org.schabi.newpipe.App;
import org.schabi.newpipe.databinding.ActivityErrorBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Operation {
    public final /* synthetic */ int $r8$classId;
    public final int ints;
    public final int objects;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AdvanceSlotsBy extends Operation {
        public static final AdvanceSlotsBy INSTANCE = new AdvanceSlotsBy(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.advanceBy(openHashSet.getInt(0));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AppendValue extends Operation {
        public static final AppendValue INSTANCE = new AppendValue(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
            Object m644getObjectPtLUHM = openHashSet.m644getObjectPtLUHM(1);
            if (m644getObjectPtLUHM instanceof GapRememberObserverHolder) {
                GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) m644getObjectPtLUHM;
                ((MutableVector) activityErrorBinding.errorMessageView).add(gapRememberObserverHolder);
                ((MutableScatterSet) activityErrorBinding.errorInfosView).add(gapRememberObserverHolder);
            }
            if (slotWriter.insertCount != 0) {
                ComposerKt.composeImmediateRuntimeError("Can only append a slot if not current inserting");
            }
            int i = slotWriter.currentSlot;
            int i2 = slotWriter.currentSlotEnd;
            int anchorIndex = slotWriter.anchorIndex(gapAnchor);
            int dataIndex = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(anchorIndex + 1));
            slotWriter.currentSlot = dataIndex;
            slotWriter.currentSlotEnd = dataIndex;
            slotWriter.insertSlots(1, anchorIndex);
            if (i >= dataIndex) {
                i++;
                i2++;
            }
            slotWriter.slots[dataIndex] = m644getObjectPtLUHM;
            slotWriter.currentSlot = i;
            slotWriter.currentSlotEnd = i2;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ApplyChangeList extends Operation {
        public static final ApplyChangeList INSTANCE = new ApplyChangeList(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) openHashSet.m644getObjectPtLUHM(1);
            int i = intRef != null ? intRef.element : 0;
            ChangeList changeList = (ChangeList) openHashSet.m644getObjectPtLUHM(0);
            if (i > 0) {
                Huffman.Node node = new Huffman.Node();
                node.children = applier;
                node.symbol = i;
                applier = node;
            }
            changeList.executeAndFlushAllPendingChanges(applier, slotWriter, activityErrorBinding, operationErrorContext != null ? new CardView.AnonymousClass1(12, operationErrorContext, slotWriter, false) : null);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CopyNodesToNewAnchorLocation extends Operation {
        public static final CopyNodesToNewAnchorLocation INSTANCE = new CopyNodesToNewAnchorLocation(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            int i = ((IntRef) openHashSet.m644getObjectPtLUHM(0)).element;
            List list = (List) openHashSet.m644getObjectPtLUHM(1);
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                int i3 = i + i2;
                applier.insertBottomUp(i3, obj);
                applier.insertTopDown(i3, obj);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CopySlotTableToAnchorLocation extends Operation {
        public static final CopySlotTableToAnchorLocation INSTANCE = new CopySlotTableToAnchorLocation(0, 4, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) openHashSet.m644getObjectPtLUHM(2);
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) openHashSet.m644getObjectPtLUHM(3);
            CompositionContext compositionContext = (CompositionContext) openHashSet.m644getObjectPtLUHM(1);
            MovableContentState movableContentState = (MovableContentState) openHashSet.m644getObjectPtLUHM(0);
            if (movableContentState == null && (movableContentState = compositionContext.movableContentStateResolve$runtime(movableContentStateReference)) == null) {
                ComposerKt.composeRuntimeError("Could not resolve state for movable content");
                LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                return;
            }
            SlotTable asGapBufferSlotTable = SlotTableKt.asGapBufferSlotTable(movableContentState.slotStorage);
            if (slotWriter.insertCount > 0 || slotWriter.groupSize(slotWriter.currentGroup + 1) != 1) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            int i = slotWriter.currentGroup;
            int i2 = slotWriter.currentSlot;
            int i3 = slotWriter.currentSlotEnd;
            slotWriter.advanceBy(1);
            slotWriter.startGroup();
            slotWriter.beginInsert();
            SlotWriter openWriter = asGapBufferSlotTable.openWriter();
            try {
                List moveGroup = Room.moveGroup(openWriter, 2, slotWriter, false, true, true);
                openWriter.close(true);
                slotWriter.endInsert();
                slotWriter.endGroup();
                slotWriter.currentGroup = i;
                slotWriter.currentSlot = i2;
                slotWriter.currentSlotEnd = i3;
                Updater.adoptAnchoredScopes$runtime(slotWriter, moveGroup, movableContentStateReference2.composition);
            } catch (Throwable th) {
                openWriter.close(false);
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DeactivateCurrentGroup extends Operation {
        public static final DeactivateCurrentGroup INSTANCE;

        static {
            int i = 0;
            INSTANCE = new DeactivateCurrentGroup(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.forAllDataInRememberOrder(slotWriter.currentGroup, new TextKt$$ExternalSyntheticLambda2(activityErrorBinding, slotWriter, 13));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DetermineMovableContentNodeIndex extends Operation {
        public static final DetermineMovableContentNodeIndex INSTANCE = new DetermineMovableContentNodeIndex(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            int i;
            IntRef intRef = (IntRef) openHashSet.m644getObjectPtLUHM(0);
            int anchorIndex = slotWriter.anchorIndex((GapAnchor) openHashSet.m644getObjectPtLUHM(1));
            if (slotWriter.currentGroup >= anchorIndex) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            UStringsKt.positionToParentOf(slotWriter, applier, anchorIndex);
            int i2 = slotWriter.currentGroup;
            int i3 = slotWriter.parent;
            while (i3 >= 0 && !slotWriter.isNode(i3)) {
                i3 = slotWriter.parent(slotWriter.groups, i3);
            }
            int i4 = i3 + 1;
            int i5 = 0;
            while (i4 < i2) {
                if (slotWriter.indexInGroup(i2, i4)) {
                    if (slotWriter.isNode(i4)) {
                        i5 = 0;
                    }
                    i4++;
                } else {
                    i5 += slotWriter.isNode(i4) ? 1 : slotWriter.nodeCount(i4);
                    i4 += slotWriter.groupSize(i4);
                }
            }
            while (true) {
                i = slotWriter.currentGroup;
                if (i >= anchorIndex) {
                    break;
                }
                if (slotWriter.indexInGroup(anchorIndex, i)) {
                    int i6 = slotWriter.currentGroup;
                    if (i6 < slotWriter.currentGroupEnd && (slotWriter.groups[(slotWriter.groupIndexToAddress(i6) * 5) + 1] & 1073741824) != 0) {
                        applier.down(slotWriter.node(slotWriter.currentGroup));
                        i5 = 0;
                    }
                    slotWriter.startGroup();
                } else {
                    i5 += slotWriter.skipGroup();
                }
            }
            if (i != anchorIndex) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            intRef.element = i5;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Downs extends Operation {
        public static final Downs INSTANCE;

        static {
            int i = 1;
            INSTANCE = new Downs(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            for (Object obj : (Object[]) openHashSet.m644getObjectPtLUHM(0)) {
                applier.down(obj);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndCompositionScope extends Operation {
        public static final EndCompositionScope INSTANCE = new EndCompositionScope(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            ((Function1) openHashSet.m644getObjectPtLUHM(0)).invoke((Composition) openHashSet.m644getObjectPtLUHM(1));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndCurrentGroup extends Operation {
        public static final EndCurrentGroup INSTANCE;

        static {
            int i = 0;
            INSTANCE = new EndCurrentGroup(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.endGroup();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndMovableContentPlacement extends Operation {
        public static final EndMovableContentPlacement INSTANCE;

        static {
            int i = 0;
            INSTANCE = new EndMovableContentPlacement(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            UStringsKt.positionToParentOf(slotWriter, applier, 0);
            slotWriter.endGroup();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndResumingScope extends Operation {
        public static final EndResumingScope INSTANCE;

        static {
            int i = 1;
            INSTANCE = new EndResumingScope(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            MutableVector mutableVector;
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) openHashSet.m644getObjectPtLUHM(0);
            MutableScatterMap mutableScatterMap = (MutableScatterMap) activityErrorBinding.errorReportEmailButton;
            if (mutableScatterMap == null || ((PausedCompositionRemembers) mutableScatterMap.get(recomposeScopeImpl)) == null) {
                return;
            }
            ArrayList arrayList = (ArrayList) activityErrorBinding.errorReportGitHubButton;
            if (arrayList != null && (mutableVector = (MutableVector) arrayList.remove(arrayList.size() - 1)) != null) {
                activityErrorBinding.errorMessageView = mutableVector;
            }
            mutableScatterMap.remove(recomposeScopeImpl);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EnsureGroupStarted extends Operation {
        public static final EnsureGroupStarted INSTANCE;

        static {
            int i = 1;
            INSTANCE = new EnsureGroupStarted(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
            gapAnchor.getClass();
            slotWriter.ensureStarted(slotWriter.anchorIndex(gapAnchor));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EnsureRootGroupStarted extends Operation {
        public static final EnsureRootGroupStarted INSTANCE;

        static {
            int i = 0;
            INSTANCE = new EnsureRootGroupStarted(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.ensureStarted(0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InsertSlots extends Operation {
        public static final InsertSlots INSTANCE = new InsertSlots(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            SlotTable slotTable = (SlotTable) openHashSet.m644getObjectPtLUHM(1);
            GapAnchor gapAnchor = (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
            slotWriter.beginInsert();
            gapAnchor.getClass();
            slotWriter.moveFrom(slotTable, slotTable.anchorIndex(gapAnchor));
            slotWriter.endInsert();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InsertSlotsWithFixups extends Operation {
        public static final InsertSlotsWithFixups INSTANCE = new InsertSlotsWithFixups(0, 3, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            CardView.AnonymousClass1 anonymousClass1;
            SlotTable slotTable = (SlotTable) openHashSet.m644getObjectPtLUHM(1);
            GapAnchor gapAnchor = (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
            FixupList fixupList = (FixupList) openHashSet.m644getObjectPtLUHM(2);
            SlotWriter openWriter = slotTable.openWriter();
            if (operationErrorContext != null) {
                try {
                    anonymousClass1 = new CardView.AnonymousClass1(12, operationErrorContext, slotWriter, false);
                } catch (Throwable th) {
                    openWriter.close(false);
                    throw th;
                }
            } else {
                anonymousClass1 = null;
            }
            if (!fixupList.pendingOperations.isEmpty()) {
                ComposerKt.composeImmediateRuntimeError("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
            }
            fixupList.operations.executeAndFlushAllPendingOperations(applier, openWriter, activityErrorBinding, anonymousClass1);
            openWriter.close(true);
            slotWriter.beginInsert();
            gapAnchor.getClass();
            slotWriter.moveFrom(slotTable, slotTable.anchorIndex(gapAnchor));
            slotWriter.endInsert();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MoveCurrentGroup extends Operation {
        public static final MoveCurrentGroup INSTANCE = new MoveCurrentGroup(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            int[] iArr;
            GapAnchor gapAnchor;
            int anchorIndex;
            int i = openHashSet.getInt(0);
            if (slotWriter.insertCount != 0) {
                ComposerKt.composeImmediateRuntimeError("Cannot move a group while inserting");
            }
            if (i < 0) {
                ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
            }
            if (i == 0) {
                return;
            }
            int i2 = slotWriter.currentGroup;
            int i3 = slotWriter.parent;
            int i4 = slotWriter.currentGroupEnd;
            int i5 = i2;
            while (true) {
                iArr = slotWriter.groups;
                if (i <= 0) {
                    break;
                }
                i5 += iArr[(slotWriter.groupIndexToAddress(i5) * 5) + 3];
                if (i5 > i4) {
                    ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
                }
                i--;
            }
            int i6 = iArr[(slotWriter.groupIndexToAddress(i5) * 5) + 3];
            int dataIndex = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(slotWriter.currentGroup));
            int dataIndex2 = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i5));
            int i7 = i5 + i6;
            int dataIndex3 = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i7));
            int i8 = dataIndex3 - dataIndex2;
            slotWriter.insertSlots(i8, Math.max(slotWriter.currentGroup - 1, 0));
            slotWriter.insertGroups(i6);
            int[] iArr2 = slotWriter.groups;
            int groupIndexToAddress = slotWriter.groupIndexToAddress(i7) * 5;
            ArraysKt.copyInto(slotWriter.groupIndexToAddress(i2) * 5, groupIndexToAddress, (i6 * 5) + groupIndexToAddress, iArr2, iArr2);
            if (i8 > 0) {
                Object[] objArr = slotWriter.slots;
                int dataIndexToDataAddress = slotWriter.dataIndexToDataAddress(dataIndex2 + i8);
                System.arraycopy(objArr, dataIndexToDataAddress, objArr, dataIndex, slotWriter.dataIndexToDataAddress(dataIndex3 + i8) - dataIndexToDataAddress);
            }
            int i9 = dataIndex2 + i8;
            int i10 = i9 - dataIndex;
            int i11 = slotWriter.slotsGapStart;
            int i12 = slotWriter.slotsGapLen;
            int length = slotWriter.slots.length;
            int i13 = slotWriter.slotsGapOwner;
            int i14 = i2 + i6;
            int i15 = i2;
            while (i15 < i14) {
                int groupIndexToAddress2 = slotWriter.groupIndexToAddress(i15);
                int i16 = i10;
                int[] iArr3 = iArr2;
                iArr3[(groupIndexToAddress2 * 5) + 4] = SlotWriter.dataIndexToDataAnchor(SlotWriter.dataIndexToDataAnchor(slotWriter.dataIndex(iArr2, groupIndexToAddress2) - i16, i13 < groupIndexToAddress2 ? 0 : i11, i12, length), slotWriter.slotsGapStart, slotWriter.slotsGapLen, slotWriter.slots.length);
                i15++;
                i10 = i16;
                iArr2 = iArr3;
                i11 = i11;
            }
            int i17 = i7 + i6;
            int size$runtime = slotWriter.getSize$runtime();
            int access$locationOf = SlotTableKt.access$locationOf(slotWriter.anchors, i7, size$runtime);
            ArrayList arrayList = new ArrayList();
            if (access$locationOf >= 0) {
                while (access$locationOf < slotWriter.anchors.size() && (anchorIndex = slotWriter.anchorIndex((gapAnchor = (GapAnchor) slotWriter.anchors.get(access$locationOf)))) >= i7 && anchorIndex < i17) {
                    arrayList.add(gapAnchor);
                }
            }
            int i18 = i2 - i7;
            int size = arrayList.size();
            for (int i19 = 0; i19 < size; i19++) {
                GapAnchor gapAnchor2 = (GapAnchor) arrayList.get(i19);
                int anchorIndex2 = slotWriter.anchorIndex(gapAnchor2) + i18;
                if (anchorIndex2 >= slotWriter.groupGapStart) {
                    gapAnchor2.location = -(size$runtime - anchorIndex2);
                } else {
                    gapAnchor2.location = anchorIndex2;
                }
                slotWriter.anchors.add(SlotTableKt.access$locationOf(slotWriter.anchors, anchorIndex2, size$runtime), gapAnchor2);
            }
            if (slotWriter.removeGroups(i7, i6)) {
                ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
            }
            slotWriter.fixParentAnchorsFor(i3, slotWriter.currentGroupEnd, i2);
            if (i8 > 0) {
                slotWriter.removeSlots(i9, i8, i7 - 1);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MoveNode extends Operation {
        public static final MoveNode INSTANCE = new MoveNode(3, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            applier.move(openHashSet.getInt(0), openHashSet.getInt(1), openHashSet.getInt(2));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ReleaseMovableGroupAtCurrent extends Operation {
        public static final ReleaseMovableGroupAtCurrent INSTANCE = new ReleaseMovableGroupAtCurrent(0, 3, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            CompositionImpl compositionImpl = (CompositionImpl) openHashSet.m644getObjectPtLUHM(0);
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) openHashSet.m644getObjectPtLUHM(2);
            ((CompositionContext) openHashSet.m644getObjectPtLUHM(1)).movableContentStateReleased$runtime(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent(compositionImpl, movableContentStateReference, slotWriter, null), applier);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Remember extends Operation {
        public static final Remember INSTANCE;

        static {
            int i = 1;
            INSTANCE = new Remember(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) openHashSet.m644getObjectPtLUHM(0);
            ((MutableVector) activityErrorBinding.errorMessageView).add(gapRememberObserverHolder);
            ((MutableScatterSet) activityErrorBinding.errorInfosView).add(gapRememberObserverHolder);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RememberPausingScope extends Operation {
        public static final RememberPausingScope INSTANCE;

        static {
            int i = 1;
            INSTANCE = new RememberPausingScope(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) openHashSet.m644getObjectPtLUHM(0);
            Set set = (Set) activityErrorBinding.rootView;
            if (set == null) {
                return;
            }
            PausedCompositionRemembers pausedCompositionRemembers = new PausedCompositionRemembers(set);
            MutableScatterMap mutableScatterMap = (MutableScatterMap) activityErrorBinding.errorReportEmailButton;
            if (mutableScatterMap == null) {
                long[] jArr = ScatterMapKt.EmptyGroup;
                mutableScatterMap = new MutableScatterMap();
                activityErrorBinding.errorReportEmailButton = mutableScatterMap;
            }
            mutableScatterMap.set(recomposeScopeImpl, pausedCompositionRemembers);
            ((MutableVector) activityErrorBinding.errorMessageView).add(new GapRememberObserverHolder(pausedCompositionRemembers, -1));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RemoveCurrentGroup extends Operation {
        public static final RemoveCurrentGroup INSTANCE;

        static {
            int i = 0;
            INSTANCE = new RemoveCurrentGroup(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.forAllDataInRememberOrder(slotWriter.currentGroup, new Updater$$ExternalSyntheticLambda0(activityErrorBinding, 6));
            slotWriter.removeGroup();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RemoveNode extends Operation {
        public static final RemoveNode INSTANCE;

        static {
            int i = 2;
            INSTANCE = new RemoveNode(i, 0, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            applier.remove(openHashSet.getInt(0), openHashSet.getInt(1));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ResetSlots extends Operation {
        public static final ResetSlots INSTANCE;

        static {
            int i = 0;
            INSTANCE = new ResetSlots(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            if (slotWriter.insertCount != 0) {
                ComposerKt.composeImmediateRuntimeError("Cannot reset when inserting");
            }
            slotWriter.recalculateMarks();
            slotWriter.currentGroup = 0;
            slotWriter.currentGroupEnd = slotWriter.getCapacity() - slotWriter.groupGapLen;
            slotWriter.currentSlot = 0;
            slotWriter.currentSlotEnd = 0;
            slotWriter.nodeCount = 0;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SideEffect extends Operation {
        public static final SideEffect INSTANCE;

        static {
            int i = 1;
            INSTANCE = new SideEffect(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            ((MutableVector) activityErrorBinding.errorView).add((Function0) openHashSet.m644getObjectPtLUHM(0));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SkipToEndOfCurrentGroup extends Operation {
        public static final SkipToEndOfCurrentGroup INSTANCE;

        static {
            int i = 0;
            INSTANCE = new SkipToEndOfCurrentGroup(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.skipToGroupEnd();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StartResumingScope extends Operation {
        public static final StartResumingScope INSTANCE;

        static {
            int i = 1;
            INSTANCE = new StartResumingScope(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) openHashSet.m644getObjectPtLUHM(0);
            MutableScatterMap mutableScatterMap = (MutableScatterMap) activityErrorBinding.errorReportEmailButton;
            PausedCompositionRemembers pausedCompositionRemembers = mutableScatterMap != null ? (PausedCompositionRemembers) mutableScatterMap.get(recomposeScopeImpl) : null;
            if (pausedCompositionRemembers != null) {
                ArrayList arrayList = (ArrayList) activityErrorBinding.errorReportGitHubButton;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    activityErrorBinding.errorReportGitHubButton = arrayList;
                }
                arrayList.add((MutableVector) activityErrorBinding.errorMessageView);
                activityErrorBinding.errorMessageView = pausedCompositionRemembers.pausedRemembers;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TrimParentValues extends Operation {
        public static final TrimParentValues INSTANCE = new TrimParentValues(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            int i = openHashSet.getInt(0);
            int i2 = slotWriter.parent;
            int slotIndex = slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i2));
            int dataIndex = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i2 + 1));
            for (int max = Math.max(slotIndex, dataIndex - i); max < dataIndex; max++) {
                Object obj = slotWriter.slots[slotWriter.dataIndexToDataAddress(max)];
                if (obj instanceof GapRememberObserverHolder) {
                    activityErrorBinding.forgetting((GapRememberObserverHolder) obj);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).release();
                }
            }
            if (i <= 0) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            int i3 = slotWriter.parent;
            int slotIndex2 = slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i3));
            int dataIndex2 = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i3 + 1)) - i;
            if (dataIndex2 < slotIndex2) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            slotWriter.removeSlots(dataIndex2, i, i3);
            int i4 = slotWriter.currentSlot;
            if (i4 >= slotIndex2) {
                slotWriter.currentSlot = i4 - i;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UpdateAuxData extends Operation {
        public static final UpdateAuxData INSTANCE;

        static {
            int i = 1;
            INSTANCE = new UpdateAuxData(0, i, i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            slotWriter.updateAux(openHashSet.m644getObjectPtLUHM(0));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UpdateNode extends Operation {
        public static final UpdateNode INSTANCE = new UpdateNode(0, 2, 1);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            applier.apply(openHashSet.m644getObjectPtLUHM(0), (Function2) openHashSet.m644getObjectPtLUHM(1));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UpdateValue extends Operation {
        public static final UpdateValue INSTANCE;
        public static final UpdateValue INSTANCE$1;
        public static final UpdateValue INSTANCE$2;
        public static final UpdateValue INSTANCE$3;
        public final /* synthetic */ int $r8$classId;

        static {
            int i = 1;
            INSTANCE$1 = new UpdateValue(i, 2, 1);
            int i2 = 1;
            INSTANCE$2 = new UpdateValue(i2, i2, 2);
            INSTANCE$3 = new UpdateValue(i, 2, 3);
            int i3 = 1;
            INSTANCE = new UpdateValue(i3, i3, 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ UpdateValue(int i, int i2, int i3) {
            super(i, i2, 0, (byte) 0);
            this.$r8$classId = i3;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            switch (this.$r8$classId) {
                case 0:
                    Object m644getObjectPtLUHM = openHashSet.m644getObjectPtLUHM(0);
                    int i = openHashSet.getInt(0);
                    if (m644getObjectPtLUHM instanceof GapRememberObserverHolder) {
                        GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) m644getObjectPtLUHM;
                        ((MutableVector) activityErrorBinding.errorMessageView).add(gapRememberObserverHolder);
                        ((MutableScatterSet) activityErrorBinding.errorInfosView).add(gapRememberObserverHolder);
                    }
                    Object obj = slotWriter.set(slotWriter.currentGroup, i, m644getObjectPtLUHM);
                    if (!(obj instanceof GapRememberObserverHolder)) {
                        if (obj instanceof RecomposeScopeImpl) {
                            ((RecomposeScopeImpl) obj).release();
                            break;
                        }
                    } else {
                        activityErrorBinding.forgetting((GapRememberObserverHolder) obj);
                        break;
                    }
                    break;
                case 1:
                    Object invoke = ((Function0) openHashSet.m644getObjectPtLUHM(0)).invoke();
                    GapAnchor gapAnchor = (GapAnchor) openHashSet.m644getObjectPtLUHM(1);
                    int i2 = openHashSet.getInt(0);
                    gapAnchor.getClass();
                    slotWriter.updateNodeOfGroup(slotWriter.anchorIndex(gapAnchor), invoke);
                    applier.insertTopDown(i2, invoke);
                    applier.down(invoke);
                    break;
                case 2:
                    GapAnchor gapAnchor2 = (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
                    int i3 = openHashSet.getInt(0);
                    applier.up();
                    gapAnchor2.getClass();
                    applier.insertBottomUp(i3, slotWriter.node(slotWriter.anchorIndex(gapAnchor2)));
                    break;
                default:
                    Object m644getObjectPtLUHM2 = openHashSet.m644getObjectPtLUHM(0);
                    GapAnchor gapAnchor3 = (GapAnchor) openHashSet.m644getObjectPtLUHM(1);
                    int i4 = openHashSet.getInt(0);
                    if (m644getObjectPtLUHM2 instanceof GapRememberObserverHolder) {
                        GapRememberObserverHolder gapRememberObserverHolder2 = (GapRememberObserverHolder) m644getObjectPtLUHM2;
                        ((MutableVector) activityErrorBinding.errorMessageView).add(gapRememberObserverHolder2);
                        ((MutableScatterSet) activityErrorBinding.errorInfosView).add(gapRememberObserverHolder2);
                    }
                    Object obj2 = slotWriter.set(slotWriter.anchorIndex(gapAnchor3), i4, m644getObjectPtLUHM2);
                    if (!(obj2 instanceof GapRememberObserverHolder)) {
                        if (obj2 instanceof RecomposeScopeImpl) {
                            ((RecomposeScopeImpl) obj2).release();
                            break;
                        }
                    } else {
                        activityErrorBinding.forgetting((GapRememberObserverHolder) obj2);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public GapAnchor getGroupAnchor(OpenHashSet openHashSet) {
            switch (this.$r8$classId) {
                case 1:
                    return (GapAnchor) openHashSet.m644getObjectPtLUHM(1);
                case 2:
                    return (GapAnchor) openHashSet.m644getObjectPtLUHM(0);
                default:
                    return super.getGroupAnchor(openHashSet);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Ups extends Operation {
        public static final Ups INSTANCE = new Ups(1, 0, 2);

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            int i = openHashSet.getInt(0);
            for (int i2 = 0; i2 < i; i2++) {
                applier.up();
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UseCurrentNode extends Operation {
        public static final UseCurrentNode INSTANCE;

        static {
            int i = 0;
            INSTANCE = new UseCurrentNode(i, i, 3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public final void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext) {
            applier.reuse();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Operation(int i, int i2, int i3) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, 0, (byte) 0);
        this.$r8$classId = 0;
    }

    public abstract void execute(OpenHashSet openHashSet, Applier applier, SlotWriter slotWriter, ActivityErrorBinding activityErrorBinding, OperationErrorContext operationErrorContext);

    public GapAnchor getGroupAnchor(OpenHashSet openHashSet) {
        return null;
    }

    public abstract void migrate(App app);

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
                return simpleName == null ? "" : simpleName;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ Operation(int i, int i2, int i3, byte b) {
        this.$r8$classId = i3;
        this.ints = i;
        this.objects = i2;
    }
}
