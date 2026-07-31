package coil3.util;

import coil3.size.Dimension;
import coil3.size.Size;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class LimitedFileDescriptorHardwareBitmapService implements HardwareBitmapService {
    public static final Companion Companion = new Companion(null);
    private static final int MIN_SIZE_DIMENSION = 100;
    private final Logger logger;

    public LimitedFileDescriptorHardwareBitmapService(Logger logger) {
        this.logger = logger;
    }

    @Override // coil3.util.HardwareBitmapService
    public boolean allowHardwareMainThread(Size size) {
        Dimension width = size.getWidth();
        if ((width instanceof Dimension.Pixels ? ((Dimension.Pixels) width).m908unboximpl() : Integer.MAX_VALUE) <= MIN_SIZE_DIMENSION) {
            return false;
        }
        Dimension height = size.getHeight();
        return (height instanceof Dimension.Pixels ? ((Dimension.Pixels) height).m908unboximpl() : Integer.MAX_VALUE) > MIN_SIZE_DIMENSION;
    }

    @Override // coil3.util.HardwareBitmapService
    public boolean allowHardwareWorkerThread() {
        return FileDescriptorCounter.INSTANCE.hasAvailableFileDescriptors(this.logger);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
