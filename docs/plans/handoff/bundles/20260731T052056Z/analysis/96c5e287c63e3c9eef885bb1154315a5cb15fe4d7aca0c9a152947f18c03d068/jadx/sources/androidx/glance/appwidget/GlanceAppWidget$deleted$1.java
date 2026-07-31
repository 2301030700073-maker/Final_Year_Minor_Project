package androidx.glance.appwidget;

import android.content.Context;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidget$deleted$1 extends ContinuationImpl {
    public int I$0;
    public Object L$0;
    public Context L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingChallengeWidget this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidget$deleted$1(ReadingChallengeWidget readingChallengeWidget, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingChallengeWidget;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.deleted$glance_appwidget_release(null, 0, this);
    }
}
