package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import com.android.volley.BuildConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: _Sequences.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1", f = "_Sequences.kt", i = {0}, l = {2143, 2148}, m = "invokeSuspend", n = {"$this$sequence"}, s = {"L$0"})
/* loaded from: classes.dex */
final class SequencesKt___SequencesKt$runningFoldIndexed$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function3 $operation;
    final /* synthetic */ Sequence $this_runningFoldIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningFoldIndexed$1(Sequence sequence, Object obj, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_runningFoldIndexed = sequence;
        this.$initial = obj;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        SequencesKt___SequencesKt$runningFoldIndexed$1 sequencesKt___SequencesKt$runningFoldIndexed$1 = new SequencesKt___SequencesKt$runningFoldIndexed$1(this.$this_runningFoldIndexed, this.$initial, this.$operation, completion);
        sequencesKt___SequencesKt$runningFoldIndexed$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFoldIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningFoldIndexed$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.label
            switch(r1) {
                case 0: goto L2b;
                case 1: goto L22;
                case 2: goto L11;
                default: goto L9;
            }
        L9:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L11:
            r1 = r10
            int r2 = r1.I$0
            java.lang.Object r3 = r1.L$2
            java.util.Iterator r3 = (java.util.Iterator) r3
            java.lang.Object r4 = r1.L$1
            java.lang.Object r5 = r1.L$0
            kotlin.sequences.SequenceScope r5 = (kotlin.sequences.SequenceScope) r5
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7c
        L22:
            r1 = r10
            java.lang.Object r2 = r1.L$0
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L41
        L2b:
            kotlin.ResultKt.throwOnFailure(r11)
            r1 = r10
            java.lang.Object r2 = r1.L$0
            kotlin.sequences.SequenceScope r2 = (kotlin.sequences.SequenceScope) r2
            java.lang.Object r3 = r1.$initial
            r1.L$0 = r2
            r4 = 1
            r1.label = r4
            java.lang.Object r3 = r2.yield(r3, r1)
            if (r3 != r0) goto L41
            return r0
        L41:
            r3 = 0
            java.lang.Object r4 = r1.$initial
            kotlin.sequences.Sequence r5 = r1.$this_runningFoldIndexed
            java.util.Iterator r5 = r5.iterator()
            r9 = r5
            r5 = r2
            r2 = r3
            r3 = r9
        L4e:
            boolean r6 = r3.hasNext()
            if (r6 == 0) goto L7e
            java.lang.Object r6 = r3.next()
            kotlin.jvm.functions.Function3 r7 = r1.$operation
            int r8 = r2 + 1
            if (r2 >= 0) goto L61
            kotlin.collections.CollectionsKt.throwIndexOverflow()
        L61:
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r2)
            java.lang.Object r4 = r7.invoke(r2, r4, r6)
            r1.L$0 = r5
            r1.L$1 = r4
            r1.L$2 = r3
            r1.I$0 = r8
            r2 = 2
            r1.label = r2
            java.lang.Object r2 = r5.yield(r4, r1)
            if (r2 != r0) goto L7b
            return r0
        L7b:
            r2 = r8
        L7c:
            goto L4e
        L7e:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
