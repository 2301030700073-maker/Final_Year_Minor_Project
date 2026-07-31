package com.fsck.k9;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.notification.CoreNotificationKoinModuleKt;
import java.util.List;
import net.thunderbird.feature.account.storage.legacy.AccountStorageLegacyModuleKt;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoreKoinModulesKt {
    public static final List legacyCoreModules = IntOffsetKt.listOf((Object[]) new Module[]{KoinModuleKt.mainModule, net.thunderbird.core.android.network.KoinModuleKt.coreAndroidNetworkModule, com.fsck.k9.crypto.KoinModuleKt.openPgpModule, com.fsck.k9.autocrypt.KoinModuleKt.autocryptModule, com.fsck.k9.mailstore.KoinModuleKt.mailStoreModule, com.fsck.k9.message.extractors.KoinModuleKt.extractorModule, com.fsck.k9.message.html.KoinModuleKt.htmlModule, com.fsck.k9.message.quote.KoinModuleKt.quoteModule, CoreNotificationKoinModuleKt.coreNotificationModule, com.fsck.k9.controller.KoinModuleKt.controllerModule, com.fsck.k9.controller.push.KoinModuleKt.controllerPushModule, com.fsck.k9.job.KoinModuleKt.jobModule, com.fsck.k9.helper.KoinModuleKt.helperModule, com.fsck.k9.preferences.KoinModuleKt.preferencesModule, com.fsck.k9.power.KoinModuleKt.powerModule, net.thunderbird.core.android.logging.KoinModuleKt.loggingModule, AccountStorageLegacyModuleKt.featureAccountStorageLegacyModule});
}
