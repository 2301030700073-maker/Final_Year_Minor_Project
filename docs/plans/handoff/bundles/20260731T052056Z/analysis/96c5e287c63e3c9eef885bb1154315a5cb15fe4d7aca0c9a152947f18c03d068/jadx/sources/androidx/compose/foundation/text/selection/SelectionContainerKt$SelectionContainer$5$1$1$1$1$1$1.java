package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1 implements PointerInputEventHandler {
    public final /* synthetic */ TextDragObserver $observer;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1(TextDragObserver textDragObserver, int i) {
        this.$r8$classId = i;
        this.$observer = textDragObserver;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        TextDragObserver textDragObserver = this.$observer;
        switch (i) {
            case 0:
                Object detectDownAndDragGesturesWithObserver = BasicTextKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, continuation);
                return detectDownAndDragGesturesWithObserver == CoroutineSingletons.COROUTINE_SUSPENDED ? detectDownAndDragGesturesWithObserver : unit;
            default:
                Object detectDownAndDragGesturesWithObserver2 = BasicTextKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, continuation);
                return detectDownAndDragGesturesWithObserver2 == CoroutineSingletons.COROUTINE_SUSPENDED ? detectDownAndDragGesturesWithObserver2 : unit;
        }
    }
}
