package androidx.compose.foundation.text;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.compose.components.HtmlTextKt$HtmlText$1$1;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ TextDragObserver $observer;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PointerInputScope $this_pointerInput;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$this_pointerInput = pointerInputScope;
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(this.$this_pointerInput, this.$observer, continuation, 0);
            case 1:
                return new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(this.$this_pointerInput, this.$observer, continuation, 1);
            default:
                return new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(this.$this_pointerInput, this.$observer, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        TextDragObserver textDragObserver = this.$observer;
        PointerInputScope pointerInputScope = this.$this_pointerInput;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = null;
        int i2 = 1;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    return BasicTextKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, this) == coroutineSingletons ? coroutineSingletons : unit;
                }
                if (i3 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new ForEachGestureKt$awaitEachGesture$2(3, textDragObserver, continuation), this);
                if (awaitEachGesture != coroutineSingletons2) {
                    awaitEachGesture = unit;
                }
                return awaitEachGesture == coroutineSingletons2 ? coroutineSingletons2 : unit;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                LongPressTextDragObserverKt$$ExternalSyntheticLambda0 longPressTextDragObserverKt$$ExternalSyntheticLambda0 = new LongPressTextDragObserverKt$$ExternalSyntheticLambda0(textDragObserver, 0);
                LongPressTextDragObserverKt$$ExternalSyntheticLambda1 longPressTextDragObserverKt$$ExternalSyntheticLambda1 = new LongPressTextDragObserverKt$$ExternalSyntheticLambda1(textDragObserver, 0);
                LongPressTextDragObserverKt$$ExternalSyntheticLambda1 longPressTextDragObserverKt$$ExternalSyntheticLambda12 = new LongPressTextDragObserverKt$$ExternalSyntheticLambda1(textDragObserver, 1);
                HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(8, textDragObserver);
                float f = DragGestureDetectorKt.mouseToTouchSlopRatio;
                Object awaitEachGesture2 = ScrollableKt.awaitEachGesture(pointerInputScope, new HtmlTextKt$HtmlText$1$1.AnonymousClass1(new ImmLeaksCleaner$$ExternalSyntheticLambda0(9), new CommunityContentTabKt$$ExternalSyntheticLambda47(i2, longPressTextDragObserverKt$$ExternalSyntheticLambda0), hintHandler$$ExternalSyntheticLambda0, longPressTextDragObserverKt$$ExternalSyntheticLambda12, new AppBarKt$$ExternalSyntheticLambda11(5, longPressTextDragObserverKt$$ExternalSyntheticLambda1), null), this);
                if (awaitEachGesture2 != coroutineSingletons3) {
                    awaitEachGesture2 = unit;
                }
                if (awaitEachGesture2 != coroutineSingletons3) {
                    awaitEachGesture2 = unit;
                }
                if (awaitEachGesture2 != coroutineSingletons3) {
                    awaitEachGesture2 = unit;
                }
                return awaitEachGesture2 == coroutineSingletons3 ? coroutineSingletons3 : unit;
        }
    }
}
