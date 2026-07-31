package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import com.android.volley.BuildConfig;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Sequences.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, ExifInterface.GPS_DIRECTION_TRUE, "C", "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", f = "Sequences.kt", i = {}, l = {332}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class SequencesKt__SequencesKt$flatMapIndexed$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1 $iterator;
    final /* synthetic */ Sequence $source;
    final /* synthetic */ Function2 $transform;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt__SequencesKt$flatMapIndexed$1(Sequence sequence, Function2 function2, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$source = sequence;
        this.$transform = function2;
        this.$iterator = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        SequencesKt__SequencesKt$flatMapIndexed$1 sequencesKt__SequencesKt$flatMapIndexed$1 = new SequencesKt__SequencesKt$flatMapIndexed$1(this.$source, this.$transform, this.$iterator, completion);
        sequencesKt__SequencesKt$flatMapIndexed$1.L$0 = obj;
        return sequencesKt__SequencesKt$flatMapIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt__SequencesKt$flatMapIndexed$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        SequencesKt__SequencesKt$flatMapIndexed$1 sequencesKt__SequencesKt$flatMapIndexed$1;
        SequenceScope sequenceScope;
        int index;
        Iterator it;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                sequencesKt__SequencesKt$flatMapIndexed$1 = this;
                SequenceScope $this$sequence = (SequenceScope) sequencesKt__SequencesKt$flatMapIndexed$1.L$0;
                sequenceScope = $this$sequence;
                index = 0;
                it = sequencesKt__SequencesKt$flatMapIndexed$1.$source.iterator();
                break;
            case 1:
                sequencesKt__SequencesKt$flatMapIndexed$1 = this;
                index = sequencesKt__SequencesKt$flatMapIndexed$1.I$0;
                it = (Iterator) sequencesKt__SequencesKt$flatMapIndexed$1.L$1;
                sequenceScope = (SequenceScope) sequencesKt__SequencesKt$flatMapIndexed$1.L$0;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object next = it.next();
            Function2 function2 = sequencesKt__SequencesKt$flatMapIndexed$1.$transform;
            int i = index + 1;
            if (index < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Object result = function2.invoke(Boxing.boxInt(index), next);
            Iterator it2 = (Iterator) sequencesKt__SequencesKt$flatMapIndexed$1.$iterator.invoke(result);
            sequencesKt__SequencesKt$flatMapIndexed$1.L$0 = sequenceScope;
            sequencesKt__SequencesKt$flatMapIndexed$1.L$1 = it;
            sequencesKt__SequencesKt$flatMapIndexed$1.I$0 = i;
            sequencesKt__SequencesKt$flatMapIndexed$1.label = 1;
            Object result2 = sequenceScope.yieldAll(it2, sequencesKt__SequencesKt$flatMapIndexed$1);
            if (result2 == coroutine_suspended) {
                return coroutine_suspended;
            }
            index = i;
        }
        return Unit.INSTANCE;
    }
}
