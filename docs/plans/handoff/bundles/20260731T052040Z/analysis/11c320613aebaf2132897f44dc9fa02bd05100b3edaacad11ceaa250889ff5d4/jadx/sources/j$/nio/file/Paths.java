package j$.nio.file;

import java.net.URI;
import java.nio.file.FileSystemNotFoundException;
import java.security.AccessController;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class Paths {
    public static Path get(URI uri) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            m.c("Missing scheme");
            return null;
        }
        if (scheme.equalsIgnoreCase("file")) {
            return j.a.C().k(uri);
        }
        if (j$.nio.file.spi.d.b == null) {
            j$.nio.file.spi.d C = j.a.C();
            synchronized (j$.nio.file.spi.d.a) {
                try {
                    if (j$.nio.file.spi.d.b == null) {
                        if (j$.nio.file.spi.d.c) {
                            throw new Error("Circular loading of installed providers detected");
                        }
                        j$.nio.file.spi.d.c = true;
                        List list = (List) AccessController.doPrivileged(new j$.nio.file.spi.a(0));
                        list.add(0, C);
                        j$.nio.file.spi.d.b = Collections.unmodifiableList(list);
                    }
                } finally {
                }
            }
        }
        for (j$.nio.file.spi.d dVar : j$.nio.file.spi.d.b) {
            if (dVar.l().equalsIgnoreCase(scheme)) {
                return dVar.k(uri);
            }
        }
        throw new FileSystemNotFoundException("Provider \"" + scheme + "\" not installed");
    }

    public static Path get(String str, String... strArr) {
        return j.a.j(str, strArr);
    }
}
