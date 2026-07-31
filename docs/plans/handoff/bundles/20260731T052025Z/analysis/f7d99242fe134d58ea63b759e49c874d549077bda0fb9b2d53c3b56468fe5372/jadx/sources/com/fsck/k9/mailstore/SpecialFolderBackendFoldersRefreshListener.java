package com.fsck.k9.mailstore;

import com.eygraber.uri.Uri;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFolderBackendFoldersRefreshListener implements BackendFoldersRefreshListener {
    public final Uri.Builder specialFolderUpdater;

    public SpecialFolderBackendFoldersRefreshListener(Uri.Builder builder) {
        this.specialFolderUpdater = builder;
    }

    @Override // com.fsck.k9.mailstore.BackendFoldersRefreshListener
    public final void onAfterFolderListRefresh() {
        Uri.Builder builder = this.specialFolderUpdater;
        JobKt.runBlockingK((CoroutineDispatcher) builder.path, new DefaultSpecialFolderUpdater$updateSpecialFolders$1(builder, null, 1));
    }

    @Override // com.fsck.k9.mailstore.BackendFoldersRefreshListener
    public final void onBeforeFolderListRefresh() {
    }
}
