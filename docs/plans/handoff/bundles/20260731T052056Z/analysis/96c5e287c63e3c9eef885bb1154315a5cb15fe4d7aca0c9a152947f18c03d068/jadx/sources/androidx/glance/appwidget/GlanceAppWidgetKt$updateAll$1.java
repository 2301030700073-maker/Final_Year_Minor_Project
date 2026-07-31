package androidx.glance.appwidget;

import android.content.Context;
import androidx.room.Room;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidgetKt$updateAll$1 extends ContinuationImpl {
    public ReadingChallengeWidget L$0;
    public Context L$1;
    public Iterator L$2;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Room.updateAll(null, null, this);
    }
}
