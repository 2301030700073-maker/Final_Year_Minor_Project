package com.fsck.k9;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.account.AccountModuleKt;
import java.util.List;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LegacyCommonAppModuleKt {
    public static final List legacyCommonAppModules;

    static {
        KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(25);
        Module module = new Module();
        koinModuleKt$$ExternalSyntheticLambda0.invoke(module);
        legacyCommonAppModules = IntOffsetKt.listOf((Object[]) new Module[]{module, app.k9mail.feature.widget.message.list.KoinModuleKt.messageListWidgetModule, app.k9mail.feature.widget.unread.KoinModuleKt.unreadWidgetModule, com.fsck.k9.notification.KoinModuleKt.notificationModule, com.fsck.k9.resources.KoinModuleKt.resourcesModule, com.fsck.k9.backends.KoinModuleKt.backendsModule, com.fsck.k9.storage.KoinModuleKt.storageModule, AccountModuleKt.newAccountModule});
    }
}
