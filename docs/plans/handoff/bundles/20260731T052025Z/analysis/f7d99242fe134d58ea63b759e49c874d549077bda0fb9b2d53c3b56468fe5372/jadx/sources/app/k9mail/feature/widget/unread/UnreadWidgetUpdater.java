package app.k9mail.feature.widget.unread;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import app.k9mail.widget.K9UnreadWidgetConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetUpdater {
    public final AppWidgetManager appWidgetManager;
    public final Context context;

    public UnreadWidgetUpdater(Context context, K9UnreadWidgetConfig k9UnreadWidgetConfig) {
        this.context = context;
        this.appWidgetManager = AppWidgetManager.getInstance(context);
    }
}
