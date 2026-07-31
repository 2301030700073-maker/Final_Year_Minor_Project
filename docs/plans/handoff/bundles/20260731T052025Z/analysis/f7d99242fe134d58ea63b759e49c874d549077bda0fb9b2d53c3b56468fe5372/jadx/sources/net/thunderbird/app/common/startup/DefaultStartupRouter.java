package net.thunderbird.app.common.startup;

import com.fsck.k9.account.DefaultBackgroundAccountRemover;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultStartupRouter {
    public final DefaultLegacyAccountManager accountManager;
    public final DefaultBackgroundAccountRemover accountRemover;

    public DefaultStartupRouter(DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultBackgroundAccountRemover defaultBackgroundAccountRemover) {
        this.accountManager = defaultLegacyAccountManager;
        this.accountRemover = defaultBackgroundAccountRemover;
    }
}
