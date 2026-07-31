package j$.adapter;

import android.os.StrictMode;
import j$.nio.file.spi.c;
import j$.nio.file.spi.d;
import java.net.URI;
import java.nio.file.FileSystems;
import java.nio.file.spi.FileSystemProvider;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class b {
    public static final d a;

    static {
        d dVar;
        if (a.b) {
            FileSystemProvider provider = FileSystems.getDefault().provider();
            int i = j$.nio.file.spi.b.f;
            dVar = provider == null ? null : provider instanceof c ? ((c) provider).a : new j$.nio.file.spi.b(provider);
        } else {
            if (a.c) {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitDiskReads().build());
            }
            dVar = j$.desugar.sun.nio.fs.d.a;
        }
        a = dVar;
        dVar.j(URI.create("file:///"));
    }
}
