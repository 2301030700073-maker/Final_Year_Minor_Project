package org.wikipedia.page;

import com.google.gson.GsonBuilder;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import retrofit2.Response;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragmentLoadState$pageLoad$3 extends SuspendLambda implements Function2 {
    public int I$0;
    public /* synthetic */ Object L$0;
    public PageTitle L$1;
    public PageViewModel L$2;
    public DeferredCoroutine L$3;
    public Deferred L$4;
    public Response L$5;
    public MwQueryResponse L$6;
    public String L$8;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ GsonBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFragmentLoadState$pageLoad$3(GsonBuilder gsonBuilder, Continuation continuation) {
        super(2, continuation);
        this.this$0 = gsonBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PageFragmentLoadState$pageLoad$3 pageFragmentLoadState$pageLoad$3 = new PageFragmentLoadState$pageLoad$3(this.this$0, continuation);
        pageFragmentLoadState$pageLoad$3.L$0 = obj;
        return pageFragmentLoadState$pageLoad$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFragmentLoadState$pageLoad$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:247:0x00b1, code lost:
    
        if (r13 == r2) goto L214;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x055e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x05e3  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01d7  */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14, types: [java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r11v15, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r11v16, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v26, types: [org.wikipedia.categories.db.CategoryDao_Impl] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object, kotlinx.coroutines.Deferred, kotlinx.coroutines.DeferredCoroutine, org.wikipedia.page.PageViewModel, retrofit2.Response] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlin.coroutines.Continuation, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r45) {
        /*
            Method dump skipped, instructions count: 1515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageFragmentLoadState$pageLoad$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
