package j$.nio.file;

import java.net.URI;
import java.security.AccessController;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class i {
    public static final FileSystem a = ((j$.nio.file.spi.c) AccessController.doPrivileged(new h())).j(URI.create("file:///"));
}
