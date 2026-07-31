package org.wikipedia.settings.dev.playground;

import android.content.Context;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ int $finalYear;
    public final /* synthetic */ int $size;
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public int I$4;
    public Ref$IntRef L$0;
    public CategoryDeveloperPlayGroundViewModel L$1;
    public ArrayList L$2;
    public int label;
    public final /* synthetic */ CategoryDeveloperPlayGroundViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1(int i, CategoryDeveloperPlayGroundViewModel categoryDeveloperPlayGroundViewModel, int i2, Context context, Continuation continuation) {
        super(2, continuation);
        this.$size = i;
        this.this$0 = categoryDeveloperPlayGroundViewModel;
        this.$finalYear = i2;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1(this.$size, this.this$0, this.$finalYear, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x017e, code lost:
    
        if (kotlinx.coroutines.AwaitKt.withContext(r3, r4, r20) != r2) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e A[Catch: Exception -> 0x003a, TryCatch #1 {Exception -> 0x003a, blocks: (B:13:0x0031, B:15:0x0134, B:16:0x014c, B:18:0x005e, B:20:0x0068, B:21:0x007b, B:23:0x0082, B:25:0x009b, B:26:0x009f, B:28:0x00ac, B:29:0x00b0, B:32:0x00ef, B:33:0x00f8, B:36:0x00fa, B:37:0x0103, B:39:0x0104, B:45:0x0157, B:47:0x0040, B:50:0x0050), top: B:2:0x000c, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0157 A[Catch: Exception -> 0x003a, TRY_LEAVE, TryCatch #1 {Exception -> 0x003a, blocks: (B:13:0x0031, B:15:0x0134, B:16:0x014c, B:18:0x005e, B:20:0x0068, B:21:0x007b, B:23:0x0082, B:25:0x009b, B:26:0x009f, B:28:0x00ac, B:29:0x00b0, B:32:0x00ef, B:33:0x00f8, B:36:0x00fa, B:37:0x0103, B:39:0x0104, B:45:0x0157, B:47:0x0040, B:50:0x0050), top: B:2:0x000c, inners: #0, #2 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x012f -> B:15:0x0134). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0144 -> B:16:0x014c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
