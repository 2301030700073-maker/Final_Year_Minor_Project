package j$.adapter;

import android.os.StrictMode;
import j$.desugar.sun.nio.fs.d;
import j$.nio.file.spi.c;
import java.net.URI;
import java.nio.file.FileSystems;
import java.nio.file.spi.FileSystemProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class b {
    public static final c a;

    static {
        c cVar;
        if (a.b) {
            FileSystemProvider provider = FileSystems.getDefault().provider();
            int i = j$.nio.file.spi.a.c;
            cVar = provider == null ? null : provider instanceof j$.nio.file.spi.b ? ((j$.nio.file.spi.b) provider).a : new j$.nio.file.spi.a(provider);
        } else {
            if (a.c) {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitDiskReads().build());
            }
            cVar = d.a;
        }
        a = cVar;
        cVar.j(URI.create("file:///"));
    }
}
