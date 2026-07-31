package androidx.compose.foundation;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CombinedClickableNode$handleDownEvent$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ CombinedClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CombinedClickableNode$handleDownEvent$1(CombinedClickableNode combinedClickableNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = combinedClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        CombinedClickableNode combinedClickableNode = this.this$0;
        switch (i) {
            case 0:
                return new CombinedClickableNode$handleDownEvent$1(combinedClickableNode, continuation, 0);
            case 1:
                return new CombinedClickableNode$handleDownEvent$1(combinedClickableNode, continuation, 1);
            default:
                return new CombinedClickableNode$handleDownEvent$1(combinedClickableNode, continuation, 2);
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
        return ((CombinedClickableNode$handleDownEvent$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        CombinedClickableNode combinedClickableNode = this.this$0;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    long longPressTimeoutMillis = ((ViewConfiguration) HitTestResultKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.LocalViewConfiguration)).getLongPressTimeoutMillis();
                    this.label = 1;
                    if (JobKt.delay(longPressTimeoutMillis, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Function0 function0 = combinedClickableNode.onLongClick;
                if (function0 != null) {
                    function0.invoke();
                }
                if (combinedClickableNode.hapticFeedbackEnabled) {
                    ((PlatformHapticFeedback) ((HapticFeedback) HitTestResultKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.LocalHapticFeedback))).m555performHapticFeedbackCdsT49E(0);
                }
                combinedClickableNode.longPressTriggered = true;
                StandaloneCoroutine standaloneCoroutine = combinedClickableNode.tapJob;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                combinedClickableNode.tapJob = null;
                combinedClickableNode.longPressJob = null;
                break;
            case 1:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    long longPressTimeoutMillis2 = ((ViewConfiguration) HitTestResultKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.LocalViewConfiguration)).getLongPressTimeoutMillis();
                    this.label = 1;
                    if (JobKt.delay(longPressTimeoutMillis2, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Function0 function02 = combinedClickableNode.onLongClick;
                if (function02 != null) {
                    function02.invoke();
                }
                if (combinedClickableNode.hapticFeedbackEnabled) {
                    ((PlatformHapticFeedback) ((HapticFeedback) HitTestResultKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.LocalHapticFeedback))).m555performHapticFeedbackCdsT49E(0);
                }
                combinedClickableNode.indirectLongPressTriggered = true;
                StandaloneCoroutine standaloneCoroutine2 = combinedClickableNode.indirectTapJob;
                if (standaloneCoroutine2 != null) {
                    standaloneCoroutine2.cancel(null);
                }
                combinedClickableNode.indirectTapJob = null;
                combinedClickableNode.indirectLongPressJob = null;
                break;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    long longPressTimeoutMillis3 = ((ViewConfiguration) HitTestResultKt.currentValueOf(combinedClickableNode, CompositionLocalsKt.LocalViewConfiguration)).getLongPressTimeoutMillis();
                    this.label = 1;
                    if (JobKt.delay(longPressTimeoutMillis3, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Function0 function03 = combinedClickableNode.onLongClick;
                if (function03 != null) {
                    function03.invoke();
                    break;
                }
                break;
        }
        return unit;
    }
}
