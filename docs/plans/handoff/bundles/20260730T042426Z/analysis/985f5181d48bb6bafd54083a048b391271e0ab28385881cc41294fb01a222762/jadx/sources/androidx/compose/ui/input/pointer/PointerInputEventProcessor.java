package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;

/* compiled from: PointerInputEventProcessor.kt */
/* loaded from: classes.dex */
public final class PointerInputEventProcessor {
    private final HitPathTracker hitPathTracker;
    private boolean isProcessing;
    private final LayoutNode root;
    private final PointerInputChangeEventProducer pointerInputChangeEventProducer = new PointerInputChangeEventProducer();
    private final HitTestResult hitResult = new HitTestResult();

    public PointerInputEventProcessor(LayoutNode layoutNode) {
        this.root = layoutNode;
        this.hitPathTracker = new HitPathTracker(layoutNode.getCoordinates());
    }

    /* renamed from: process-BIzXfog, reason: not valid java name */
    public final int m1701processBIzXfog(PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator, boolean z) {
        boolean z2;
        if (this.isProcessing) {
            return PointerInputEventProcessorKt.ProcessResult(false, false);
        }
        boolean z3 = true;
        try {
            this.isProcessing = true;
            InternalPointerEvent produce = this.pointerInputChangeEventProducer.produce(pointerInputEvent, positionCalculator);
            int size = produce.getChanges().size();
            for (int i = 0; i < size; i++) {
                PointerInputChange pointerInputChange = (PointerInputChange) produce.getChanges().valueAt(i);
                if (!pointerInputChange.getPressed() && !pointerInputChange.getPreviousPressed()) {
                }
                z2 = false;
                break;
            }
            z2 = true;
            int size2 = produce.getChanges().size();
            for (int i2 = 0; i2 < size2; i2++) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) produce.getChanges().valueAt(i2);
                if (z2 || PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange2)) {
                    LayoutNode.m1813hitTestM_7yMNQ$ui_release$default(this.root, pointerInputChange2.m1690getPositionF1C5BW0(), this.hitResult, PointerType.m1709equalsimpl0(pointerInputChange2.m1693getTypeT8wyACA(), PointerType.Companion.m1715getTouchT8wyACA()), false, 8, null);
                    if (!this.hitResult.isEmpty()) {
                        this.hitPathTracker.m1656addHitPathQJqDSyo(pointerInputChange2.m1688getIdJ3iCeTQ(), this.hitResult, PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange2));
                        this.hitResult.clear();
                    }
                }
            }
            this.hitPathTracker.removeDetachedPointerInputNodes();
            boolean dispatchChanges = this.hitPathTracker.dispatchChanges(produce, z);
            if (!produce.getSuppressMovementConsumption()) {
                int size3 = produce.getChanges().size();
                for (int i3 = 0; i3 < size3; i3++) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) produce.getChanges().valueAt(i3);
                    if (PointerEventKt.positionChangedIgnoreConsumed(pointerInputChange3) && pointerInputChange3.isConsumed()) {
                        break;
                    }
                }
            }
            z3 = false;
            int ProcessResult = PointerInputEventProcessorKt.ProcessResult(dispatchChanges, z3);
            this.isProcessing = false;
            return ProcessResult;
        } catch (Throwable th) {
            this.isProcessing = false;
            throw th;
        }
    }

    public final void processCancel() {
        if (this.isProcessing) {
            return;
        }
        this.pointerInputChangeEventProducer.clear();
        this.hitPathTracker.processCancel();
    }

    public final void clearPreviouslyHitModifierNodes() {
        this.hitPathTracker.clearPreviouslyHitModifierNodeCache();
    }
}
