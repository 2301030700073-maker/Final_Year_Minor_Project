package com.fsck.k9.notification;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BaseNotificationData {
    public final LegacyAccountDto account;
    public final String accountName;
    public final NotificationAppearance appearance;
    public final int color;
    public final String groupKey;
    public final LockScreenNotificationData lockScreenNotificationData;
    public final int newMessagesCount;

    public BaseNotificationData(LegacyAccountDto legacyAccountDto, String str, String str2, int i, int i2, LockScreenNotificationData lockScreenNotificationData, NotificationAppearance notificationAppearance) {
        legacyAccountDto.getClass();
        this.account = legacyAccountDto;
        this.accountName = str;
        this.groupKey = str2;
        this.color = i;
        this.newMessagesCount = i2;
        this.lockScreenNotificationData = lockScreenNotificationData;
        this.appearance = notificationAppearance;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BaseNotificationData)) {
            return false;
        }
        BaseNotificationData baseNotificationData = (BaseNotificationData) obj;
        return Intrinsics.areEqual(this.account, baseNotificationData.account) && this.accountName.equals(baseNotificationData.accountName) && this.groupKey.equals(baseNotificationData.groupKey) && this.color == baseNotificationData.color && this.newMessagesCount == baseNotificationData.newMessagesCount && this.lockScreenNotificationData.equals(baseNotificationData.lockScreenNotificationData) && this.appearance.equals(baseNotificationData.appearance);
    }

    public final int hashCode() {
        return this.appearance.hashCode() + ((this.lockScreenNotificationData.hashCode() + ((((Modifier.CC.m(Modifier.CC.m(this.account.uuid.hashCode() * 31, this.accountName, 31), this.groupKey, 31) + this.color) * 31) + this.newMessagesCount) * 31)) * 31);
    }

    public final String toString() {
        return "BaseNotificationData(account=" + this.account + ", accountName=" + this.accountName + ", groupKey=" + this.groupKey + ", color=" + this.color + ", newMessagesCount=" + this.newMessagesCount + ", lockScreenNotificationData=" + this.lockScreenNotificationData + ", appearance=" + this.appearance + ")";
    }
}
