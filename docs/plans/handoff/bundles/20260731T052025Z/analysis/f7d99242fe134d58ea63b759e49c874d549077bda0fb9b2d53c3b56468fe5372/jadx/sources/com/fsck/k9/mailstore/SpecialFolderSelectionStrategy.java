package com.fsck.k9.mailstore;

import java.util.Iterator;
import java.util.List;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFolderSelectionStrategy {
    public static RemoteFolder selectSpecialFolder(List list, FolderType folderType) {
        Object obj;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((RemoteFolder) obj).type == folderType) {
                break;
            }
        }
        return (RemoteFolder) obj;
    }
}
