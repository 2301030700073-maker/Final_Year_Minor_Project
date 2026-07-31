package java.nio.file;

import java.io.Closeable;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface DirectoryStream<T> extends Closeable, Iterable<T> {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Filter<T> {
        /* renamed from: accept */
        boolean mo645accept(T t);
    }

    Iterator<T> iterator();
}
