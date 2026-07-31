package net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork;

import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.SettingListKt$$ExternalSyntheticLambda0;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableNode$initializePointerInputNode$1$1$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ SegmentedButtonKt$$ExternalSyntheticLambda4 $onDrag;
    public final /* synthetic */ ResourceFileSystem$$ExternalSyntheticLambda0 $onDragCancel;
    public final /* synthetic */ SettingListKt$$ExternalSyntheticLambda0 $onDragEnd;
    public final /* synthetic */ BufferedChannel$$ExternalSyntheticLambda1 $onDragStart;
    public final /* synthetic */ Ref$LongRef $overSlop;
    public final /* synthetic */ ThemeSizesKt$$ExternalSyntheticLambda0 $shouldAwaitTouchSlop;
    public float F$0;
    public long J$0;
    public long J$1;
    public long J$2;
    public /* synthetic */ Object L$0;
    public PointerInputChange L$1;
    public PointerInputChange L$10;
    public PointerInputChange L$11;
    public PointerInputChange L$2;
    public PointerInputChange L$3;
    public SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine L$4;
    public Object L$5;
    public Object L$6;
    public Ref$LongRef L$7;
    public Object L$8;
    public TouchSlopDetector L$9;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ DraggableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableNode$initializePointerInputNode$1$1$1(ThemeSizesKt$$ExternalSyntheticLambda0 themeSizesKt$$ExternalSyntheticLambda0, Ref$LongRef ref$LongRef, DraggableNode draggableNode, BufferedChannel$$ExternalSyntheticLambda1 bufferedChannel$$ExternalSyntheticLambda1, SegmentedButtonKt$$ExternalSyntheticLambda4 segmentedButtonKt$$ExternalSyntheticLambda4, ResourceFileSystem$$ExternalSyntheticLambda0 resourceFileSystem$$ExternalSyntheticLambda0, SettingListKt$$ExternalSyntheticLambda0 settingListKt$$ExternalSyntheticLambda0, Continuation continuation) {
        super(2, continuation);
        this.$shouldAwaitTouchSlop = themeSizesKt$$ExternalSyntheticLambda0;
        this.$overSlop = ref$LongRef;
        this.this$0 = draggableNode;
        this.$onDragStart = bufferedChannel$$ExternalSyntheticLambda1;
        this.$onDrag = segmentedButtonKt$$ExternalSyntheticLambda4;
        this.$onDragCancel = resourceFileSystem$$ExternalSyntheticLambda0;
        this.$onDragEnd = settingListKt$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DraggableNode$initializePointerInputNode$1$1$1 draggableNode$initializePointerInputNode$1$1$1 = new DraggableNode$initializePointerInputNode$1$1$1(this.$shouldAwaitTouchSlop, this.$overSlop, this.this$0, this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, continuation);
        draggableNode$initializePointerInputNode$1$1$1.L$0 = obj;
        return draggableNode$initializePointerInputNode$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DraggableNode$initializePointerInputNode$1$1$1) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:226:0x01cb, code lost:
    
        if (r4 == r15) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x06b7, code lost:
    
        if (androidx.compose.ui.geometry.Offset.m438getDistanceimpl(androidx.compose.ui.input.pointer.PointerId.positionChangeInternal(r2, true)) == 0.0f) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x03b1, code lost:
    
        if (r3 == r8) goto L67;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:49:0x06ab, B:36:0x0686], limit reached: 227 */
    /* JADX WARN: Removed duplicated region for block: B:100:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x04af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x06c5  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0288 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x06d3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0676 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0655  */
    /* JADX WARN: Type inference failed for: r10v38, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r14v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v100, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x050d -> B:54:0x0570). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0560 -> B:50:0x0566). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x058d -> B:55:0x0371). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:151:0x01f9 -> B:144:0x01ff). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:163:0x0292 -> B:144:0x01ff). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:182:0x02e5 -> B:145:0x034d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:186:0x033b -> B:141:0x0343). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0645 -> B:7:0x0648). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x03da -> B:61:0x038f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x0417 -> B:53:0x041d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x04b7 -> B:53:0x041d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r36) {
        /*
            Method dump skipped, instructions count: 1812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$initializePointerInputNode$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
