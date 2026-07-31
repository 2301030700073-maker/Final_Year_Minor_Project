package java.nio.file;

import java.io.Closeable;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface DirectoryStream<T> extends Closeable, Iterable<T> {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Filter<T> {
        /* renamed from: accept */
        boolean mo969accept(T t);
    }

    Iterator<T> iterator();
}
