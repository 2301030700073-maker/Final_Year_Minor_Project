package org.wikipedia.readinglist.sync;

import org.wikipedia.R;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.views.NotificationWithProgressBar;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListSyncNotification {
    public static final ReadingListSyncNotification instance = new ReadingListSyncNotification();
    public final NotificationWithProgressBar notification;

    public ReadingListSyncNotification() {
        NotificationWithProgressBar notificationWithProgressBar = new NotificationWithProgressBar();
        this.notification = notificationWithProgressBar;
        NotificationCategory notificationCategory = NotificationCategory.READING_LIST_SYNCING;
        notificationCategory.getClass();
        notificationWithProgressBar.notificationCategory = notificationCategory;
        notificationWithProgressBar.notificationId = 1002;
        notificationWithProgressBar.notificationTitle = R.plurals.notification_syncing_reading_list_title;
        notificationWithProgressBar.notificationDescription = R.plurals.notification_syncing_reading_list_description;
    }
}
