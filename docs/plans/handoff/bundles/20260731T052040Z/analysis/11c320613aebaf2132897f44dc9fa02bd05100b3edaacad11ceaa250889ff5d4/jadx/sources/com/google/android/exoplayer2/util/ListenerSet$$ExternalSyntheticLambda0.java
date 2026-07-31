package com.google.android.exoplayer2.util;

import android.R;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Message;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import java.util.Iterator;
import org.schabi.newpipe.util.Localization;
import us.shandian.giga.get.DownloadMission;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListenerSet$$ExternalSyntheticLambda0 implements Handler.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ListenerSet$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMessage;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                handleMessage = ((ListenerSet) obj).handleMessage(message);
                return handleMessage;
            default:
                DownloadManagerService downloadManagerService = (DownloadManagerService) obj;
                SparseArrayCompat sparseArrayCompat = downloadManagerService.mFailedDownloads;
                int i2 = 1;
                if (downloadManagerService.mHandler != null) {
                    DownloadMission downloadMission = (DownloadMission) message.obj;
                    int i3 = message.what;
                    int i4 = -1;
                    int i5 = 0;
                    if (i3 == 0) {
                        downloadManagerService.updateForegroundState(true);
                    } else if (i3 == 1) {
                        downloadManagerService.updateForegroundState(downloadManagerService.mManager.getRunningMissionsCount() > 0);
                    } else if (i3 == 2) {
                        downloadManagerService.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", downloadMission.storage.getUri()));
                        String name = downloadMission.storage.getName();
                        if (downloadManagerService.mDownloadNotificationEnable && downloadManagerService.mNotificationManager != null) {
                            if (downloadManagerService.downloadDoneNotification == null) {
                                downloadManagerService.downloadDoneList = new StringBuilder(name.length());
                                downloadManagerService.icDownloadDone = BitmapFactory.decodeResource(downloadManagerService.getResources(), R.drawable.stat_sys_download_done);
                                NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(downloadManagerService, downloadManagerService.getString(org.schabi.newpipe.R.string.notification_channel_id));
                                notificationCompat$Builder.setFlag(16, true);
                                notificationCompat$Builder.setLargeIcon(downloadManagerService.icDownloadDone);
                                Notification notification = notificationCompat$Builder.mNotification;
                                notification.icon = R.drawable.stat_sys_download_done;
                                Intent action = new Intent(downloadManagerService, (Class<?>) DownloadManagerService.class).setAction("org.schabi.newpipe.reset_download_finished");
                                notification.deleteIntent = PendingIntent.getService(downloadManagerService, action.hashCode(), action, 201326592);
                                Intent action2 = new Intent(downloadManagerService, (Class<?>) DownloadManagerService.class).setAction("org.schabi.newpipe.open_downloads_finished");
                                notificationCompat$Builder.mContentIntent = PendingIntent.getService(downloadManagerService, action2.hashCode(), action2, 201326592);
                                downloadManagerService.downloadDoneNotification = notificationCompat$Builder;
                            }
                            int i6 = downloadManagerService.downloadDoneCount + 1;
                            downloadManagerService.downloadDoneCount = i6;
                            StringBuilder sb = downloadManagerService.downloadDoneList;
                            if (i6 == 1) {
                                sb.append(name);
                                downloadManagerService.downloadDoneNotification.setContentTitle(null);
                                NotificationCompat$Builder notificationCompat$Builder2 = downloadManagerService.downloadDoneNotification;
                                long j = downloadManagerService.downloadDoneCount;
                                notificationCompat$Builder2.setContentText(Localization.getQuantity(downloadManagerService, org.schabi.newpipe.R.plurals.download_finished_notification, 0, j, Localization.shortCount(downloadManagerService, j)));
                                NotificationCompat$Builder notificationCompat$Builder3 = downloadManagerService.downloadDoneNotification;
                                NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(i2);
                                long j2 = downloadManagerService.downloadDoneCount;
                                notificationCompat$InboxStyle.mBigContentTitle = NotificationCompat$Builder.limitCharSequenceLength(Localization.getQuantity(downloadManagerService, org.schabi.newpipe.R.plurals.download_finished_notification, 0, j2, Localization.shortCount(downloadManagerService, j2)));
                                notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(name);
                                notificationCompat$Builder3.setStyle(notificationCompat$InboxStyle);
                            } else {
                                sb.append('\n');
                                downloadManagerService.downloadDoneList.append(name);
                                NotificationCompat$Builder notificationCompat$Builder4 = downloadManagerService.downloadDoneNotification;
                                NotificationCompat$InboxStyle notificationCompat$InboxStyle2 = new NotificationCompat$InboxStyle(i2);
                                notificationCompat$InboxStyle2.mTexts = NotificationCompat$Builder.limitCharSequenceLength(downloadManagerService.downloadDoneList);
                                notificationCompat$Builder4.setStyle(notificationCompat$InboxStyle2);
                                NotificationCompat$Builder notificationCompat$Builder5 = downloadManagerService.downloadDoneNotification;
                                long j3 = downloadManagerService.downloadDoneCount;
                                notificationCompat$Builder5.setContentTitle(Localization.getQuantity(downloadManagerService, org.schabi.newpipe.R.plurals.download_finished_notification, 0, j3, Localization.shortCount(downloadManagerService, j3)));
                                downloadManagerService.downloadDoneNotification.setContentText(downloadManagerService.downloadDoneList);
                            }
                            downloadManagerService.mNotificationManager.notify(1001, downloadManagerService.downloadDoneNotification.build());
                        }
                        downloadManagerService.mManager.setFinished(downloadMission);
                        downloadManagerService.handleConnectivityState(false);
                        downloadManagerService.updateForegroundState(downloadManagerService.mManager.runMissions());
                    } else if (i3 == 3) {
                        if (downloadManagerService.mDownloadNotificationEnable) {
                            if (sparseArrayCompat.garbage) {
                                ArraySetKt.access$gc(sparseArrayCompat);
                            }
                            int i7 = sparseArrayCompat.size;
                            int i8 = 0;
                            while (true) {
                                if (i8 >= i7) {
                                    i8 = -1;
                                } else if (sparseArrayCompat.values[i8] != downloadMission) {
                                    i8++;
                                }
                            }
                            if (i8 < 0) {
                                int i9 = downloadManagerService.downloadFailedNotificationID;
                                downloadManagerService.downloadFailedNotificationID = i9 + 1;
                                sparseArrayCompat.put(i9, downloadMission);
                                if (downloadManagerService.downloadFailedNotification == null) {
                                    downloadManagerService.icDownloadFailed = BitmapFactory.decodeResource(downloadManagerService.getResources(), R.drawable.stat_sys_warning);
                                    NotificationCompat$Builder notificationCompat$Builder6 = new NotificationCompat$Builder(downloadManagerService, downloadManagerService.getString(org.schabi.newpipe.R.string.notification_channel_id));
                                    notificationCompat$Builder6.setFlag(16, true);
                                    notificationCompat$Builder6.setLargeIcon(downloadManagerService.icDownloadFailed);
                                    notificationCompat$Builder6.mNotification.icon = R.drawable.stat_sys_warning;
                                    notificationCompat$Builder6.mContentIntent = downloadManagerService.mOpenDownloadList;
                                    downloadManagerService.downloadFailedNotification = notificationCompat$Builder6;
                                }
                                downloadManagerService.downloadFailedNotification.setContentTitle(downloadManagerService.getString(org.schabi.newpipe.R.string.download_failed));
                                downloadManagerService.downloadFailedNotification.setContentText(downloadMission.storage.getName());
                                NotificationCompat$Builder notificationCompat$Builder7 = downloadManagerService.downloadFailedNotification;
                                NotificationCompat$InboxStyle notificationCompat$InboxStyle3 = new NotificationCompat$InboxStyle(i2);
                                notificationCompat$InboxStyle3.mTexts = NotificationCompat$Builder.limitCharSequenceLength(downloadMission.storage.getName());
                                notificationCompat$Builder7.setStyle(notificationCompat$InboxStyle3);
                                downloadManagerService.mNotificationManager.notify(i9, downloadManagerService.downloadFailedNotification.build());
                            }
                        }
                        downloadManagerService.handleConnectivityState(false);
                        downloadManagerService.updateForegroundState(downloadManagerService.mManager.runMissions());
                    }
                    if (message.what != 3) {
                        if (sparseArrayCompat.garbage) {
                            ArraySetKt.access$gc(sparseArrayCompat);
                        }
                        int i10 = sparseArrayCompat.size;
                        while (true) {
                            if (i5 < i10) {
                                if (sparseArrayCompat.values[i5] == downloadMission) {
                                    i4 = i5;
                                } else {
                                    i5++;
                                }
                            }
                        }
                        int binarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.size, i4, sparseArrayCompat.keys);
                        if (binarySearch >= 0) {
                            Object[] objArr = sparseArrayCompat.values;
                            Object obj2 = objArr[binarySearch];
                            Object obj3 = ArraySetKt.DELETED$1;
                            if (obj2 != obj3) {
                                objArr[binarySearch] = obj3;
                                sparseArrayCompat.garbage = true;
                            }
                        }
                    }
                    Iterator it = downloadManagerService.mEchoObservers.iterator();
                    while (it.hasNext()) {
                        ((Handler.Callback) it.next()).handleMessage(message);
                    }
                }
                return true;
        }
    }
}
