package com.fsck.k9.ui.messagelist;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import com.bumptech.glide.load.Option;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListFragment $this_inject;

    public /* synthetic */ MessageListFragment$special$$inlined$inject$default$1(MessageListFragment messageListFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = messageListFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        MessageListFragment messageListFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(MessageListScreenRenderer.class), null, null);
            case 1:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
            case 2:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null);
            case 3:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null);
            case 4:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(Option.AnonymousClass1.class), null, null);
            case 5:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(ErrorNotificationsDialogFragment.Factory.class), null, null);
            case 6:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(ContactRepository.class), null, null);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarMonogramCreator.class), null, null);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
            case 9:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(SortTypeToastProvider.class), null, null);
            case 10:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(MessagingControllerWrapper.class), null, null);
            case 11:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(MessagingControllerRegistry.class), null, null);
            case BasicTextKt.ShiftMeta /* 12 */:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountManager.class), null, null);
            case 13:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(ConnectivityManagerBase.class), null, null);
            case 14:
                return AtomicFU.getKoinScope(messageListFragment).resolve(Reflection.getOrCreateKotlinClass(LocalStoreProvider.class), null, null);
            case OffsetKt.Horizontal /* 15 */:
            case 16:
            default:
                return messageListFragment;
        }
    }
}
