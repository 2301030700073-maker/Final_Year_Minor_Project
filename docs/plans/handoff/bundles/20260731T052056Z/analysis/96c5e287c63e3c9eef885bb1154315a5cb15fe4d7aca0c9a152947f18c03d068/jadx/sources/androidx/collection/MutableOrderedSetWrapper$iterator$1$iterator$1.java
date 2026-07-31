package androidx.collection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.sequences.SubSequence$iterator$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2 {
    public int I$0;
    public /* synthetic */ Object L$0;
    public SubSequence$iterator$1 L$1;
    public MutableOrderedSetWrapper L$2;
    public long[] L$3;
    public int label;
    public final /* synthetic */ MutableOrderedSetWrapper this$0;
    public final /* synthetic */ SubSequence$iterator$1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableOrderedSetWrapper$iterator$1$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper, SubSequence$iterator$1 subSequence$iterator$1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = mutableOrderedSetWrapper;
        this.this$1 = subSequence$iterator$1;
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
        MutableOrderedSetWrapper mutableOrderedSetWrapper;
        long[] jArr;
        int i;
        SubSequence$iterator$1 subSequence$iterator$1;
        SequenceBuilderIterator sequenceBuilderIterator;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            SequenceBuilderIterator sequenceBuilderIterator2 = (SequenceBuilderIterator) this.L$0;
            mutableOrderedSetWrapper = this.this$0;
            MutableOrderedScatterSet mutableOrderedScatterSet = mutableOrderedSetWrapper.parent;
            jArr = mutableOrderedScatterSet.nodes;
            i = mutableOrderedScatterSet.tail;
            subSequence$iterator$1 = this.this$1;
            sequenceBuilderIterator = sequenceBuilderIterator2;
        } else {
            if (i2 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i3 = this.I$0;
            long[] jArr2 = this.L$3;
            MutableOrderedSetWrapper mutableOrderedSetWrapper2 = this.L$2;
            subSequence$iterator$1 = this.L$1;
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            ResultKt.throwOnFailure(obj);
            i = i3;
            mutableOrderedSetWrapper = mutableOrderedSetWrapper2;
            jArr = jArr2;
        }
        while (i != Integer.MAX_VALUE) {
            int i4 = (int) ((jArr[i] >> 31) & 2147483647L);
            subSequence$iterator$1.position = i;
            Object obj2 = mutableOrderedSetWrapper.parent.elements[i];
            this.L$0 = sequenceBuilderIterator;
            this.L$1 = subSequence$iterator$1;
            this.L$2 = mutableOrderedSetWrapper;
            this.L$3 = jArr;
            this.I$0 = i4;
            this.label = 1;
            if (sequenceBuilderIterator.yield(obj2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            i = i4;
        }
        return Unit.INSTANCE;
    }
}
