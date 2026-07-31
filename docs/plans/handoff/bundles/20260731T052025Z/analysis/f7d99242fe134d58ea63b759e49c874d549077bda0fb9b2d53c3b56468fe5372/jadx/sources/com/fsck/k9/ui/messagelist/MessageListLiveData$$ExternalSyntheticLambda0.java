package com.fsck.k9.ui.messagelist;

import android.appwidget.AppWidgetManager;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import app.k9mail.feature.widget.message.list.MessageListWidgetManager;
import app.k9mail.legacy.mailstore.MessageListChangedListener;
import com.fsck.k9.R;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListLiveData$$ExternalSyntheticLambda0 implements MessageListChangedListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MessageListLiveData$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // app.k9mail.legacy.mailstore.MessageListChangedListener
    public final void onMessageListChanged() {
        AppWidgetManager appWidgetManager;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                MessageListLiveData messageListLiveData = (MessageListLiveData) obj;
                CloseableCoroutineScope closeableCoroutineScope = messageListLiveData.coroutineScope;
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                JobKt.launch$default(closeableCoroutineScope, MainDispatcherLoader.dispatcher, null, new BlockRunner$cancel$1(messageListLiveData, null, 18), 2);
                break;
            default:
                MessageListWidgetManager messageListWidgetManager = (MessageListWidgetManager) obj;
                try {
                    int[] appWidgetIds = messageListWidgetManager.getAppWidgetIds();
                    if (appWidgetIds.length != 0 && (appWidgetManager = messageListWidgetManager.appWidgetManager) != null) {
                        appWidgetManager.notifyAppWidgetViewDataChanged(appWidgetIds, R.id.listView);
                        break;
                    }
                } catch (RuntimeException e) {
                    Log.e(e, "Error while updating message list widget", new Object[0]);
                }
                break;
        }
    }
}
