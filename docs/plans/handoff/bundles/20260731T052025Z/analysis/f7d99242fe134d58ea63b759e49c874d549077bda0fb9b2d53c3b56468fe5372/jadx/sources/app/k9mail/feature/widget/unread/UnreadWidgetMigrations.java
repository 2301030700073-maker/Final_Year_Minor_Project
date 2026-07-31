package app.k9mail.feature.widget.unread;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.Preferences;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetMigrations {
    public final Preferences accountRepository;
    public final DefaultFolderRepository folderRepository;

    public UnreadWidgetMigrations(Preferences preferences, DefaultFolderRepository defaultFolderRepository) {
        this.accountRepository = preferences;
        this.folderRepository = defaultFolderRepository;
    }
}
