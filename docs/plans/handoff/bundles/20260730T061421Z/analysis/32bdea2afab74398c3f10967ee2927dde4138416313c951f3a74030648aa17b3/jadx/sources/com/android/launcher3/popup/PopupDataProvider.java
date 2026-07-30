package com.android.launcher3.popup;

import android.service.notification.StatusBarNotification;
import b.l.W;
import com.android.launcher3.Utilities;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.WidgetListRowEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class PopupDataProvider {
    public final Consumer mNotificationDotsChangeListener;
    public HashMap mDeepShortcutMap = new HashMap();
    public Map mPackageUserToDotInfos = new HashMap();
    public ArrayList mAllWidgets = new ArrayList();
    public PopupDataChangeListener mChangeListener = PopupDataChangeListener.INSTANCE;

    public interface PopupDataChangeListener {
        public static final PopupDataChangeListener INSTANCE = new PopupDataChangeListener() { // from class: com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener.1
        };

        default void onNotificationDotsUpdated(Predicate predicate) {
        }

        default void onWidgetsBound() {
        }

        default void trimNotifications(Map map) {
        }
    }

    public PopupDataProvider(Consumer consumer) {
        this.mNotificationDotsChangeListener = consumer;
    }

    public static List getNotificationsForItem(ItemInfo itemInfo, List list) {
        final String id = (W.isActive(itemInfo) && W.isPinnedShortcut(itemInfo)) ? ShortcutKey.fromIntent(itemInfo.getIntent(), itemInfo.user).getId() : null;
        if (id == null) {
            return list;
        }
        final String[] strArr = (W.isActive(itemInfo) && W.isPinnedShortcut(itemInfo)) ? ((WorkspaceItemInfo) itemInfo).personKeys : Utilities.EMPTY_STRING_ARRAY;
        return (List) list.stream().filter(new Predicate() { // from class: c.a.a.R0.i
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                String str = id;
                String[] strArr2 = strArr;
                NotificationKeyData notificationKeyData = (NotificationKeyData) obj;
                String str2 = notificationKeyData.shortcutId;
                if (str2 != null) {
                    return str2.equals(str);
                }
                String[] strArr3 = notificationKeyData.personKeysFromNotification;
                if (strArr3.length != 0) {
                    return Arrays.equals(strArr3, strArr2);
                }
                return false;
            }
        }).collect(Collectors.toList());
    }

    public DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        DotInfo dotInfo;
        if (!W.supportsShortcuts(itemInfo) || (dotInfo = (DotInfo) this.mPackageUserToDotInfos.get(PackageUserKey.fromItemInfo(itemInfo))) == null || getNotificationsForItem(itemInfo, dotInfo.mNotificationKeys).isEmpty()) {
            return null;
        }
        return dotInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
    
        if ((r4.itemType == 0) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getShortcutCountForItem(com.android.launcher3.model.data.ItemInfo r4) {
        /*
            r3 = this;
            boolean r0 = b.l.W.isActive(r4)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L12
            int r0 = r4.itemType
            if (r0 != 0) goto Le
            r0 = r1
            goto Lf
        Le:
            r0 = r2
        Lf:
            if (r0 == 0) goto L12
            goto L13
        L12:
            r1 = r2
        L13:
            if (r1 != 0) goto L16
            return r2
        L16:
            android.content.ComponentName r0 = r4.getTargetComponent()
            if (r0 != 0) goto L1d
            return r2
        L1d:
            java.util.HashMap r3 = r3.mDeepShortcutMap
            com.android.launcher3.util.ComponentKey r1 = new com.android.launcher3.util.ComponentKey
            android.os.UserHandle r4 = r4.user
            r1.<init>(r0, r4)
            java.lang.Object r3 = r3.get(r1)
            java.lang.Integer r3 = (java.lang.Integer) r3
            if (r3 != 0) goto L2f
            goto L33
        L2f:
            int r2 = r3.intValue()
        L33:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.popup.PopupDataProvider.getShortcutCountForItem(com.android.launcher3.model.data.ItemInfo):int");
    }

    public List getWidgetsForPackageUser(PackageUserKey packageUserKey) {
        Iterator it = this.mAllWidgets.iterator();
        while (it.hasNext()) {
            WidgetListRowEntry widgetListRowEntry = (WidgetListRowEntry) it.next();
            if (widgetListRowEntry.pkgItem.packageName.equals(packageUserKey.mPackageName)) {
                ArrayList arrayList = new ArrayList(widgetListRowEntry.widgets);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!((WidgetItem) it2.next()).user.equals(packageUserKey.mUser)) {
                        it2.remove();
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return arrayList;
            }
        }
        return null;
    }

    public void onNotificationFullRefresh(List list) {
        if (list == null) {
            return;
        }
        final HashMap hashMap = new HashMap(this.mPackageUserToDotInfos);
        this.mPackageUserToDotInfos.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            StatusBarNotification statusBarNotification = (StatusBarNotification) it.next();
            PackageUserKey fromNotification = PackageUserKey.fromNotification(statusBarNotification);
            DotInfo dotInfo = (DotInfo) this.mPackageUserToDotInfos.get(fromNotification);
            if (dotInfo == null) {
                dotInfo = new DotInfo();
                this.mPackageUserToDotInfos.put(fromNotification, dotInfo);
            }
            dotInfo.addOrUpdateNotificationKey(NotificationKeyData.fromNotification(statusBarNotification));
        }
        for (PackageUserKey packageUserKey : this.mPackageUserToDotInfos.keySet()) {
            DotInfo dotInfo2 = (DotInfo) hashMap.get(packageUserKey);
            DotInfo dotInfo3 = (DotInfo) this.mPackageUserToDotInfos.get(packageUserKey);
            if (dotInfo2 == null || dotInfo2.getNotificationCount() != dotInfo3.getNotificationCount()) {
                hashMap.put(packageUserKey, dotInfo3);
            } else {
                hashMap.remove(packageUserKey);
            }
        }
        if (!hashMap.isEmpty()) {
            Predicate predicate = new Predicate() { // from class: c.a.a.R0.r
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return hashMap.containsKey((PackageUserKey) obj);
                }
            };
            this.mNotificationDotsChangeListener.accept(predicate);
            this.mChangeListener.onNotificationDotsUpdated(predicate);
        }
        this.mChangeListener.trimNotifications(hashMap);
    }

    public void setChangeListener(PopupDataChangeListener popupDataChangeListener) {
        this.mChangeListener = PopupDataChangeListener.INSTANCE;
    }
}
