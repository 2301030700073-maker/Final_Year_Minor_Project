package app.k9mail.feature.widget.message.list;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import app.k9mail.widget.K9MessageListWidgetConfig;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.ui.messagelist.MessageListLiveData$$ExternalSyntheticLambda0;
import com.fsck.k9.widget.list.MessageListWidgetProvider;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListWidgetManager {
    public AppWidgetManager appWidgetManager;
    public final Context context;
    public final MessageListLiveData$$ExternalSyntheticLambda0 listener = new MessageListLiveData$$ExternalSyntheticLambda0(1, this);
    public boolean listenerAdded;
    public final DefaultMessageListRepository messageListRepository;

    public MessageListWidgetManager(Context context, DefaultMessageListRepository defaultMessageListRepository, K9MessageListWidgetConfig k9MessageListWidgetConfig) {
        this.context = context;
        this.messageListRepository = defaultMessageListRepository;
    }

    public final int[] getAppWidgetIds() {
        int[] appWidgetIds;
        ComponentName componentName = new ComponentName(this.context, (Class<?>) MessageListWidgetProvider.class);
        AppWidgetManager appWidgetManager = this.appWidgetManager;
        return (appWidgetManager == null || (appWidgetIds = appWidgetManager.getAppWidgetIds(componentName)) == null) ? new int[0] : appWidgetIds;
    }

    public final synchronized void registerMessageListChangedListener() {
        if (!this.listenerAdded) {
            this.listenerAdded = true;
            DefaultMessageListRepository defaultMessageListRepository = this.messageListRepository;
            defaultMessageListRepository.globalListeners.add(this.listener);
            Log.v("Message list widget is now listening for message list changes…", new Object[0]);
        }
    }
}
