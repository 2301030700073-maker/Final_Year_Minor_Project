package org.wikipedia.commons;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.gallery.ImageInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImagePreviewViewModel$loadImageInfo$1 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object L$0;
    public Ref$BooleanRef L$1;
    public Ref$ObjectRef L$2;
    public Object L$3;
    public ImageInfo L$4;
    public MwQueryPage L$6;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ ImagePreviewViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImagePreviewViewModel$loadImageInfo$1(ImagePreviewViewModel imagePreviewViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = imagePreviewViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImagePreviewViewModel$loadImageInfo$1 imagePreviewViewModel$loadImageInfo$1 = new ImagePreviewViewModel$loadImageInfo$1(this.this$0, continuation);
        imagePreviewViewModel$loadImageInfo$1.L$0 = obj;
        return imagePreviewViewModel$loadImageInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImagePreviewViewModel$loadImageInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bf  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.commons.ImagePreviewViewModel$loadImageInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
