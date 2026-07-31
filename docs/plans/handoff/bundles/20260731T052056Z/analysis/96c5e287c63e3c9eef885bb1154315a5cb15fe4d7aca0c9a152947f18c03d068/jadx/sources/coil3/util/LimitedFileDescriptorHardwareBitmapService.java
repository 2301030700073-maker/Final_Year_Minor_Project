package coil3.util;

import android.os.SystemClock;
import coil3.size.Dimension;
import coil3.size.Size;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LimitedFileDescriptorHardwareBitmapService implements HardwareBitmapService {
    @Override // coil3.util.HardwareBitmapService
    public final boolean allowHardwareMainThread(Size size) {
        Dimension dimension = size.width;
        if ((dimension instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension).px : Integer.MAX_VALUE) <= 100) {
            return false;
        }
        Dimension dimension2 = size.height;
        return (dimension2 instanceof Dimension.Pixels ? ((Dimension.Pixels) dimension2).px : Integer.MAX_VALUE) > 100;
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
