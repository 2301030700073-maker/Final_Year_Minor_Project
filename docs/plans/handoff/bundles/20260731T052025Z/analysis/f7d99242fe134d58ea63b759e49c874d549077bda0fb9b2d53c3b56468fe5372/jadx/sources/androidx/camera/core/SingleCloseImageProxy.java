package androidx.camera.core;

import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleCloseImageProxy extends ForwardingImageProxy {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object mClosed;

    public SingleCloseImageProxy(ImageProxy imageProxy, ImageAnalysisNonBlockingAnalyzer imageAnalysisNonBlockingAnalyzer) {
        super(imageProxy);
        this.mClosed = new WeakReference(imageAnalysisNonBlockingAnalyzer);
        addOnImageCloseListener(new SafeCloseImageReaderProxy$$ExternalSyntheticLambda1(1, this));
    }

    @Override // androidx.camera.core.ForwardingImageProxy, java.lang.AutoCloseable
    public void close() {
        switch (this.$r8$classId) {
            case 0:
                if (!((AtomicBoolean) this.mClosed).getAndSet(true)) {
                    super.close();
                    break;
                }
                break;
            default:
                super.close();
                break;
        }
    }

    public SingleCloseImageProxy(ImageProxy imageProxy) {
        super(imageProxy);
        this.mClosed = new AtomicBoolean(false);
    }
}
