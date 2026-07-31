package org.wikipedia.page.linkpreview;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkPreviewViewModel$loadGallery$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ LinkPreviewViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LinkPreviewViewModel$loadGallery$2(LinkPreviewViewModel linkPreviewViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = linkPreviewViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        LinkPreviewViewModel linkPreviewViewModel = this.this$0;
        switch (i) {
            case 0:
                return new LinkPreviewViewModel$loadGallery$2(linkPreviewViewModel, continuation, 0);
            case 1:
                return new LinkPreviewViewModel$loadGallery$2(linkPreviewViewModel, continuation, 1);
            default:
                return new LinkPreviewViewModel$loadGallery$2(linkPreviewViewModel, continuation, 2);
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
        return ((LinkPreviewViewModel$loadGallery$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x014b, code lost:
    
        if (r1 == r5) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00b8, code lost:
    
        if (r1 == r5) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.linkpreview.LinkPreviewViewModel$loadGallery$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
