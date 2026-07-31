package androidx.glance.appwidget;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidgetManager$getGlanceIds$1 extends ContinuationImpl {
    public GlanceAppWidgetManager L$0;
    public Class L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ GlanceAppWidgetManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidgetManager$getGlanceIds$1(GlanceAppWidgetManager glanceAppWidgetManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = glanceAppWidgetManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getGlanceIds(null, this);
    }
}
