package net.thunderbird.core.file;

import android.content.ContentResolver;
import com.eygraber.uri.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlinx.io.Buffer;
import kotlinx.io.InputStreamSource;
import kotlinx.io.JvmCoreKt;
import kotlinx.io.OutputStreamSink;
import net.thunderbird.core.file.FileOperationError;
import net.thunderbird.core.file.command.CopyCommand$FileOperationException;
import net.thunderbird.core.outcome.Outcome;
import org.minidns.util.Base64;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFileManager {
    public final AndroidFileSystemManager fileSystem;

    public DefaultFileManager(AndroidFileSystemManager androidFileSystemManager) {
        this.fileSystem = androidFileSystemManager;
    }

    public final Outcome copy(Uri uri, Uri uri2) {
        InputStreamSource inputStreamSource;
        OutputStreamSink outputStreamSink;
        Outcome.Failure failure;
        uri.getClass();
        uri2.getClass();
        ContentResolver contentResolver = this.fileSystem.contentResolver;
        InputStream openInputStream = contentResolver.openInputStream(Util.toAndroidUri(uri));
        if (openInputStream != null) {
            int i = JvmCoreKt.$r8$clinit;
            inputStreamSource = new InputStreamSource(openInputStream);
        } else {
            inputStreamSource = null;
        }
        OutputStream openOutputStream = contentResolver.openOutputStream(Util.toAndroidUri(uri2), "wt");
        if (openOutputStream != null) {
            int i2 = JvmCoreKt.$r8$clinit;
            outputStreamSink = new OutputStreamSink(openOutputStream);
        } else {
            outputStreamSink = null;
        }
        if (inputStreamSource == null) {
            return new Outcome.Failure(new FileOperationError.Unavailable(uri, "Unable to open source: " + uri), null);
        }
        if (outputStreamSink == null) {
            return new Outcome.Failure(new FileOperationError.Unavailable(uri2, "Unable to open destination: " + uri2), null);
        }
        Buffer buffer = new Buffer();
        while (true) {
            try {
                try {
                    try {
                        try {
                            long readAtMostTo = inputStreamSource.readAtMostTo(buffer);
                            if (readAtMostTo <= 0) {
                                try {
                                    outputStreamSink.flush();
                                    return new Outcome.Success(Unit.INSTANCE);
                                } catch (IOException e) {
                                    throw new CopyCommand$FileOperationException(new FileOperationError.WriteFailed(uri2, e.getMessage()), e);
                                }
                            }
                            try {
                                outputStreamSink.write(buffer, readAtMostTo);
                            } catch (IOException e2) {
                                throw new CopyCommand$FileOperationException(new FileOperationError.WriteFailed(uri2, e2.getMessage()), e2);
                            }
                        } catch (CopyCommand$FileOperationException e3) {
                            failure = new Outcome.Failure(e3.error, e3.cause);
                            return failure;
                        }
                    } catch (IOException e4) {
                        throw new CopyCommand$FileOperationException(new FileOperationError.ReadFailed(uri, e4.getMessage()), e4);
                    }
                } catch (IOException e5) {
                    failure = new Outcome.Failure(new FileOperationError.Unknown(e5.getMessage()), e5);
                    return failure;
                }
            } finally {
                Base64.closeQuietly(inputStreamSource, outputStreamSink);
            }
        }
    }

    public final Outcome delete(Uri uri) {
        AndroidFileSystemManager androidFileSystemManager = this.fileSystem;
        Unit unit = Unit.INSTANCE;
        try {
            androidFileSystemManager.delete(uri);
            return new Outcome.Success(unit);
        } catch (FileNotFoundException unused) {
            return new Outcome.Success(unit);
        } catch (IOException e) {
            String message = e.getMessage();
            if (message == null) {
                message = "Unable to delete file at: " + uri;
            }
            return new Outcome.Failure(new FileOperationError.Unavailable(uri, message), e);
        }
    }
}
