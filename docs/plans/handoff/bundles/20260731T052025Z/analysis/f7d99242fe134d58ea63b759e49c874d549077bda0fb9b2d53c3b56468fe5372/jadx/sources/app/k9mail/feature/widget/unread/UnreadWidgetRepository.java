package app.k9mail.feature.widget.unread;

import android.content.Context;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetRepository {
    public final Context context;
    public final UnreadWidgetDataProvider dataRetriever;
    public final UnreadWidgetMigrations migrations;

    public UnreadWidgetRepository(Context context, UnreadWidgetDataProvider unreadWidgetDataProvider, UnreadWidgetMigrations unreadWidgetMigrations) {
        this.context = context;
        this.dataRetriever = unreadWidgetDataProvider;
        this.migrations = unreadWidgetMigrations;
    }
}
