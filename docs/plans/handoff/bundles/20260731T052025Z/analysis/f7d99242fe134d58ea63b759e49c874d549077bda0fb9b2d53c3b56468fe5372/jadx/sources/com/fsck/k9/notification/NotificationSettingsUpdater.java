package com.fsck.k9.notification;

import android.net.Uri;
import android.os.Build;
import com.fsck.k9.Preferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;
import net.thunderbird.feature.notification.VibratePattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationSettingsUpdater {
    public final NotificationChannelManager notificationChannelManager;
    public final Preferences preferences;

    public NotificationSettingsUpdater(Preferences preferences, NotificationChannelManager notificationChannelManager, NotificationConfigurationConverter notificationConfigurationConverter) {
        this.preferences = preferences;
        this.notificationChannelManager = notificationChannelManager;
    }

    public final void updateNotificationSettings(LegacyAccountDto legacyAccountDto) {
        NotificationVibration notificationVibration;
        Object obj;
        legacyAccountDto.getClass();
        NotificationConfiguration notificationConfiguration = this.notificationChannelManager.getNotificationConfiguration(legacyAccountDto);
        NotificationLight decode = NotificationLightDecoder.decode(notificationConfiguration.lightColor, legacyAccountDto.getChipColor(), notificationConfiguration.isBlinkLightsEnabled);
        boolean z = notificationConfiguration.isVibrationEnabled;
        List list = notificationConfiguration.vibrationPattern;
        if (list == null || list.size() < 2 || list.size() % 2 != 0) {
            notificationVibration = new NotificationVibration(z, VibratePattern.Default, 1);
        } else {
            long[] longArray = CollectionsKt.toLongArray(list);
            int size = list.size() / 2;
            Iterator it = VibratePattern.$ENTRIES.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                NotificationVibration notificationVibration2 = NotificationVibration.DEFAULT;
                if (Arrays.equals(RangesKt.getSystemPattern((VibratePattern) obj, size), longArray)) {
                    break;
                }
            }
            VibratePattern vibratePattern = (VibratePattern) obj;
            if (vibratePattern == null) {
                vibratePattern = VibratePattern.Default;
            }
            notificationVibration = new NotificationVibration(z, vibratePattern, size);
        }
        Uri uri = notificationConfiguration.sound;
        NotificationSettings notificationSettings = new NotificationSettings(uri != null, uri != null ? uri.toString() : null, decode, notificationVibration);
        if (notificationSettings.equals(legacyAccountDto.getNotificationSettings())) {
            return;
        }
        synchronized (legacyAccountDto) {
            legacyAccountDto.notificationSettings.getClass();
            legacyAccountDto.notificationSettings = notificationSettings;
        }
    }

    public final void updateNotificationSettings(Collection collection) {
        Preferences preferences;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            preferences = this.preferences;
            if (!hasNext) {
                break;
            }
            LegacyAccountDto account = preferences.getAccount((String) it.next());
            if (account != null) {
                arrayList.add(account);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            LegacyAccountDto legacyAccountDto = (LegacyAccountDto) it2.next();
            updateNotificationSettings(legacyAccountDto);
            preferences.saveAccount(legacyAccountDto);
        }
    }
}
