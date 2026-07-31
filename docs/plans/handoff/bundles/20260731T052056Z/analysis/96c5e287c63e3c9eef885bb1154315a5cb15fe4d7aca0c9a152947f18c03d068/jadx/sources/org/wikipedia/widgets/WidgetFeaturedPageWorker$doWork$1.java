package org.wikipedia.widgets;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.WikipediaApp;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidgetFeaturedPageWorker$doWork$1 extends ContinuationImpl {
    public WikipediaApp L$0;
    public PageTitle L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ WidgetFeaturedPageWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WidgetFeaturedPageWorker$doWork$1(WidgetFeaturedPageWorker widgetFeaturedPageWorker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = widgetFeaturedPageWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
