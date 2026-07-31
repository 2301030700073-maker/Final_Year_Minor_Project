package j$.nio.file.spi;

import j$.nio.file.CopyOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.a0;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.n;
import j$.nio.file.h;
import j$.nio.file.m;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.DirectoryStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class d {
    public static volatile List b = null;
    public static boolean c = false;
    public static final Object a = new Object();
    public static final Set d = j$.com.android.tools.r8.a.I(new Object[]{a0.CREATE, a0.TRUNCATE_EXISTING, a0.WRITE});

    public d() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new RuntimePermission("fileSystemProvider"));
        }
    }

    public abstract void A(Path path, String str, Object obj, LinkOption... linkOptionArr);

    public abstract void a(Path path, j$.nio.file.a... aVarArr);

    public abstract void b(Path path, Path path2, CopyOption... copyOptionArr);

    public abstract void c(Path path, FileAttribute... fileAttributeArr);

    public abstract void d(Path path, Path path2);

    public abstract void e(Path path, Path path2, FileAttribute... fileAttributeArr);

    public abstract void f(Path path);

    public abstract boolean g(Path path);

    public abstract n h(Path path, Class cls, LinkOption... linkOptionArr);

    public abstract j$.nio.file.d i(Path path);

    public abstract h j(URI uri);

    public abstract Path k(URI uri);

    public abstract String l();

    public abstract boolean m(Path path);

    public abstract boolean n(Path path, Path path2);

    public abstract void o(Path path, Path path2, CopyOption... copyOptionArr);

    public abstract j$.nio.channels.a p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr);

    public abstract SeekableByteChannel q(Path path, Set set, FileAttribute... fileAttributeArr);

    public abstract DirectoryStream r(Path path, DirectoryStream.Filter filter);

    public abstract FileChannel s(Path path, Set set, FileAttribute... fileAttributeArr);

    public h t(Path path, Map map) {
        throw new UnsupportedOperationException();
    }

    public abstract h u(URI uri, Map map);

    public InputStream v(Path path, OpenOption... openOptionArr) {
        Set hashSet;
        if (openOptionArr.length > 0) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == a0.APPEND || openOption == a0.WRITE) {
                    m.f("'", openOption, "' not allowed");
                    return null;
                }
            }
        }
        Set set = Files.a;
        if (openOptionArr.length == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet();
            Collections.addAll(hashSet, openOptionArr);
        }
        return Channels.newInputStream(Files.a(path).q(path, hashSet, new FileAttribute[0]));
    }

    public OutputStream w(Path path, OpenOption... openOptionArr) {
        Set set;
        if (openOptionArr.length == 0) {
            set = d;
        } else {
            HashSet hashSet = new HashSet();
            for (OpenOption openOption : openOptionArr) {
                if (openOption == a0.READ) {
                    m.c("READ not allowed");
                    return null;
                }
                hashSet.add(openOption);
            }
            hashSet.add(a0.WRITE);
            set = hashSet;
        }
        return Channels.newOutputStream(q(path, set, new FileAttribute[0]));
    }

    public abstract BasicFileAttributes x(Path path, Class cls, LinkOption... linkOptionArr);

    public abstract Map y(Path path, String str, LinkOption... linkOptionArr);

    public abstract Path z(Path path);
}
