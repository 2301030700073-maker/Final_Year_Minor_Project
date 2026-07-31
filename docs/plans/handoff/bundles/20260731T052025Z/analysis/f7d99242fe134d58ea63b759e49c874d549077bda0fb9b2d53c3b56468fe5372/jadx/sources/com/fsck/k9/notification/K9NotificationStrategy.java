package com.fsck.k9.notification;

import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.ContactRepository;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import kotlin.time.Clock;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.common.mail.TokensKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.notification.NotificationPreference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9NotificationStrategy {
    public final ContactRepository contactRepository;
    public final GeneralSettingsManager generalSettingsManager;

    public K9NotificationStrategy(ContactRepository contactRepository, GeneralSettingsManager generalSettingsManager) {
        this.contactRepository = contactRepository;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final boolean shouldNotifyForMessage(LegacyAccountDto legacyAccountDto, LocalFolder localFolder, LocalMessage localMessage, boolean z) {
        legacyAccountDto.getClass();
        localFolder.getClass();
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
        if (!defaultGeneralSettingsManager.getConfig().notification.isNotificationDuringQuietTimeEnabled) {
            NotificationPreference notificationPreference = defaultGeneralSettingsManager.getConfig().notification;
            if (notificationPreference.isQuietTimeEnabled) {
                Clock clock = (Clock) CloseableKt.get$default(Clock.class);
                String str = notificationPreference.quietTimeStarts;
                String str2 = notificationPreference.quietTimeEnds;
                int access$parseTime = OAuthBearer.access$parseTime(str);
                int access$parseTime2 = OAuthBearer.access$parseTime(str2);
                if (access$parseTime != access$parseTime2) {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTimeInMillis(clock.now().toEpochMilliseconds());
                    int i = calendar.get(12) + (calendar.get(11) * 60);
                    if (access$parseTime <= access$parseTime2 ? !(i > access$parseTime2 || access$parseTime > i) : !(i < access$parseTime && i > access$parseTime2)) {
                        Log.v("No notification: Quiet time is active", new Object[0]);
                        return false;
                    }
                }
            }
        }
        if (!legacyAccountDto.isNotifyNewMail()) {
            Log.v("No notification: Notifications are disabled", new Object[0]);
            return false;
        }
        if (!localFolder.visible) {
            Log.v("No notification: Message is in folder not being displayed", new Object[0]);
            return false;
        }
        if (!localFolder.notificationsEnabled) {
            Log.v("No notification: Notifications are not enabled for this folder", new Object[0]);
            return false;
        }
        if (z) {
            Log.v("No notification: Message is old", new Object[0]);
            return false;
        }
        if (localMessage.mFlags.contains(Flag.SEEN)) {
            Log.v("No notification: Message is marked as read", new Object[0]);
            return false;
        }
        if (legacyAccountDto.isIgnoreChatMessages()) {
            String[] header = localMessage.mHeader.getHeader("Chat-Version");
            header.getClass();
            if (header.length != 0) {
                Log.v("No notification: Notifications for chat messages are disabled", new Object[0]);
                return false;
            }
        }
        if (!legacyAccountDto.isNotifySelfNewMail() && legacyAccountDto.isAnIdentity(localMessage.getFrom())) {
            Log.v("No notification: Notifications for messages from yourself are disabled", new Object[0]);
            return false;
        }
        if (!legacyAccountDto.isNotifyContactsMailOnly()) {
            return true;
        }
        Address[] from = localMessage.getFrom();
        from.getClass();
        List asList = Arrays.asList(from);
        asList.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            EmailAddress emailAddressOrNull = TokensKt.toEmailAddressOrNull(((Address) it.next()).address);
            if (emailAddressOrNull != null) {
                arrayList.add(emailAddressOrNull);
            }
        }
        CachingContactRepository cachingContactRepository = (CachingContactRepository) this.contactRepository;
        if (!arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (cachingContactRepository.hasContactFor((EmailAddress) it2.next())) {
                    return true;
                }
            }
        }
        Log.v("No notification: Message is not from a known contact", new Object[0]);
        return false;
    }
}
