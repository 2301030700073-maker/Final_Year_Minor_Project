package j$.nio.channels;

import j$.desugar.sun.nio.fs.e;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.p;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public class DesugarChannels {
    public static FileChannel convertMaybeLegacyFileChannelFromLibrary(FileChannel fileChannel) {
        if (fileChannel == null) {
            return null;
        }
        if (j$.adapter.a.a) {
            return fileChannel;
        }
        int i = e.e;
        return fileChannel instanceof e ? (e) fileChannel : new e(fileChannel, false, false, null);
    }

    public static FileChannel open(Path path, OpenOption... openOptionArr) {
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, openOptionArr);
        return j$.adapter.a.b ? FileChannel.open(p.k(path), j$.com.android.tools.r8.a.x(hashSet), j$.com.android.tools.r8.a.O(new FileAttribute[0])) : j$.com.android.tools.r8.a.V(path, hashSet);
    }
}
