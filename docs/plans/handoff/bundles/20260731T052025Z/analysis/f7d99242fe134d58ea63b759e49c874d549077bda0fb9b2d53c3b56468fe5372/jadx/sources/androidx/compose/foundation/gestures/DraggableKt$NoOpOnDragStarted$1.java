package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DraggableKt$NoOpOnDragStarted$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DraggableKt$NoOpOnDragStarted$1(int i, Continuation continuation, int i2) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 3;
        switch (i) {
            case 0:
                long j = ((Offset) obj2).packedValue;
                new DraggableKt$NoOpOnDragStarted$1(i2, (Continuation) obj3, 0).invokeSuspend(unit);
                break;
            case 1:
                ((Number) obj2).floatValue();
                new DraggableKt$NoOpOnDragStarted$1(i2, (Continuation) obj3, 1).invokeSuspend(unit);
                break;
            case 2:
                long j2 = ((Offset) obj2).packedValue;
                new DraggableKt$NoOpOnDragStarted$1(i2, (Continuation) obj3, 2).invokeSuspend(unit);
                break;
            case 3:
                long j3 = ((Offset) obj2).packedValue;
                new DraggableKt$NoOpOnDragStarted$1(i2, (Continuation) obj3, i2).invokeSuspend(unit);
                break;
            default:
                ((Number) obj2).floatValue();
                new DraggableKt$NoOpOnDragStarted$1(i2, (Continuation) obj3, 4).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                break;
        }
        return unit;
    }
}
