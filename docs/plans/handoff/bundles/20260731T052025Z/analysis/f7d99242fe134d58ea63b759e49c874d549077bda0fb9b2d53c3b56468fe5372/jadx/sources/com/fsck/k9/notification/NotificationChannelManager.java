package com.fsck.k9.notification;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.controller.push.PushController;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.Function;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.thunderbird.core.android.account.AccountsChangeListener;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.notification.NotificationLight;
import net.thunderbird.feature.notification.NotificationSettings;
import net.thunderbird.feature.notification.NotificationVibration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationChannelManager {
    public final LegacyAccountDtoManager accountManager;
    public final ExecutorService backgroundExecutor;
    public final NotificationManager notificationManager;
    public final K9NotificationResourceProvider resourceProvider;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.notification.NotificationChannelManager$1, reason: invalid class name */
    public final /* synthetic */ class AnonymousClass1 implements AccountsChangeListener, FunctionAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object $tmp0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.$tmp0 = obj;
        }

        public final boolean equals(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    if ((obj instanceof AccountsChangeListener) && (obj instanceof FunctionAdapter)) {
                        break;
                    }
                    break;
                default:
                    if ((obj instanceof AccountsChangeListener) && (obj instanceof FunctionAdapter)) {
                        break;
                    }
                    break;
            }
            return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function getFunctionDelegate() {
            int i = this.$r8$classId;
            Object obj = this.$tmp0;
            switch (i) {
                case 0:
                    return new FunctionReferenceImpl(0, 0, NotificationChannelManager.class, (NotificationChannelManager) obj, "updateChannels", "updateChannels()V");
                default:
                    return new FunctionReferenceImpl(0, 0, PushController.class, (PushController) obj, "onAccountsChanged", "onAccountsChanged()V");
            }
        }

        public final int hashCode() {
            switch (this.$r8$classId) {
            }
            return getFunctionDelegate().hashCode();
        }

        @Override // net.thunderbird.core.android.account.AccountsChangeListener
        public final void onAccountsChanged() {
            int i = this.$r8$classId;
            Object obj = this.$tmp0;
            switch (i) {
                case 0:
                    NotificationChannelManager notificationChannelManager = (NotificationChannelManager) obj;
                    if (Build.VERSION.SDK_INT >= 26) {
                        notificationChannelManager.backgroundExecutor.execute(new Fragment$$ExternalSyntheticLambda0(6, notificationChannelManager));
                        break;
                    }
                    break;
                default:
                    ((PushController) obj).launchUpdatePushers();
                    break;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ChannelType {
        public static final /* synthetic */ ChannelType[] $VALUES;
        public static final ChannelType MESSAGES;
        public static final ChannelType MISCELLANEOUS;

        static {
            ChannelType channelType = new ChannelType("MESSAGES", 0);
            MESSAGES = channelType;
            ChannelType channelType2 = new ChannelType("MISCELLANEOUS", 1);
            MISCELLANEOUS = channelType2;
            $VALUES = new ChannelType[]{channelType, channelType2};
        }

        public static ChannelType valueOf(String str) {
            return (ChannelType) Enum.valueOf(ChannelType.class, str);
        }

        public static ChannelType[] values() {
            return (ChannelType[]) $VALUES.clone();
        }
    }

    public static void $r8$lambda$m3LNel5iYKrrYmwu_gXHemecIYY(NotificationChannelManager notificationChannelManager) {
        NotificationManager notificationManager = notificationChannelManager.notificationManager;
        Context context = notificationChannelManager.resourceProvider.context;
        String string = context.getString(R.string.notification_channel_push_title);
        string.getClass();
        String string2 = context.getString(R.string.notification_channel_push_description);
        string2.getClass();
        NotificationChannel notificationChannel = new NotificationChannel("push", string, 2);
        notificationChannel.setDescription(string2);
        notificationChannel.setShowBadge(false);
        notificationChannel.enableLights(false);
        notificationChannel.enableVibration(false);
        notificationChannel.setSound(null, null);
        notificationManager.createNotificationChannel(notificationChannel);
        String string3 = context.getString(R.string.notification_channel_miscellaneous_title);
        string3.getClass();
        String string4 = context.getString(R.string.notification_channel_miscellaneous_description);
        string4.getClass();
        NotificationChannel notificationChannel2 = new NotificationChannel("misc", string3, 2);
        notificationChannel2.setDescription(string4);
        notificationChannel2.setShowBadge(false);
        notificationChannel2.enableLights(false);
        notificationChannel2.enableVibration(false);
        notificationChannel2.setSound(null, null);
        notificationManager.createNotificationChannel(notificationChannel2);
        List<LegacyAccountDto> accounts = ((Preferences) notificationChannelManager.accountManager).getAccounts();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(accounts, 10));
        Iterator it = accounts.iterator();
        while (it.hasNext()) {
            arrayList.add(((LegacyAccountDto) it.next()).uuid);
        }
        Set set = CollectionsKt.toSet(arrayList);
        for (NotificationChannelGroup notificationChannelGroup : notificationManager.getNotificationChannelGroups()) {
            String id = notificationChannelGroup.getId();
            id.getClass();
            if (!set.contains(id)) {
                notificationManager.deleteNotificationChannelGroup(notificationChannelGroup.getId());
            }
        }
        for (LegacyAccountDto legacyAccountDto : accounts) {
            String str = legacyAccountDto.uuid;
            NotificationChannelGroup notificationChannelGroup2 = new NotificationChannelGroup(str, legacyAccountDto.getDisplayName());
            String string5 = context.getString(R.string.notification_channel_messages_title);
            string5.getClass();
            NotificationChannel notificationChannel3 = new NotificationChannel(getChannelIdFor(legacyAccountDto, ChannelType.MESSAGES), string5, 3);
            String string6 = context.getString(R.string.notification_channel_messages_description);
            string6.getClass();
            notificationChannel3.setDescription(string6);
            notificationChannel3.setGroup(str);
            setPropertiesFrom(notificationChannel3, legacyAccountDto);
            String string7 = context.getString(R.string.notification_channel_miscellaneous_title);
            string7.getClass();
            String string8 = context.getString(R.string.notification_channel_miscellaneous_description);
            string8.getClass();
            NotificationChannel notificationChannel4 = new NotificationChannel(getChannelIdFor(legacyAccountDto, ChannelType.MISCELLANEOUS), string7, 2);
            notificationChannel4.setDescription(string8);
            notificationChannel4.setGroup(str);
            notificationManager.createNotificationChannelGroup(notificationChannelGroup2);
            notificationManager.createNotificationChannel(notificationChannel3);
            notificationManager.createNotificationChannel(notificationChannel4);
        }
    }

    public NotificationChannelManager(LegacyAccountDtoManager legacyAccountDtoManager, ExecutorService executorService, NotificationManager notificationManager, K9NotificationResourceProvider k9NotificationResourceProvider, NotificationLightDecoder notificationLightDecoder) {
        this.accountManager = legacyAccountDtoManager;
        this.backgroundExecutor = executorService;
        this.notificationManager = notificationManager;
        this.resourceProvider = k9NotificationResourceProvider;
        ((Preferences) legacyAccountDtoManager).accountsChangeListeners.add(new AnonymousClass1(0, this));
    }

    public static String getChannelIdFor(LegacyAccountDto legacyAccountDto, ChannelType channelType) {
        legacyAccountDto.getClass();
        String str = legacyAccountDto.uuid;
        if (channelType != ChannelType.MESSAGES) {
            return CameraDevices$CC.m("miscellaneous_channel_", str);
        }
        int messagesNotificationChannelVersion = legacyAccountDto.getMessagesNotificationChannelVersion();
        return CameraDevices$CC.m("messages_channel_", str, messagesNotificationChannelVersion == 0 ? "" : CameraDevices$CC.m("_", messagesNotificationChannelVersion));
    }

    public static void setPropertiesFrom(NotificationChannel notificationChannel, LegacyAccountDto legacyAccountDto) {
        NotificationSettings notificationSettings = legacyAccountDto.getNotificationSettings();
        boolean z = notificationSettings.isRingEnabled;
        NotificationVibration notificationVibration = notificationSettings.vibration;
        NotificationLight notificationLight = notificationSettings.light;
        if (z) {
            String str = notificationSettings.ringtone;
            notificationChannel.setSound(str != null ? Uri.parse(str) : null, Notification.AUDIO_ATTRIBUTES_DEFAULT);
        }
        Integer color = notificationLight.toColor(legacyAccountDto.getChipColor());
        if (color != null) {
            notificationChannel.setLightColor(color.intValue());
        }
        notificationChannel.enableLights(notificationLight != NotificationLight.Disabled);
        notificationChannel.setVibrationPattern(RangesKt.getSystemPattern(notificationVibration.pattern, notificationVibration.repeatCount));
        notificationChannel.enableVibration(notificationVibration.isEnabled);
    }

    public final NotificationConfiguration getNotificationConfiguration(LegacyAccountDto legacyAccountDto) {
        legacyAccountDto.getClass();
        NotificationChannel notificationChannel = this.notificationManager.getNotificationChannel(getChannelIdFor(legacyAccountDto, ChannelType.MESSAGES));
        Uri sound = notificationChannel.getSound();
        boolean shouldShowLights = notificationChannel.shouldShowLights();
        int lightColor = notificationChannel.getLightColor();
        boolean shouldVibrate = notificationChannel.shouldVibrate();
        long[] vibrationPattern = notificationChannel.getVibrationPattern();
        return new NotificationConfiguration(sound, shouldShowLights, lightColor, shouldVibrate, vibrationPattern != null ? ArraysKt___ArraysKt.toList(vibrationPattern) : null);
    }

    public final void recreateMessagesNotificationChannel(LegacyAccountDto legacyAccountDto) {
        String str;
        String str2 = legacyAccountDto.uuid;
        Context context = this.resourceProvider.context;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return;
        }
        String channelIdFor = getChannelIdFor(legacyAccountDto, ChannelType.MESSAGES);
        NotificationManager notificationManager = this.notificationManager;
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(channelIdFor);
        notificationChannel.getClass();
        NotificationLight decode = NotificationLightDecoder.decode(notificationChannel.getLightColor(), legacyAccountDto.getChipColor(), notificationChannel.shouldShowLights());
        NotificationSettings notificationSettings = legacyAccountDto.getNotificationSettings();
        Uri sound = notificationChannel.getSound();
        boolean z = notificationSettings.isRingEnabled;
        NotificationVibration notificationVibration = notificationSettings.vibration;
        Uri uri = null;
        if (z && (str = notificationSettings.ringtone) != null) {
            uri = Uri.parse(str);
        }
        if (Intrinsics.areEqual(sound, uri) && decode == notificationSettings.light && notificationChannel.shouldVibrate() == notificationVibration.isEnabled && Arrays.equals(notificationChannel.getVibrationPattern(), RangesKt.getSystemPattern(notificationVibration.pattern, notificationVibration.repeatCount))) {
            Log.v("Not recreating NotificationChannel. The current one already matches the app's settings.", new Object[0]);
            return;
        }
        int messagesNotificationChannelVersion = legacyAccountDto.getMessagesNotificationChannelVersion() + 1;
        String m = CameraDevices$CC.m("messages_channel_", str2, CameraDevices$CC.m("_", messagesNotificationChannelVersion));
        String string = context.getString(R.string.notification_channel_messages_title);
        string.getClass();
        NotificationChannel notificationChannel2 = new NotificationChannel(m, string, notificationChannel.getImportance());
        String string2 = context.getString(R.string.notification_channel_messages_description);
        string2.getClass();
        notificationChannel2.setDescription(string2);
        notificationChannel2.setGroup(str2);
        notificationChannel2.setShowBadge(notificationChannel.canShowBadge());
        notificationChannel2.setSound(notificationChannel.getSound(), notificationChannel.getAudioAttributes());
        notificationChannel2.enableVibration(notificationChannel.shouldVibrate());
        notificationChannel2.enableLights(notificationChannel.shouldShowLights());
        notificationChannel2.setBypassDnd(notificationChannel.canBypassDnd());
        notificationChannel2.setLockscreenVisibility(notificationChannel.getLockscreenVisibility());
        if (i >= 29) {
            notificationChannel2.setAllowBubbles(notificationChannel.canBubble());
        }
        setPropertiesFrom(notificationChannel2, legacyAccountDto);
        Log.v("Recreating NotificationChannel(%s => %s)", channelIdFor, m);
        Log.v("Old NotificationChannel: %s", notificationChannel);
        Log.v("New NotificationChannel: %s", notificationChannel2);
        notificationManager.createNotificationChannel(notificationChannel2);
        legacyAccountDto.setMessagesNotificationChannelVersion(messagesNotificationChannelVersion);
        notificationManager.deleteNotificationChannel(channelIdFor);
    }
}
