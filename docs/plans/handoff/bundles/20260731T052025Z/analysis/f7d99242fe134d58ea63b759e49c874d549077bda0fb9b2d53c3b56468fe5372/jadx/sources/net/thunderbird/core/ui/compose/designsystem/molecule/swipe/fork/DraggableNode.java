package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.material3.ExposedDropdownMenuKt$expandable$1;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode extends DelegatingNode implements PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public ScrollState$$ExternalSyntheticLambda4 canDrag;
    public BufferedChannel channel;
    public DragInteraction$Start dragInteraction;
    public boolean enabled;
    public boolean isListeningForEvents;
    public long nodeOffset;
    public Function3 onDragStarted;
    public Function3 onDragStopped;
    public Orientation orientation;
    public SuspendingPointerInputModifierNodeImpl pointerInputNode;
    public DraggableState state;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
    
        if (r4.dragInteraction != null) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragCancel(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragCancel$1
            if (r0 == 0) goto L13
            r0 = r5
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragCancel$1 r0 = (net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragCancel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragCancel$1 r0 = new net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragCancel$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r0 = r0.label
            r1 = 0
            if (r0 == 0) goto L2e
            r2 = 1
            if (r0 != r2) goto L28
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Unit r5 = (kotlin.Unit) r5
            goto L35
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.compose.foundation.interaction.DragInteraction$Start r5 = r4.dragInteraction
            if (r5 == 0) goto L37
        L35:
            r4.dragInteraction = r1
        L37:
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent$DragStopped r5 = new net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent$DragStopped
            r0 = 0
            r5.<init>(r0)
            r4.onDragStopped(r5)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode.access$processDragCancel(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragStart(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode r9, net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent.DragStarted r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            boolean r0 = r11 instanceof net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStart$1
            if (r0 == 0) goto L13
            r0 = r11
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStart$1 r0 = (net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStart$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStart$1 r0 = new net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStart$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            int r0 = r0.label
            r1 = 1
            if (r0 == 0) goto L38
            r10 = 0
            if (r0 == r1) goto L32
            r2 = 2
            if (r0 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.Unit r11 = (kotlin.Unit) r11
            r11 = r10
            goto L45
        L2c:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r10
        L32:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlin.Unit r11 = (kotlin.Unit) r11
            goto L3d
        L38:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.foundation.interaction.DragInteraction$Start r11 = r9.dragInteraction
        L3d:
            androidx.compose.foundation.interaction.DragInteraction$Start r11 = new androidx.compose.foundation.interaction.DragInteraction$Start
            r11.<init>()
            r8 = r11
            r11 = r10
            r10 = r8
        L45:
            r9.dragInteraction = r10
            long r4 = r11.startPoint
            boolean r10 = r9.isAttached
            if (r10 == 0) goto L69
            kotlin.jvm.functions.Function3 r10 = r9.onDragStarted
            androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1 r11 = net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableKt.NoOpOnDragStarted
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r11)
            if (r10 == 0) goto L58
            goto L69
        L58:
            kotlinx.coroutines.CoroutineScope r10 = r9.getCoroutineScope()
            androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1 r2 = new androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1
            r7 = 5
            r6 = 0
            r3 = r9
            r2.<init>(r3, r4, r6, r7)
            kotlinx.coroutines.CoroutineStart r9 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
            kotlinx.coroutines.JobKt.launch$default(r10, r6, r9, r2, r1)
        L69:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode.access$processDragStart(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode, net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent$DragStarted, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r4.dragInteraction != null) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$processDragStop(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode r4, net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent.DragStopped r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStop$1
            if (r0 == 0) goto L13
            r0 = r6
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStop$1 r0 = (net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStop$1 r0 = new net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$processDragStop$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r0 = r0.label
            r1 = 0
            if (r0 == 0) goto L2f
            r5 = 1
            if (r0 != r5) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Unit r6 = (kotlin.Unit) r6
            r5 = r1
            goto L36
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        L2f:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.foundation.interaction.DragInteraction$Start r6 = r4.dragInteraction
            if (r6 == 0) goto L38
        L36:
            r4.dragInteraction = r1
        L38:
            r4.onDragStopped(r5)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode.access$processDragStop(net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode, net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent$DragStopped, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo115getTouchBoundsExpansionRZrCHBk() {
        return TouchBoundsExpansion.None;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.pointerInputNode;
        if (suspendingPointerInputModifierNodeImpl != null) {
            suspendingPointerInputModifierNodeImpl.onCancelPointerInput();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
    }

    public final void onDragStopped(DragEvent.DragStopped dragStopped) {
        dragStopped.getClass();
        if (!this.isAttached || Intrinsics.areEqual(this.onDragStopped, DraggableKt.NoOpOnDragStopped)) {
            return;
        }
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new StringResourcesKt$stringResource$str$3$1(this, dragStopped, null, 1), 1);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo120onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        pointerEvent.getClass();
        if (this.enabled && this.pointerInputNode == null) {
            ExposedDropdownMenuKt$expandable$1 exposedDropdownMenuKt$expandable$1 = new ExposedDropdownMenuKt$expandable$1(8, this);
            PointerEvent pointerEvent2 = SuspendingPointerInputFilterKt.EmptyPointerEvent;
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl(null, null, exposedDropdownMenuKt$expandable$1);
            delegate(suspendingPointerInputModifierNodeImpl);
            this.pointerInputNode = suspendingPointerInputModifierNodeImpl;
        }
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl2 = this.pointerInputNode;
        if (suspendingPointerInputModifierNodeImpl2 != null) {
            suspendingPointerInputModifierNodeImpl2.mo120onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* bridge */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* bridge */ void interceptOutOfBoundsChildEvents() {
    }
}
