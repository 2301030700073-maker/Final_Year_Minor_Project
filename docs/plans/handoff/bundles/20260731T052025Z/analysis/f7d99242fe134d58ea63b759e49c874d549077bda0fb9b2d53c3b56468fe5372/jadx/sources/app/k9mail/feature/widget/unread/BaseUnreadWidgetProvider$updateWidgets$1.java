package app.k9mail.feature.widget.unread;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import com.fsck.k9.provider.UnreadWidgetProvider;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaseUnreadWidgetProvider$updateWidgets$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public Context L$0;
    public AppWidgetManager L$1;
    public int[] L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ UnreadWidgetProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseUnreadWidgetProvider$updateWidgets$1(UnreadWidgetProvider unreadWidgetProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = unreadWidgetProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UnreadWidgetProvider.access$updateWidgets(this.this$0, null, null, null, this);
    }
}
