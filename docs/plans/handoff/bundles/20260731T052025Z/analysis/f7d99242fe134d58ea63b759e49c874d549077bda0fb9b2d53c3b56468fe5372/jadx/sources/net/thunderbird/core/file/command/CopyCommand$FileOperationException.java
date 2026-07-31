package net.thunderbird.core.file.command;

import java.io.IOException;
import net.thunderbird.core.file.FileOperationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CopyCommand$FileOperationException extends Exception {
    public final IOException cause;
    public final FileOperationError error;

    public CopyCommand$FileOperationException(FileOperationError fileOperationError, IOException iOException) {
        super(fileOperationError.toString(), iOException);
        this.error = fileOperationError;
        this.cause = iOException;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.cause;
    }
}
