package app.k9mail.legacy.ui.folder;

import android.content.res.Resources;
import com.fsck.k9.R;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderNameFormatter {
    public final Resources resources;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FolderType.values().length];
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[5] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FolderNameFormatter(Resources resources) {
        resources.getClass();
        this.resources = resources;
    }

    public final String displayName(Folder folder) {
        String str = folder.name;
        FolderType folderType = folder.type;
        boolean z = folder.isLocalOnly;
        Resources resources = this.resources;
        if (!z) {
            if (WhenMappings.$EnumSwitchMapping$0[folderType.ordinal()] == 5) {
                str = resources.getString(R.string.special_mailbox_name_inbox);
            }
            str.getClass();
            return str;
        }
        int ordinal = folderType.ordinal();
        if (ordinal == 2) {
            str = resources.getString(R.string.special_mailbox_name_outbox);
        } else if (ordinal == 3) {
            str = resources.getString(R.string.special_mailbox_name_sent);
        } else if (ordinal == 4) {
            str = resources.getString(R.string.special_mailbox_name_trash);
        } else if (ordinal == 5) {
            str = resources.getString(R.string.special_mailbox_name_drafts);
        }
        str.getClass();
        return str;
    }

    public final String displayName(RemoteFolder remoteFolder) {
        String str;
        remoteFolder.getClass();
        if (WhenMappings.$EnumSwitchMapping$0[remoteFolder.type.ordinal()] == 5) {
            str = this.resources.getString(R.string.special_mailbox_name_inbox);
        } else {
            str = remoteFolder.name;
        }
        str.getClass();
        return str;
    }
}
