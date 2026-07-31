package app.k9mail.legacy.ui.folder;

import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderIconProvider {
    public static int getFolderIcon(FolderType folderType) {
        folderType.getClass();
        switch (folderType.ordinal()) {
            case 0:
                return R.drawable.ic_folder;
            case 1:
                return R.drawable.ic_inbox;
            case 2:
                return R.drawable.ic_outbox;
            case 3:
                return R.drawable.ic_send;
            case 4:
                return R.drawable.ic_delete;
            case 5:
                return R.drawable.ic_draft;
            case 6:
                return R.drawable.ic_archive;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return R.drawable.ic_report;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return 0;
        }
    }
}
