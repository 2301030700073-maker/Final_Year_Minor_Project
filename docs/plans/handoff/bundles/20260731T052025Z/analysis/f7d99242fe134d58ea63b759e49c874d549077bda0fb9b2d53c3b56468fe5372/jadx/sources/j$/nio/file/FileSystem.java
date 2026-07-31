package j$.nio.file;

import java.io.Closeable;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class FileSystem implements Closeable {
    public abstract j$.nio.file.spi.c B();

    public abstract Set G();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract Iterable f();

    public abstract Path getPath(String str, String... strArr);

    public abstract boolean isOpen();

    public abstract w j(String str);

    public abstract Iterable l();

    public abstract String o();

    public abstract j$.nio.file.attribute.a0 q();

    public abstract boolean t();

    public abstract e0 v();
}
