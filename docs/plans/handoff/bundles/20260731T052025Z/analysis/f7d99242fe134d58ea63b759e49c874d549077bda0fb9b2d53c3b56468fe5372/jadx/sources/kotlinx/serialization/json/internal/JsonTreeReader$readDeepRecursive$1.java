package kotlinx.serialization.json.internal;

import androidx.compose.ui.node.RulerTrackingMap;
import kotlin.DeepRecursiveScopeImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.serialization.json.JsonElement;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements Function3 {
    public /* synthetic */ DeepRecursiveScopeImpl L$0;
    public int label;
    public final /* synthetic */ PriorityQueue this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readDeepRecursive$1(PriorityQueue priorityQueue, Continuation continuation) {
        super(3, continuation);
        this.this$0 = priorityQueue;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.this$0, (Continuation) obj3);
        jsonTreeReader$readDeepRecursive$1.L$0 = (DeepRecursiveScopeImpl) obj;
        return jsonTreeReader$readDeepRecursive$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PriorityQueue priorityQueue = this.this$0;
        RulerTrackingMap rulerTrackingMap = (RulerTrackingMap) priorityQueue.array;
        DeepRecursiveScopeImpl deepRecursiveScopeImpl = this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            byte peekNextToken = rulerTrackingMap.peekNextToken();
            if (peekNextToken == 1) {
                return priorityQueue.readValue(true);
            }
            if (peekNextToken == 0) {
                return priorityQueue.readValue(false);
            }
            if (peekNextToken != 6) {
                if (peekNextToken == 8) {
                    return priorityQueue.readArray();
                }
                RulerTrackingMap.fail$default(rulerTrackingMap, "Can't begin reading element, unexpected token", 0, null, 6);
                throw null;
            }
            this.L$0 = null;
            this.label = 1;
            obj = PriorityQueue.access$readObject(priorityQueue, deepRecursiveScopeImpl, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return (JsonElement) obj;
    }
}
