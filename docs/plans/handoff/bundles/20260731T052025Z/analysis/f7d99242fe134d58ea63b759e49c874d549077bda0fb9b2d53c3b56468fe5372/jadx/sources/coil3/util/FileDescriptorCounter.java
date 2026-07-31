package coil3.util;

import android.os.SystemClock;
import coil3.util.Logger;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class FileDescriptorCounter {
    private static final int FILE_DESCRIPTOR_CHECK_INTERVAL_MILLIS = 30000;
    private static final int FILE_DESCRIPTOR_LIMIT = 800;
    private static final String TAG = "FileDescriptorCounter";
    public static final FileDescriptorCounter INSTANCE = new FileDescriptorCounter();
    private static final File fileDescriptorList = new File("/proc/self/fd");
    private static final int FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES = 30;
    private static int decodesSinceLastFileDescriptorCheck = FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES;
    private static long lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
    private static boolean hasAvailableFileDescriptors = true;

    private FileDescriptorCounter() {
    }

    private final boolean checkFileDescriptors() {
        int i = decodesSinceLastFileDescriptorCheck;
        decodesSinceLastFileDescriptorCheck = i + 1;
        return i >= FILE_DESCRIPTOR_CHECK_INTERVAL_DECODES || SystemClock.uptimeMillis() > lastFileDescriptorCheckTimestamp + 30000;
    }

    public final synchronized boolean hasAvailableFileDescriptors(Logger logger) {
        try {
            if (checkFileDescriptors()) {
                decodesSinceLastFileDescriptorCheck = 0;
                lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
                String[] list = fileDescriptorList.list();
                if (list == null) {
                    list = new String[0];
                }
                int length = list.length;
                boolean z = length < FILE_DESCRIPTOR_LIMIT;
                hasAvailableFileDescriptors = z;
                if (!z && logger != null) {
                    Logger.Level level = Logger.Level.Warn;
                    if (logger.getMinLevel().compareTo(level) <= 0) {
                        logger.log(TAG, level, "Unable to allocate more hardware bitmaps. Number of used file descriptors: " + length, null);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return hasAvailableFileDescriptors;
    }
}
