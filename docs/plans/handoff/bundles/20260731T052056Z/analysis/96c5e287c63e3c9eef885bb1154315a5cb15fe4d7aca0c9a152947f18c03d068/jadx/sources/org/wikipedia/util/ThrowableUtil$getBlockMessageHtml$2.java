package org.wikipedia.util;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwServiceError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThrowableUtil$getBlockMessageHtml$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ MwServiceError.BlockInfo $blockInfo;
    public final /* synthetic */ Ref$ObjectRef $html;
    public final /* synthetic */ WikiSite $wikiSite;
    public /* synthetic */ Object L$0;
    public Deferred L$1;
    public DeferredCoroutine L$3;
    public Ref$ObjectRef L$4;
    public ShareUtil L$5;
    public String L$6;
    public MwServiceError.BlockInfo L$7;
    public String L$8;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThrowableUtil$getBlockMessageHtml$2(Ref$ObjectRef ref$ObjectRef, MwServiceError.BlockInfo blockInfo, WikiSite wikiSite, Continuation continuation) {
        super(2, continuation);
        this.$html = ref$ObjectRef;
        this.$blockInfo = blockInfo;
        this.$wikiSite = wikiSite;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ThrowableUtil$getBlockMessageHtml$2 throwableUtil$getBlockMessageHtml$2 = new ThrowableUtil$getBlockMessageHtml$2(this.$html, this.$blockInfo, this.$wikiSite, continuation);
        throwableUtil$getBlockMessageHtml$2.L$0 = obj;
        return throwableUtil$getBlockMessageHtml$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThrowableUtil$getBlockMessageHtml$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00d7  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.ThrowableUtil$getBlockMessageHtml$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
