package com.fsck.k9.storage.messages;

import com.fsck.k9.mailstore.LockableDatabase;
import com.google.zxing.BinaryBitmap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeleteFolderOperations {
    public final BinaryBitmap attachmentFileManager;
    public final LockableDatabase lockableDatabase;

    public DeleteFolderOperations(LockableDatabase lockableDatabase, BinaryBitmap binaryBitmap, int i) {
        lockableDatabase.getClass();
        switch (i) {
            case 1:
                this.lockableDatabase = lockableDatabase;
                this.attachmentFileManager = binaryBitmap;
                break;
            default:
                this.lockableDatabase = lockableDatabase;
                this.attachmentFileManager = binaryBitmap;
                break;
        }
    }
}
