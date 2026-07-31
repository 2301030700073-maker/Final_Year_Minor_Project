package androidx.camera.core;

import androidx.camera.core.ForwardingImageProxy;
import java.lang.ref.WeakReference;
import okhttp3.internal.connection.RouteSelector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SafeCloseImageReaderProxy$$ExternalSyntheticLambda1 implements ForwardingImageProxy.OnImageCloseListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SafeCloseImageReaderProxy$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void onImageClose(ForwardingImageProxy forwardingImageProxy) {
        ForwardingImageProxy.OnImageCloseListener onImageCloseListener;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                RouteSelector routeSelector = (RouteSelector) obj;
                synchronized (routeSelector.address) {
                    try {
                        int i2 = routeSelector.nextProxyIndex - 1;
                        routeSelector.nextProxyIndex = i2;
                        if (routeSelector.fastFallback && i2 == 0) {
                            routeSelector.close();
                        }
                        onImageCloseListener = (ForwardingImageProxy.OnImageCloseListener) routeSelector.inetSocketAddresses;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (onImageCloseListener != null) {
                    onImageCloseListener.onImageClose(forwardingImageProxy);
                    return;
                }
                return;
            default:
                ImageAnalysisNonBlockingAnalyzer imageAnalysisNonBlockingAnalyzer = (ImageAnalysisNonBlockingAnalyzer) ((WeakReference) ((SingleCloseImageProxy) obj).mClosed).get();
                if (imageAnalysisNonBlockingAnalyzer != null) {
                    imageAnalysisNonBlockingAnalyzer.mBackgroundExecutor.execute(new Preview$$ExternalSyntheticLambda0(10, imageAnalysisNonBlockingAnalyzer));
                    return;
                }
                return;
        }
    }
}
