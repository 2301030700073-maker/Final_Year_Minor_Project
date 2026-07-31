package androidx.datastore.core;

import androidx.datastore.preferences.core.PreferencesFileSerializer;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class FileReadScope implements Closeable {
    public final AtomicBoolean closed = new AtomicBoolean(false);
    public final File file;
    public final PreferencesFileSerializer serializer;

    public FileReadScope(File file, PreferencesFileSerializer preferencesFileSerializer) {
        this.file = file;
        this.serializer = preferencesFileSerializer;
    }

    @Override // androidx.datastore.core.Closeable
    public final void close() {
        this.closed.set(true);
    }
}
