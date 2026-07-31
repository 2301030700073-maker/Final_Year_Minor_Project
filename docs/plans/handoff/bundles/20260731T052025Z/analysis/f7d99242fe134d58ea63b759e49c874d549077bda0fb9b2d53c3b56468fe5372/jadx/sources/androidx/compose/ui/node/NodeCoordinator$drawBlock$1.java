package androidx.compose.ui.node;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.semantics.SemanticsNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeCoordinator$drawBlock$1 extends Lambda implements Function2 {
    public final /* synthetic */ Object $drawBlockCallToDrawModifiers;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NodeCoordinator$drawBlock$1(int i, Object obj, Object obj2) {
        super(2);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$drawBlockCallToDrawModifiers = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$drawBlockCallToDrawModifiers;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                Canvas canvas = (Canvas) obj;
                GraphicsLayer graphicsLayer = (GraphicsLayer) obj2;
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj4;
                LayoutNode layoutNode = nodeCoordinator.layoutNode;
                if (!layoutNode.isPlaced()) {
                    nodeCoordinator.lastLayerDrawingWasSkipped = true;
                    break;
                } else {
                    nodeCoordinator.drawBlockCanvas = canvas;
                    nodeCoordinator.drawBlockParentLayer = graphicsLayer;
                    OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSnapshotObserver();
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                    snapshotObserver.observer.observeReads(nodeCoordinator, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$3, (NodeCoordinator$invalidateParentLayer$1) obj3);
                    nodeCoordinator.lastLayerDrawingWasSkipped = false;
                    break;
                }
            case 1:
                int intValue = ((Number) obj).intValue();
                SemanticsNode semanticsNode = (SemanticsNode) obj2;
                AndroidContentCaptureManager androidContentCaptureManager = (AndroidContentCaptureManager) obj3;
                if (!((SemanticsNodeCopy) obj4).children.contains(semanticsNode.id)) {
                    androidContentCaptureManager.updateBuffersOnAppeared(intValue, semanticsNode);
                    androidContentCaptureManager.boundsUpdateChannel.mo1016trySendJP2dKIU(unit);
                    break;
                }
                break;
            default:
                Composer composer = (Composer) obj;
                int intValue2 = ((Number) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Boolean bool = (Boolean) ((LayoutNodeSubcompositionsState.NodeState) obj4).activeState.getValue();
                    boolean booleanValue = bool.booleanValue();
                    Function2 function2 = (Function2) obj3;
                    gapComposer.startReusableGroup(bool);
                    boolean changed = gapComposer.changed(booleanValue);
                    if (booleanValue) {
                        function2.invoke(gapComposer, 0);
                    } else {
                        if (gapComposer.groupNodeCount != 0) {
                            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling deactivateToEndGroup");
                        }
                        if (!gapComposer.inserting) {
                            if (changed) {
                                SlotReader slotReader = gapComposer.reader;
                                int i2 = slotReader.currentGroup;
                                int i3 = slotReader.currentEnd;
                                ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                                composerChangeListWriter.getClass();
                                composerChangeListWriter.realizeOperationLocation(false);
                                composerChangeListWriter.changeList.operations.pushOp(Operation.DeactivateCurrentGroup.INSTANCE);
                                Updater.access$removeRange(gapComposer.invalidations, i2, i3);
                                gapComposer.reader.skipToGroupEnd();
                            } else {
                                gapComposer.skipReaderToGroupEnd();
                            }
                        }
                    }
                    if (gapComposer.reusing && gapComposer.reader.parent == gapComposer.reusingGroup) {
                        gapComposer.reusingGroup = -1;
                        gapComposer.reusing = false;
                    }
                    gapComposer.end(false);
                    break;
                }
        }
        return unit;
    }
}
