package net.thunderbird.feature.mail.message.list.domain;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CreateArchiveFolderOutcome$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountNotFound implements CreateArchiveFolderOutcome$Error {
        public static final AccountNotFound INSTANCE = new AccountNotFound();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AccountNotFound);
        }

        public final int hashCode() {
            return -1603109980;
        }

        public final String toString() {
            return "AccountNotFound";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InvalidFolderName implements CreateArchiveFolderOutcome$Error {
        public final String folderName;

        public InvalidFolderName(String str) {
            str.getClass();
            this.folderName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InvalidFolderName) && Intrinsics.areEqual(this.folderName, ((InvalidFolderName) obj).folderName);
        }

        public final int hashCode() {
            return this.folderName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("InvalidFolderName(folderName=", this.folderName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LocalFolderCreationError implements CreateArchiveFolderOutcome$Error {
        public final String folderName;

        public LocalFolderCreationError(String str) {
            str.getClass();
            this.folderName = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LocalFolderCreationError) && Intrinsics.areEqual(this.folderName, ((LocalFolderCreationError) obj).folderName);
        }

        public final int hashCode() {
            return this.folderName.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("LocalFolderCreationError(folderName=", this.folderName, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnhandledError implements CreateArchiveFolderOutcome$Error {
        public final MessagingException throwable;

        public UnhandledError(MessagingException messagingException) {
            this.throwable = messagingException;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnhandledError) && this.throwable.equals(((UnhandledError) obj).throwable);
        }

        public final int hashCode() {
            return this.throwable.hashCode();
        }

        public final String toString() {
            return "UnhandledError(throwable=" + this.throwable + ")";
        }
    }
}
