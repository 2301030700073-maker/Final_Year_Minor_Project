package org.wikipedia.activitytab;

import j$.time.LocalDateTime;
import java.io.Serializable;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityTabViewModel$loadReadingHistory$2 extends SuspendLambda implements Function2 {
    public int I$0;
    public int I$1;
    public long J$0;
    public long J$1;
    public long J$2;
    public long J$3;
    public long J$4;
    public List L$0;
    public Serializable L$1;
    public List L$2;
    public LocalDateTime L$3;
    public int label;
    public final /* synthetic */ ActivityTabViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTabViewModel$loadReadingHistory$2(ActivityTabViewModel activityTabViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = activityTabViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ActivityTabViewModel$loadReadingHistory$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ActivityTabViewModel$loadReadingHistory$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a2, code lost:
    
        if (r3 == r2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015f, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(500, r35) == r2) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x03c9 A[LOOP:0: B:24:0x03c3->B:26:0x03c9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ee  */
    /* JADX WARN: Type inference failed for: r15v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v27, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x028c -> B:55:0x0293). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r36) {
        /*
            Method dump skipped, instructions count: 1284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ActivityTabViewModel$loadReadingHistory$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
