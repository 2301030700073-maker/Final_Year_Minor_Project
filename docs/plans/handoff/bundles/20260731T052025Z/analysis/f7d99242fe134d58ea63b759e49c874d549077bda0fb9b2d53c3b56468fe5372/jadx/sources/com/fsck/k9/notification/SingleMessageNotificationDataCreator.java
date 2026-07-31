package com.fsck.k9.notification;

import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.collections.builders.ListBuilder;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleMessageNotificationDataCreator {
    public final DefaultInteractionSettingsPreferenceManager interactionPreferences;
    public final DefaultNotificationPreferenceManager notificationPreference;

    public SingleMessageNotificationDataCreator(DefaultInteractionSettingsPreferenceManager defaultInteractionSettingsPreferenceManager, DefaultNotificationPreferenceManager defaultNotificationPreferenceManager) {
        this.interactionPreferences = defaultInteractionSettingsPreferenceManager;
        this.notificationPreference = defaultNotificationPreferenceManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList createSingleNotificationActions(net.thunderbird.core.android.account.LegacyAccountDto r13) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.notification.SingleMessageNotificationDataCreator.createSingleNotificationActions(net.thunderbird.core.android.account.LegacyAccountDto):java.util.ArrayList");
    }

    public final ListBuilder createSingleNotificationWearActions(LegacyAccountDto legacyAccountDto) {
        boolean z;
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(WearNotificationAction.Reply);
        createListBuilder.add(WearNotificationAction.MarkAsRead);
        if (!((InteractionSettings) this.interactionPreferences.getConfig()).isConfirmDeleteFromNotification) {
            createListBuilder.add(WearNotificationAction.Delete);
        }
        if (legacyAccountDto.hasArchiveFolder()) {
            createListBuilder.add(WearNotificationAction.Archive);
        }
        synchronized (legacyAccountDto) {
            z = legacyAccountDto.spamFolderId != null;
        }
        if (z && !((InteractionSettings) this.interactionPreferences.getConfig()).isConfirmSpam) {
            createListBuilder.add(WearNotificationAction.Spam);
        }
        return IntOffsetKt.build(createListBuilder);
    }
}
