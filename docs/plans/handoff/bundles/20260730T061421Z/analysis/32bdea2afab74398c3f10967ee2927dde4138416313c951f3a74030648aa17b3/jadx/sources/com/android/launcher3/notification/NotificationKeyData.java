package com.android.launcher3.notification;

import android.app.Notification;
import android.app.Person;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class NotificationKeyData {
    public int count;
    public final String notificationKey;
    public final String[] personKeysFromNotification;
    public final String shortcutId;

    public NotificationKeyData(String str, String str2, int i, String[] strArr) {
        this.notificationKey = str;
        this.shortcutId = str2;
        this.count = Math.max(1, i);
        this.personKeysFromNotification = strArr;
    }

    public static NotificationKeyData fromNotification(StatusBarNotification statusBarNotification) {
        Notification notification = statusBarNotification.getNotification();
        String key = statusBarNotification.getKey();
        String shortcutId = notification.getShortcutId();
        int i = notification.number;
        ArrayList parcelableArrayList = notification.extras.getParcelableArrayList("android.people.list");
        return new NotificationKeyData(key, shortcutId, i, (parcelableArrayList == null || parcelableArrayList.isEmpty()) ? Utilities.EMPTY_STRING_ARRAY : (String[]) parcelableArrayList.stream().filter(new Predicate() { // from class: c.a.a.O0.d
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Person) obj).getKey() != null;
            }
        }).map(new Function() { // from class: c.a.a.O0.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Person) obj).getKey();
            }
        }).sorted().toArray(new IntFunction() { // from class: c.a.a.O0.c
            @Override // java.util.function.IntFunction
            public final Object apply(int i2) {
                return new String[i2];
            }
        }));
    }

    public boolean equals(Object obj) {
        if (obj instanceof NotificationKeyData) {
            return ((NotificationKeyData) obj).notificationKey.equals(this.notificationKey);
        }
        return false;
    }
}
