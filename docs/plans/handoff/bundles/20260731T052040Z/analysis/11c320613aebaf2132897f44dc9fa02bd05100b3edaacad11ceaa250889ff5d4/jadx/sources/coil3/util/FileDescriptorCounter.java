package coil3.util;

import android.os.SystemClock;
import java.io.File;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FileDescriptorCounter {
    public static final FileDescriptorCounter INSTANCE = new FileDescriptorCounter();
    public static final File fileDescriptorList = new File("/proc/self/fd");
    public static int decodesSinceLastFileDescriptorCheck = 30;
    public static long lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
    public static boolean hasAvailableFileDescriptors = true;
}
