package coil3.network;

import kotlin.coroutines.Continuation;
import okio.BufferedSink;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NetworkResponseBody extends AutoCloseable {
    Object writeTo(BufferedSink bufferedSink, Continuation continuation);

    Object writeTo(FileSystem fileSystem, Path path, Continuation continuation);
}
