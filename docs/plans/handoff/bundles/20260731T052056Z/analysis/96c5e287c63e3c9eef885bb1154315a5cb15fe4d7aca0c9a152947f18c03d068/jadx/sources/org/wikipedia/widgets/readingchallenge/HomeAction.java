package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import androidx.glance.appwidget.action.ActionCallback;
import kotlin.Metadata;
import org.wikipedia.Constants;
import org.wikipedia.main.MainActivity;
import org.wikipedia.util.UriUtil;
import org.wikipedia.widgets.WidgetTypes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/HomeAction;", "Landroidx/glance/appwidget/action/ActionCallback;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HomeAction implements ActionCallback {
    @Override // androidx.glance.appwidget.action.ActionCallback
    public final void onAction(Context context) {
        int i = MainActivity.$r8$clinit;
        context.startActivity(UriUtil.newIntent(context).setFlags(268435456).putExtra("invokeSource", Constants.InvokeSource.WIDGET).putExtra("widgetType", WidgetTypes.READING_CHALLENGE.getValue()));
    }
}
