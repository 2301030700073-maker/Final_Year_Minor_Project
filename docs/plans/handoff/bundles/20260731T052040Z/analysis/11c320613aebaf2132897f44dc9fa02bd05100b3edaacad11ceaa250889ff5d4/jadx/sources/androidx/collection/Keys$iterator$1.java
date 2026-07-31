package androidx.collection;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Keys$iterator$1 extends RestrictedSuspendLambda implements Function2 {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ Keys this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Keys$iterator$1(Keys keys, Continuation continuation) {
        super(2, continuation);
        this.this$0 = keys;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        Keys$iterator$1 keys$iterator$1 = new Keys$iterator$1(this.this$0, continuation);
        keys$iterator$1.L$0 = obj;
        return keys$iterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Keys$iterator$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0065  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0050 -> B:14:0x0094). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0052 -> B:6:0x0063). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x006c -> B:5:0x008b). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            r19 = this;
            r0 = r19
            int r1 = r0.label
            r2 = 0
            r3 = 8
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 != r4) goto L26
            int r1 = r0.I$3
            int r5 = r0.I$2
            long r6 = r0.J$0
            int r8 = r0.I$1
            int r9 = r0.I$0
            java.lang.Object r10 = r0.L$2
            long[] r10 = (long[]) r10
            java.lang.Object r11 = r0.L$1
            java.lang.Object[] r11 = (java.lang.Object[]) r11
            java.lang.Object r12 = r0.L$0
            kotlin.sequences.SequenceBuilderIterator r12 = (kotlin.sequences.SequenceBuilderIterator) r12
            kotlin.ResultKt.throwOnFailure(r20)
            goto L8b
        L26:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            r0 = 0
            return r0
        L2d:
            kotlin.ResultKt.throwOnFailure(r20)
            java.lang.Object r1 = r0.L$0
            kotlin.sequences.SequenceBuilderIterator r1 = (kotlin.sequences.SequenceBuilderIterator) r1
            androidx.collection.Keys r5 = r0.this$0
            androidx.collection.MutableScatterMap r5 = r5.parent
            java.lang.Object[] r6 = r5.keys
            long[] r5 = r5.metadata
            int r7 = r5.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L99
            r8 = r2
        L42:
            r9 = r5[r8]
            long r11 = ~r9
            r13 = 7
            long r11 = r11 << r13
            long r11 = r11 & r9
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r11 = r11 & r13
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 == 0) goto L94
            int r11 = r8 - r7
            int r11 = ~r11
            int r11 = r11 >>> 31
            int r11 = 8 - r11
            r12 = r1
            r1 = r2
            r17 = r9
            r10 = r5
            r9 = r7
            r5 = r11
            r11 = r6
            r6 = r17
        L63:
            if (r1 >= r5) goto L8e
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r6
            r15 = 128(0x80, double:6.3E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L8b
            int r2 = r8 << 3
            int r2 = r2 + r1
            r2 = r11[r2]
            r0.L$0 = r12
            r0.L$1 = r11
            r0.L$2 = r10
            r0.I$0 = r9
            r0.I$1 = r8
            r0.J$0 = r6
            r0.I$2 = r5
            r0.I$3 = r1
            r0.label = r4
            r12.yield(r2, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            return r0
        L8b:
            long r6 = r6 >> r3
            int r1 = r1 + r4
            goto L63
        L8e:
            if (r5 != r3) goto L99
            r7 = r9
            r5 = r10
            r6 = r11
            r1 = r12
        L94:
            if (r8 == r7) goto L99
            int r8 = r8 + 1
            goto L42
        L99:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.Keys$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
