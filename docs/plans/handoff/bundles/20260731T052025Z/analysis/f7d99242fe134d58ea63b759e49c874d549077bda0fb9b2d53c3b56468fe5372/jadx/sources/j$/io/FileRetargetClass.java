package j$.io;

import j$.nio.file.Path;
import j$.nio.file.i;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class FileRetargetClass {
    public static Path toPath(File file) {
        return i.a.getPath(file.getPath(), new String[0]);
    }
}
