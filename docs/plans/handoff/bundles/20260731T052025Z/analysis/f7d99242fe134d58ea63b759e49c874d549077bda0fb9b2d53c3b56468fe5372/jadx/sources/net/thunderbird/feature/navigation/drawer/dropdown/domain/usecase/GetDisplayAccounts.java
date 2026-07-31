package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetDisplayAccounts {
    public final LegacyAccountDtoManager accountManager;
    public final DefaultAvatarDataMapper avatarMapper;
    public final CoroutineContext coroutineContext;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final DefaultMessageCountsProvider messageCountsProvider;
    public final DefaultMessageListRepository messageListRepository;
    public final DefaultInAppNotificationStream notificationStream;

    public GetDisplayAccounts(LegacyAccountDtoManager legacyAccountDtoManager, DefaultMessageCountsProvider defaultMessageCountsProvider, DefaultMessageListRepository defaultMessageListRepository, DefaultInAppNotificationStream defaultInAppNotificationStream, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, DefaultAvatarDataMapper defaultAvatarDataMapper) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.accountManager = legacyAccountDtoManager;
        this.messageCountsProvider = defaultMessageCountsProvider;
        this.messageListRepository = defaultMessageListRepository;
        this.notificationStream = defaultInAppNotificationStream;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.avatarMapper = defaultAvatarDataMapper;
        this.coroutineContext = defaultIoScheduler;
    }
}
