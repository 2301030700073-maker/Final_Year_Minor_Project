package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.runtime.MutableState;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimatableImpl;
import com.airbnb.lottie.compose.LottieCancellationBehavior;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ float $initialVelocity;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object $this_performFling;
    public Object L$0;
    public Object L$1;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(LottieAnimatableImpl lottieAnimatableImpl, LottieComposition lottieComposition, float f, LottieCancellationBehavior lottieCancellationBehavior, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.L$0 = lottieAnimatableImpl;
        this.L$1 = lottieComposition;
        this.$initialVelocity = f;
        this.this$0 = lottieCancellationBehavior;
        this.$this_performFling = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$this_performFling;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                return new DefaultFlingBehavior$performFling$2(this.$initialVelocity, (DefaultFlingBehavior) obj3, (ScrollingLogic$doFlingAnimation$2$reverseScope$1) obj2, continuation);
            case 1:
                return new DefaultFlingBehavior$performFling$2((SnapFlingBehavior) this.L$1, this.$initialVelocity, (Function1) obj3, (ScrollScope) obj2, continuation);
            default:
                return new DefaultFlingBehavior$performFling$2((LottieAnimatableImpl) this.L$0, (LottieComposition) this.L$1, this.$initialVelocity, (LottieCancellationBehavior) obj3, (MutableState) obj2, continuation);
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
        return ((DefaultFlingBehavior$performFling$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e5, code lost:
    
        if (r1 != r0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a9, code lost:
    
        if (r1 == r0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x031f, code lost:
    
        if (java.lang.Math.abs(r18) <= java.lang.Math.abs(r13)) goto L138;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e3  */
    /* JADX WARN: Type inference failed for: r4v14, types: [androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(SnapFlingBehavior snapFlingBehavior, float f, Function1 function1, ScrollScope scrollScope, Continuation continuation) {
        super(2, continuation);
        this.L$1 = snapFlingBehavior;
        this.$initialVelocity = f;
        this.this$0 = function1;
        this.$this_performFling = scrollScope;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(float f, DefaultFlingBehavior defaultFlingBehavior, ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, Continuation continuation) {
        super(2, continuation);
        this.$initialVelocity = f;
        this.this$0 = defaultFlingBehavior;
        this.$this_performFling = scrollingLogic$doFlingAnimation$2$reverseScope$1;
    }
}
