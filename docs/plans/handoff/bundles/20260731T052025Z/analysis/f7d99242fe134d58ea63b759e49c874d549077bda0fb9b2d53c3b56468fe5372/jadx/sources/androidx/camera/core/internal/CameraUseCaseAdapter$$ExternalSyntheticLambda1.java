package androidx.camera.core.internal;

import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.SurfaceOutputImpl;
import androidx.camera.core.processing.concurrent.DualOpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.core.util.Consumer;
import androidx.window.layout.adapter.sidecar.SidecarCompat;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraUseCaseAdapter$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ CameraUseCaseAdapter$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Surface) obj3).release();
                ((SurfaceTexture) obj2).release();
                break;
            case 1:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj3;
                SurfaceOutputImpl surfaceOutputImpl = (SurfaceOutputImpl) obj2;
                surfaceOutputImpl.close();
                Surface surface = (Surface) defaultSurfaceProcessor.mOutputSurfaces.remove(surfaceOutputImpl);
                if (surface != null) {
                    OpenGlRenderer openGlRenderer = defaultSurfaceProcessor.mGlRenderer;
                    GLUtils.checkInitializedOrThrow((AtomicBoolean) openGlRenderer.mInitialized, true);
                    GLUtils.checkGlThreadOrThrow((Thread) openGlRenderer.mGlThread);
                    openGlRenderer.removeOutputSurfaceInternal(surface, true);
                    break;
                }
                break;
            case 2:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj3;
                SurfaceOutputImpl surfaceOutputImpl2 = (SurfaceOutputImpl) obj2;
                surfaceOutputImpl2.close();
                Surface surface2 = (Surface) dualSurfaceProcessor.mOutputSurfaces.remove(surfaceOutputImpl2);
                if (surface2 != null) {
                    DualOpenGlRenderer dualOpenGlRenderer = dualSurfaceProcessor.mGlRenderer;
                    GLUtils.checkInitializedOrThrow((AtomicBoolean) dualOpenGlRenderer.mInitialized, true);
                    GLUtils.checkGlThreadOrThrow((Thread) dualOpenGlRenderer.mGlThread);
                    dualOpenGlRenderer.removeOutputSurfaceInternal(surface2, true);
                    break;
                }
                break;
            default:
                SidecarCompat sidecarCompat = (SidecarCompat) obj3;
                Activity activity = (Activity) obj2;
                ImapSync imapSync = sidecarCompat.extensionCallback;
                if (imapSync != null) {
                    imapSync.onWindowLayoutChanged(activity, sidecarCompat.getWindowLayoutInfo(activity));
                    break;
                }
                break;
        }
    }
}
