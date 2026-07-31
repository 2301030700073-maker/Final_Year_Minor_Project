package org.wikipedia.commons;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageTagsProvider$getImageTags$1 extends ContinuationImpl {
    public int I$0;
    public String L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ImageTagsProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageTagsProvider$getImageTags$1(ImageTagsProvider imageTagsProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = imageTagsProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getImageTags(0, null, this);
    }
}
