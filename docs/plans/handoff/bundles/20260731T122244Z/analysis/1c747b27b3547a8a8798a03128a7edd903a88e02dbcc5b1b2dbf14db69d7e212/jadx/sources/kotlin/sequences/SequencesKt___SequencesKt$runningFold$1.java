package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import com.android.volley.BuildConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: _Sequences.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", i = {0, 1}, l = {2115, 2119}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence"}, s = {"L$0", "L$0"})
/* loaded from: classes.dex */
final class SequencesKt___SequencesKt$runningFold$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function2 $operation;
    final /* synthetic */ Sequence $this_runningFold;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningFold$1(Sequence sequence, Object obj, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_runningFold = sequence;
        this.$initial = obj;
        this.$operation = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        SequencesKt___SequencesKt$runningFold$1 sequencesKt___SequencesKt$runningFold$1 = new SequencesKt___SequencesKt$runningFold$1(this.$this_runningFold, this.$initial, this.$operation, completion);
        sequencesKt___SequencesKt$runningFold$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFold$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningFold$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            switch(r1) {
                case 0: goto L29;
                case 1: goto L20;
                case 2: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L11:
            r1 = r8
            java.lang.Object r2 = r1.L$2
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r3 = r1.L$1
            java.lang.Object r4 = r1.L$0
            kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6b
        L20:
            r1 = r8
            java.lang.Object r2 = r1.L$0
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L3f
        L29:
            kotlin.ResultKt.throwOnFailure(r9)
            r1 = r8
            java.lang.Object r2 = r1.L$0
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            java.lang.Object r3 = r1.$initial
            r1.L$0 = r2
            r4 = 1
            r1.label = r4
            java.lang.Object r3 = r2.yield(r3, r1)
            if (r3 != r0) goto L3f
            return r0
        L3f:
            java.lang.Object r3 = r1.$initial
            kotlin.sequences.Sequence r4 = r1.$this_runningFold
            java.util.Iterator r4 = r4.iterator()
            r7 = r4
            r4 = r2
            r2 = r7
        L4a:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L6d
            java.lang.Object r5 = r2.next()
            kotlin.jvm.functions.Function2 r6 = r1.$operation
            java.lang.Object r6 = r6.invoke(r3, r5)
            r1.L$0 = r4
            r1.L$1 = r6
            r1.L$2 = r2
            r3 = 2
            r1.label = r3
            java.lang.Object r3 = r4.yield(r6, r1)
            if (r3 != r0) goto L6a
            return r0
        L6a:
            r3 = r6
        L6b:
            goto L4a
        L6d:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFold$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
