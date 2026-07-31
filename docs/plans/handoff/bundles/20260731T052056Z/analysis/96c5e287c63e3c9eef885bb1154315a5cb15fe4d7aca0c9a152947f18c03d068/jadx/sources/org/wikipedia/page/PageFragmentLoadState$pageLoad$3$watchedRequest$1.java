package org.wikipedia.page;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragmentLoadState$pageLoad$3$watchedRequest$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $makeWatchRequest;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageTitle $title;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFragmentLoadState$pageLoad$3$watchedRequest$1(boolean z, PageTitle pageTitle, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$makeWatchRequest = z;
        this.$title = pageTitle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PageTitle pageTitle = this.$title;
        boolean z = this.$makeWatchRequest;
        switch (i) {
            case 0:
                return new PageFragmentLoadState$pageLoad$3$watchedRequest$1(z, pageTitle, continuation, 0);
            default:
                return new PageFragmentLoadState$pageLoad$3$watchedRequest$1(z, pageTitle, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((PageFragmentLoadState$pageLoad$3$watchedRequest$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d8, code lost:
    
        if (r10 == r0) goto L48;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageFragmentLoadState$pageLoad$3$watchedRequest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
