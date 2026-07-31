package j$.nio.channels;

import j$.desugar.sun.nio.fs.e;
import java.nio.channels.FileChannel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
}
