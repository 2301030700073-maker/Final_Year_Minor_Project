package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 implements Flow {
    public final /* synthetic */ Function3 $action$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_catch$inlined;

    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public FlowCollector L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public /* synthetic */ FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(Flow flow, Function3 function3, int i) {
        this.$r8$classId = i;
        this.$this_catch$inlined = flow;
        this.$action$inlined = function3;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:3|(2:5|(10:7|8|9|(1:(1:(1:(5:14|15|16|17|18)(2:24|25))(2:26|27))(2:28|29))(2:41|42)|30|31|32|(3:34|17|18)|35|36))|49|8|9|(0)(0)|30|31|32|(0)|35|36) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006d, code lost:
    
        if (r5.collect(r1, r3) == r8) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
    
        r0 = new kotlinx.coroutines.flow.ThrowingCollector(r0);
        r3.L$2 = null;
        r3.L$3 = r0;
        r3.I$0 = r6;
        r3.label = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a4, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.access$invokeSafely$FlowKt__EmittersKt(r0, r12, r0, r3) != r8) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e7, code lost:
    
        if (r0 == r8) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00da  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
