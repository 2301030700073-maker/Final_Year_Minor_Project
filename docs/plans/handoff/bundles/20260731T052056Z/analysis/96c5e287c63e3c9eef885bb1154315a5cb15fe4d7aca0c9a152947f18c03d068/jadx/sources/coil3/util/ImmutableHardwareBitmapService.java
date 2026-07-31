package coil3.util;

import coil3.size.Size;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImmutableHardwareBitmapService implements HardwareBitmapService {
    public final boolean allowHardware;

    public ImmutableHardwareBitmapService(boolean z) {
        this.allowHardware = z;
    }

    @Override // coil3.util.HardwareBitmapService
    public final boolean allowHardwareMainThread(Size size) {
        return this.allowHardware;
    }

    @Override // coil3.util.HardwareBitmapService
    public final boolean allowHardwareWorkerThread() {
        return this.allowHardware;
    }
}
