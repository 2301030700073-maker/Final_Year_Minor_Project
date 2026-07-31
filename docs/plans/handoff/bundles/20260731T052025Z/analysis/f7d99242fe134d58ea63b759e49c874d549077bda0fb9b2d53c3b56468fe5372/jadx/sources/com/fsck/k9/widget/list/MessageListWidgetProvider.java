package com.fsck.k9.widget.list;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import androidx.core.app.NavUtils;
import app.k9mail.feature.widget.message.list.MessageListWidgetManager;
import app.k9mail.feature.widget.message.list.MessageListWidgetService;
import coil3.disk.DiskLruCache;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.resources.K9CoreResourceProvider;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListWidgetProvider extends AppWidgetProvider implements KoinComponent {
    public final Lazy coreResourceProvider$delegate;
    public final Lazy messageListWidgetManager$delegate;

    public MessageListWidgetProvider() {
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(this, 1);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.messageListWidgetManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        this.coreResourceProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(this, 2));
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDisabled(Context context) {
        context.getClass();
        MessageListWidgetManager messageListWidgetManager = (MessageListWidgetManager) this.messageListWidgetManager$delegate.getValue();
        messageListWidgetManager.getClass();
        Log.v("Message list widget removed", new Object[0]);
        if (messageListWidgetManager.getAppWidgetIds().length == 0) {
            synchronized (messageListWidgetManager) {
                if (messageListWidgetManager.listenerAdded) {
                    messageListWidgetManager.listenerAdded = false;
                    messageListWidgetManager.messageListRepository.removeListener(messageListWidgetManager.listener);
                    Log.v("Message list widget stopped listening for message list changes.", new Object[0]);
                }
            }
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        context.getClass();
        MessageListWidgetManager messageListWidgetManager = (MessageListWidgetManager) this.messageListWidgetManager$delegate.getValue();
        messageListWidgetManager.getClass();
        Log.v("Message list widget added", new Object[0]);
        messageListWidgetManager.registerMessageListChangedListener();
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        context.getClass();
        appWidgetManager.getClass();
        iArr.getClass();
        for (int i : iArr) {
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.message_list_widget_layout);
            remoteViews.setTextViewText(R.id.folder, context.getString(R.string.message_list_widget_inbox_title));
            remoteViews.setRemoteAdapter(R.id.listView, new Intent(context, (Class<?>) MessageListWidgetService.class));
            Lazy lazy = MessageHomeActivity.coreResourceProvider$delegate;
            PendingIntent activity = NavUtils.getActivity(context, 1, MessageHomeActivity.Companion.actionDisplayMessageTemplateIntent(context, true, true), 134217728, true);
            activity.getClass();
            remoteViews.setPendingIntentTemplate(R.id.listView, activity);
            Intent intent = new Intent(context, (Class<?>) MessageCompose.class);
            intent.setAction("com.fsck.k9.intent.action.COMPOSE");
            PendingIntent activity2 = NavUtils.getActivity(context, 0, intent, 134217728, false);
            activity2.getClass();
            remoteViews.setOnClickPendingIntent(R.id.new_message, activity2);
            Lazy lazy2 = this.coreResourceProvider$delegate;
            ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersTitle();
            ((K9CoreResourceProvider) lazy2.getValue()).searchUnifiedFoldersDetail();
            LocalMessageSearch localMessageSearch = new LocalMessageSearch();
            localMessageSearch.id = "unified_folders";
            localMessageSearch.and(MessageSearchField.INTEGRATE, DiskLruCache.VERSION, SearchAttribute.EQUALS);
            PendingIntent activity3 = NavUtils.getActivity(context, -1, MessageHomeActivity.Companion.intentDisplaySearch(context, localMessageSearch, true, true), 134217728, false);
            activity3.getClass();
            remoteViews.setOnClickPendingIntent(R.id.top_controls, activity3);
            appWidgetManager.updateAppWidget(i, remoteViews);
        }
    }
}
