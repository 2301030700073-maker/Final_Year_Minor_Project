package coil3.util;

import android.os.SystemClock;
import java.io.File;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FileDescriptorCounter {
    public static final FileDescriptorCounter INSTANCE = new FileDescriptorCounter();
    public static final File fileDescriptorList = new File("/proc/self/fd");
    public static int decodesSinceLastFileDescriptorCheck = 30;
    public static long lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
    public static boolean hasAvailableFileDescriptors = true;
}
