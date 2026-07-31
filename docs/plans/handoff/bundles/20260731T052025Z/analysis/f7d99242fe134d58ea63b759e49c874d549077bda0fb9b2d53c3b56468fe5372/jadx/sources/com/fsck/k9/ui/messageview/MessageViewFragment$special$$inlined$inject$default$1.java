package com.fsck.k9.ui.messageview;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.activity.MessageLoaderHelperFactory;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.ui.share.ShareIntentBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import net.thunderbird.feature.mail.message.export.DefaultMessageFileNameSuggester;
import net.thunderbird.feature.mail.message.export.eml.EmlMessageExporter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageViewFragment $this_inject;

    public /* synthetic */ MessageViewFragment$special$$inlined$inject$default$1(MessageViewFragment messageViewFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = messageViewFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        MessageViewFragment messageViewFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
            case 1:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
            case 2:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(EmlMessageExporter.class), null, null);
            case 3:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultMessageFileNameSuggester.class), null, null);
            case 4:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(FeatureThemeProvider.class), null, null);
            case 5:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(MessageLoaderHelperFactory.class), null, null);
            case 6:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(LegacyAccountDtoManager.class), null, null);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(ShareIntentBuilder.class), null, null);
            case 9:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsManager.class), null, null);
            case 10:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(DefaultOutboxFolderManager.class), null, null);
            case 11:
                return AtomicFU.getKoinScope(messageViewFragment).resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null);
            default:
                return messageViewFragment;
        }
    }
}
