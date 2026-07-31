package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetAccountFolders {
    public final DefaultFolderRepository folderRepository;
    public final CoroutineDispatcher ioDispatcher;

    public GetAccountFolders(DefaultFolderRepository defaultFolderRepository) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.folderRepository = defaultFolderRepository;
        this.ioDispatcher = defaultIoScheduler;
    }
}
