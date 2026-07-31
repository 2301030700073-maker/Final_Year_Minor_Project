package app.k9mail.feature.account.server.certificate.domain.usecase;

import com.fsck.k9.mail.ssl.LocalKeyStore;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AddServerCertificateException {
    public final CoroutineDispatcher coroutineDispatcher;
    public final LocalKeyStore localKeyStore;

    public AddServerCertificateException(LocalKeyStore localKeyStore) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.localKeyStore = localKeyStore;
        this.coroutineDispatcher = defaultIoScheduler;
    }
}
