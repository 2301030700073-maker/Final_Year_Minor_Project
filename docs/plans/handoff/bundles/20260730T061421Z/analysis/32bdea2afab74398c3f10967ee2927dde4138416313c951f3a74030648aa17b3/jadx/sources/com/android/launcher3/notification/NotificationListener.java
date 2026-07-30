package com.android.launcher3.notification;

import android.annotation.TargetApi;
import android.app.Notification;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Collectors;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class NotificationListener extends NotificationListenerService {
    public static boolean sIsConnected;
    public static NotificationListener sNotificationListenerInstance;
    public static PopupDataProvider sNotificationsChangedListener;
    public String mLastKeyDismissedByLauncher;
    public SecureSettingsObserver mNotificationDotsObserver;
    public final NotificationListenerService.Ranking mTempRanking = new NotificationListenerService.Ranking();
    public final Map mNotificationGroupMap = new HashMap();
    public final Map mNotificationGroupKeyMap = new HashMap();
    public final Handler mWorkerHandler = new Handler(Executors.MODEL_EXECUTOR.getLooper(), new Handler.Callback() { // from class: c.a.a.O0.g
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return NotificationListener.b(NotificationListener.this, message);
        }
    });
    public final Handler mUiHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: c.a.a.O0.i
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            NotificationListener.c(NotificationListener.this, message);
            return true;
        }
    });

    public NotificationListener() {
        sNotificationListenerInstance = this;
    }

    public static boolean b(final NotificationListener notificationListener, Message message) {
        Object arrayList;
        Objects.requireNonNull(notificationListener);
        int i = message.what;
        if (i == 1) {
            StatusBarNotification statusBarNotification = (StatusBarNotification) message.obj;
            notificationListener.mUiHandler.obtainMessage(notificationListener.notificationIsValidForUI(statusBarNotification) ? 1 : 2, toKeyPair(statusBarNotification)).sendToTarget();
            return true;
        }
        if (i == 2) {
            StatusBarNotification statusBarNotification2 = (StatusBarNotification) message.obj;
            notificationListener.mUiHandler.obtainMessage(2, toKeyPair(statusBarNotification2)).sendToTarget();
            NotificationGroup notificationGroup = (NotificationGroup) notificationListener.mNotificationGroupMap.get(statusBarNotification2.getGroupKey());
            String key = statusBarNotification2.getKey();
            if (notificationGroup != null) {
                notificationGroup.mChildKeys.remove(key);
                if (notificationGroup.mChildKeys.isEmpty()) {
                    if (key.equals(notificationListener.mLastKeyDismissedByLauncher)) {
                        notificationListener.cancelNotification(notificationGroup.mGroupSummaryKey);
                    }
                    notificationListener.mNotificationGroupMap.remove(statusBarNotification2.getGroupKey());
                }
            }
            if (!key.equals(notificationListener.mLastKeyDismissedByLauncher)) {
                return true;
            }
            notificationListener.mLastKeyDismissedByLauncher = null;
            return true;
        }
        if (i == 3) {
            if (sIsConnected) {
                try {
                    arrayList = (List) Arrays.stream(notificationListener.getActiveNotifications()).filter(new Predicate() { // from class: c.a.a.O0.f
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            boolean notificationIsValidForUI;
                            notificationIsValidForUI = NotificationListener.this.notificationIsValidForUI((StatusBarNotification) obj);
                            return notificationIsValidForUI;
                        }
                    }).collect(Collectors.toList());
                } catch (SecurityException unused) {
                    Log.e("NotificationListener", "SecurityException: failed to fetch notifications");
                    arrayList = new ArrayList();
                }
            } else {
                arrayList = new ArrayList();
            }
            notificationListener.mUiHandler.obtainMessage(message.what, arrayList).sendToTarget();
            return true;
        }
        if (i == 4) {
            String str = (String) message.obj;
            notificationListener.mLastKeyDismissedByLauncher = str;
            notificationListener.cancelNotification(str);
            return true;
        }
        if (i != 5) {
            return false;
        }
        for (StatusBarNotification statusBarNotification3 : notificationListener.getActiveNotifications(((NotificationListenerService.RankingMap) message.obj).getOrderedKeys())) {
            notificationListener.updateGroupKeyIfNecessary(statusBarNotification3);
        }
        return true;
    }

    public static boolean c(NotificationListener notificationListener, Message message) {
        PopupDataProvider popupDataProvider;
        Objects.requireNonNull(notificationListener);
        int i = message.what;
        if (i == 1) {
            PopupDataProvider popupDataProvider2 = sNotificationsChangedListener;
            if (popupDataProvider2 != null) {
                Pair pair = (Pair) message.obj;
                final PackageUserKey packageUserKey = (PackageUserKey) pair.first;
                NotificationKeyData notificationKeyData = (NotificationKeyData) pair.second;
                DotInfo dotInfo = (DotInfo) popupDataProvider2.mPackageUserToDotInfos.get(packageUserKey);
                if (dotInfo == null) {
                    dotInfo = new DotInfo();
                    popupDataProvider2.mPackageUserToDotInfos.put(packageUserKey, dotInfo);
                }
                if (dotInfo.addOrUpdateNotificationKey(notificationKeyData)) {
                    Objects.requireNonNull(packageUserKey);
                    Predicate predicate = new Predicate() { // from class: c.a.a.R0.f
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return PackageUserKey.this.equals((PackageUserKey) obj);
                        }
                    };
                    popupDataProvider2.mNotificationDotsChangeListener.accept(predicate);
                    popupDataProvider2.mChangeListener.onNotificationDotsUpdated(predicate);
                }
            }
        } else if (i == 2) {
            PopupDataProvider popupDataProvider3 = sNotificationsChangedListener;
            if (popupDataProvider3 != null) {
                Pair pair2 = (Pair) message.obj;
                final PackageUserKey packageUserKey2 = (PackageUserKey) pair2.first;
                NotificationKeyData notificationKeyData2 = (NotificationKeyData) pair2.second;
                DotInfo dotInfo2 = (DotInfo) popupDataProvider3.mPackageUserToDotInfos.get(packageUserKey2);
                if (dotInfo2 != null) {
                    boolean remove = dotInfo2.mNotificationKeys.remove(notificationKeyData2);
                    if (remove) {
                        dotInfo2.mTotalCount -= notificationKeyData2.count;
                    }
                    if (remove) {
                        if (dotInfo2.mNotificationKeys.size() == 0) {
                            popupDataProvider3.mPackageUserToDotInfos.remove(packageUserKey2);
                        }
                        Objects.requireNonNull(packageUserKey2);
                        Predicate predicate2 = new Predicate() { // from class: c.a.a.R0.f
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                return PackageUserKey.this.equals((PackageUserKey) obj);
                            }
                        };
                        popupDataProvider3.mNotificationDotsChangeListener.accept(predicate2);
                        popupDataProvider3.mChangeListener.onNotificationDotsUpdated(predicate2);
                        popupDataProvider3.mChangeListener.trimNotifications(popupDataProvider3.mPackageUserToDotInfos);
                    }
                }
            }
        } else if (i == 3 && (popupDataProvider = sNotificationsChangedListener) != null) {
            popupDataProvider.onNotificationFullRefresh((List) message.obj);
        }
        return true;
    }

    public static /* synthetic */ String[] e(int i) {
        return new String[i];
    }

    public static NotificationListener getInstanceIfConnected() {
        if (sIsConnected) {
            return sNotificationListenerInstance;
        }
        return null;
    }

    public static void h(NotificationListener notificationListener, boolean z) {
        Objects.requireNonNull(notificationListener);
        if (z || !sIsConnected) {
            return;
        }
        notificationListener.requestUnbind();
    }

    public static Pair toKeyPair(StatusBarNotification statusBarNotification) {
        return Pair.create(new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser()), NotificationKeyData.fromNotification(statusBarNotification));
    }

    public final boolean notificationIsValidForUI(StatusBarNotification statusBarNotification) {
        Notification notification = statusBarNotification.getNotification();
        updateGroupKeyIfNecessary(statusBarNotification);
        getCurrentRanking().getRanking(statusBarNotification.getKey(), this.mTempRanking);
        if (!this.mTempRanking.canShowBadge()) {
            return false;
        }
        if (this.mTempRanking.getChannel().getId().equals("miscellaneous") && (notification.flags & 2) != 0) {
            return false;
        }
        return (((notification.flags & 512) != 0) || (TextUtils.isEmpty(notification.extras.getCharSequence("android.title")) && TextUtils.isEmpty(notification.extras.getCharSequence("android.text")))) ? false : true;
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerConnected() {
        super.onListenerConnected();
        sIsConnected = true;
        SecureSettingsObserver secureSettingsObserver = new SecureSettingsObserver(getContentResolver(), new SecureSettingsObserver.OnChangeListener() { // from class: c.a.a.O0.l
            @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
            public final void onSettingsChanged(boolean z) {
                NotificationListener.h(NotificationListener.this, z);
            }
        }, "notification_badging", 1);
        this.mNotificationDotsObserver = secureSettingsObserver;
        secureSettingsObserver.register();
        this.mNotificationDotsObserver.onChange(true);
        onNotificationFullRefresh();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onListenerDisconnected() {
        super.onListenerDisconnected();
        sIsConnected = false;
        SecureSettingsObserver secureSettingsObserver = this.mNotificationDotsObserver;
        secureSettingsObserver.mResolver.unregisterContentObserver(secureSettingsObserver);
        onNotificationFullRefresh();
    }

    public final void onNotificationFullRefresh() {
        this.mWorkerHandler.obtainMessage(3).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationPosted(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            this.mWorkerHandler.obtainMessage(1, statusBarNotification).sendToTarget();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
        this.mWorkerHandler.obtainMessage(5, rankingMap).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            this.mWorkerHandler.obtainMessage(2, statusBarNotification).sendToTarget();
        }
    }

    public final void updateGroupKeyIfNecessary(StatusBarNotification statusBarNotification) {
        String key = statusBarNotification.getKey();
        String str = (String) this.mNotificationGroupKeyMap.get(key);
        String groupKey = statusBarNotification.getGroupKey();
        if (str == null || !str.equals(groupKey)) {
            this.mNotificationGroupKeyMap.put(key, groupKey);
            if (str != null && this.mNotificationGroupMap.containsKey(str)) {
                NotificationGroup notificationGroup = (NotificationGroup) this.mNotificationGroupMap.get(str);
                notificationGroup.mChildKeys.remove(key);
                if (notificationGroup.mChildKeys.isEmpty()) {
                    this.mNotificationGroupMap.remove(str);
                }
            }
        }
        if (!statusBarNotification.isGroup() || groupKey == null) {
            return;
        }
        NotificationGroup notificationGroup2 = (NotificationGroup) this.mNotificationGroupMap.get(groupKey);
        if (notificationGroup2 == null) {
            notificationGroup2 = new NotificationGroup();
            this.mNotificationGroupMap.put(groupKey, notificationGroup2);
        }
        if ((statusBarNotification.getNotification().flags & 512) != 0) {
            notificationGroup2.mGroupSummaryKey = key;
        } else {
            notificationGroup2.mChildKeys.add(key);
        }
    }
}
