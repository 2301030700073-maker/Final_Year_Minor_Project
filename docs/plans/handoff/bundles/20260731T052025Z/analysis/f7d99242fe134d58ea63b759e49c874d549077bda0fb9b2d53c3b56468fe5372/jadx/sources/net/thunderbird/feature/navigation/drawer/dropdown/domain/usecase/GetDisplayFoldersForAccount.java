package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import net.thunderbird.feature.navigation.drawer.dropdown.data.UnifiedFolderRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetDisplayFoldersForAccount {
    public final DefaultDisplayFolderRepository displayFolderRepository;
    public final UnifiedFolderRepository unifiedFolderRepository;

    public GetDisplayFoldersForAccount(DefaultDisplayFolderRepository defaultDisplayFolderRepository, UnifiedFolderRepository unifiedFolderRepository) {
        this.displayFolderRepository = defaultDisplayFolderRepository;
        this.unifiedFolderRepository = unifiedFolderRepository;
    }
}
