package coil3.util;

import android.os.SystemClock;
import coil3.size.Dimension;
import coil3.size.Size;
import com.google.android.exoplayer2.util.Log;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LimitedFileDescriptorHardwareBitmapService implements HardwareBitmapService {
    @Override // coil3.util.HardwareBitmapService
    public final boolean allowHardwareMainThread(Size size) {
        Dimension dimension = size.width;
        boolean z = dimension instanceof Dimension.Pixels;
        int i = Log.LOG_LEVEL_OFF;
        if ((z ? ((Dimension.Pixels) dimension).px : Integer.MAX_VALUE) <= 100) {
            return false;
        }
        Dimension dimension2 = size.height;
        if (dimension2 instanceof Dimension.Pixels) {
            i = ((Dimension.Pixels) dimension2).px;
        }
        return i > 100;
    }

    @Override // coil3.util.HardwareBitmapService
    public final boolean allowHardwareWorkerThread() {
        boolean z;
        synchronized (FileDescriptorCounter.INSTANCE) {
            try {
                int i = FileDescriptorCounter.decodesSinceLastFileDescriptorCheck;
                FileDescriptorCounter.decodesSinceLastFileDescriptorCheck = i + 1;
                if (i >= 30 || SystemClock.uptimeMillis() > FileDescriptorCounter.lastFileDescriptorCheckTimestamp + 30000) {
                    FileDescriptorCounter.decodesSinceLastFileDescriptorCheck = 0;
                    FileDescriptorCounter.lastFileDescriptorCheckTimestamp = SystemClock.uptimeMillis();
                    String[] list = FileDescriptorCounter.fileDescriptorList.list();
                    if (list == null) {
                        list = new String[0];
                    }
                    FileDescriptorCounter.hasAvailableFileDescriptors = list.length < 800;
                }
                z = FileDescriptorCounter.hasAvailableFileDescriptors;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}
