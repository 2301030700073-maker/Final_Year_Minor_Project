package androidx.collection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2 {
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutableOrderedSetWrapper this$0;
    final /* synthetic */ MutableOrderedSetWrapper$iterator$1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper, MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = mutableOrderedSetWrapper;
        this.this$1 = mutableOrderedSetWrapper$iterator$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MutableOrderedSetWrapper$iterator$1$iterator$1 mutableOrderedSetWrapper$iterator$1$iterator$1 = new MutableOrderedSetWrapper$iterator$1$iterator$1(this.this$0, this.this$1, continuation);
        mutableOrderedSetWrapper$iterator$1$iterator$1.L$0 = obj;
        return mutableOrderedSetWrapper$iterator$1$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MutableOrderedSetWrapper$iterator$1$iterator$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SequenceBuilderIterator sequenceBuilderIterator;
        MutableOrderedSetWrapper mutableOrderedSetWrapper;
        MutableOrderedSetWrapper$iterator$1 mutableOrderedSetWrapper$iterator$1;
        long[] jArr;
        int i;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            mutableOrderedSetWrapper = this.this$0;
            MutableOrderedScatterSet mutableOrderedScatterSet = mutableOrderedSetWrapper.parent;
            mutableOrderedSetWrapper$iterator$1 = this.this$1;
            jArr = mutableOrderedScatterSet.nodes;
            i = mutableOrderedScatterSet.tail;
        } else {
            if (i2 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.I$0;
            jArr = (long[]) this.L$3;
            mutableOrderedSetWrapper = (MutableOrderedSetWrapper) this.L$2;
            mutableOrderedSetWrapper$iterator$1 = (MutableOrderedSetWrapper$iterator$1) this.L$1;
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (i == Integer.MAX_VALUE) {
            return Unit.INSTANCE;
        }
        int i3 = (int) ((jArr[i] >> 31) & 2147483647L);
        mutableOrderedSetWrapper$iterator$1.current = i;
        Object obj2 = mutableOrderedSetWrapper.parent.elements[i];
        this.L$0 = sequenceBuilderIterator;
        this.L$1 = mutableOrderedSetWrapper$iterator$1;
        this.L$2 = mutableOrderedSetWrapper;
        this.L$3 = jArr;
        this.I$0 = i3;
        this.label = 1;
        sequenceBuilderIterator.yield(obj2, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
