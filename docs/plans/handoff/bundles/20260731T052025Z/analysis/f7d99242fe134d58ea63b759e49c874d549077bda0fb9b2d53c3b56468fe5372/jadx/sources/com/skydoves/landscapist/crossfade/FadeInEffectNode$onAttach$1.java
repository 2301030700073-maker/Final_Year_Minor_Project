package com.skydoves.landscapist.crossfade;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FadeInEffectNode$onAttach$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ FadeInEffectNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FadeInEffectNode$onAttach$1(FadeInEffectNode fadeInEffectNode, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = fadeInEffectNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        FadeInEffectNode fadeInEffectNode = this.this$0;
        switch (i) {
            case 0:
                return new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, 0);
            case 1:
                return new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, 1);
            case 2:
                return new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, 2);
            case 3:
                return new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, 3);
            default:
                return new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((FadeInEffectNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((FadeInEffectNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((FadeInEffectNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((FadeInEffectNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((FadeInEffectNode$onAttach$1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        if (r0.snapTo(r1, r14) == r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        if (r0.snapTo(r5, r14) == r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
    
        if (r0.snapTo(r5, r14) == r10) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.crossfade.FadeInEffectNode$onAttach$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
