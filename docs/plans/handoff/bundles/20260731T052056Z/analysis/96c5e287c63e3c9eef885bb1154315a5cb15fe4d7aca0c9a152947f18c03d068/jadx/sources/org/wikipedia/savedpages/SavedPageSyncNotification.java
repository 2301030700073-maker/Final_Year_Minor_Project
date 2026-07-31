package org.wikipedia.savedpages;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat$Builder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.views.NotificationWithProgressBar;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/savedpages/SavedPageSyncNotification;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SavedPageSyncNotification extends BroadcastReceiver {
    public static final SavedPageSyncNotification instance = new SavedPageSyncNotification();
    public final NotificationWithProgressBar notification;

    public SavedPageSyncNotification() {
        NotificationWithProgressBar notificationWithProgressBar = new NotificationWithProgressBar();
        this.notification = notificationWithProgressBar;
        NotificationCategory notificationCategory = NotificationCategory.SYNCING;
        notificationCategory.getClass();
        notificationWithProgressBar.notificationCategory = notificationCategory;
        notificationWithProgressBar.notificationId = 1001;
        notificationWithProgressBar.notificationTitle = R.plurals.notification_syncing_title;
        notificationWithProgressBar.notificationDescription = R.plurals.notification_syncing_description;
        notificationWithProgressBar.isEnableCancelButton = true;
        notificationWithProgressBar.isEnablePauseButton = true;
        notificationWithProgressBar.targetClass = SavedPageSyncNotification.class;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        intent.getClass();
        boolean booleanExtra = intent.getBooleanExtra("syncCancel", false);
        SavedPageSyncNotification savedPageSyncNotification = instance;
        if (booleanExtra) {
            if (savedPageSyncNotification.notification.isPaused) {
                ReadingListFragment.MultiSelectCallback.enqueue();
            }
            NotificationWithProgressBar notificationWithProgressBar = savedPageSyncNotification.notification;
            notificationWithProgressBar.isCanceled = true;
            notificationWithProgressBar.isPaused = false;
            return;
        }
        if (intent.getBooleanExtra("syncPauseResume", false)) {
            NotificationWithProgressBar notificationWithProgressBar2 = savedPageSyncNotification.notification;
            notificationWithProgressBar2.isCanceled = false;
            if (!notificationWithProgressBar2.isPaused) {
                notificationWithProgressBar2.isPaused = true;
            } else {
                notificationWithProgressBar2.isPaused = false;
                ReadingListFragment.MultiSelectCallback.enqueue();
            }
        }
    }

    public final void setNotificationPaused(Context context, int i, int i2) {
        NotificationManager notificationManager;
        NotificationWithProgressBar notificationWithProgressBar = this.notification;
        notificationWithProgressBar.getClass();
        NotificationCategory notificationCategory = notificationWithProgressBar.notificationCategory;
        if (notificationCategory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationCategory");
            throw null;
        }
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, notificationCategory.getId());
        notificationWithProgressBar.build(context, notificationCompat$Builder, i, i2);
        notificationCompat$Builder.mProgressMax = i;
        notificationCompat$Builder.mProgress = i2;
        notificationCompat$Builder.mProgressIndeterminate = true;
        if (notificationWithProgressBar.isCanceled || (notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class)) == null) {
            return;
        }
        notificationManager.notify(notificationWithProgressBar.notificationId, notificationCompat$Builder.build());
    }
}
