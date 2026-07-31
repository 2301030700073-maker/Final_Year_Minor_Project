package androidx.camera.core;

import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Preview$$ExternalSyntheticLambda2 implements SessionConfig.ErrorListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Preview$$ExternalSyntheticLambda2(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
    public final void onError(SessionConfig sessionConfig) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Preview preview = (Preview) obj;
                if (preview.getCamera() != null) {
                    preview.updateConfigAndOutput((PreviewConfig) preview.mCurrentConfig, preview.mAttachedStreamSpec);
                    preview.notifyReset();
                    break;
                }
                break;
            case 1:
                ImageCapture imageCapture = (ImageCapture) obj;
                if (imageCapture.getCamera() != null) {
                    TakePictureManagerImpl takePictureManagerImpl = imageCapture.mTakePictureManager;
                    takePictureManagerImpl.getClass();
                    Validate.checkMainThread();
                    takePictureManagerImpl.mPaused = true;
                    imageCapture.clearPipeline(true);
                    String cameraId = imageCapture.getCameraId();
                    ImageCaptureConfig imageCaptureConfig = (ImageCaptureConfig) imageCapture.mCurrentConfig;
                    AutoValue_StreamSpec autoValue_StreamSpec = imageCapture.mAttachedStreamSpec;
                    autoValue_StreamSpec.getClass();
                    SessionConfig.Builder createPipeline = imageCapture.createPipeline(cameraId, imageCaptureConfig, autoValue_StreamSpec);
                    imageCapture.mSessionConfigBuilder = createPipeline;
                    Object[] objArr = {createPipeline.build()};
                    ArrayList arrayList = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList.add(obj2);
                    imageCapture.updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
                    imageCapture.notifyReset();
                    TakePictureManagerImpl takePictureManagerImpl2 = imageCapture.mTakePictureManager;
                    takePictureManagerImpl2.getClass();
                    Validate.checkMainThread();
                    takePictureManagerImpl2.mPaused = false;
                    takePictureManagerImpl2.issueNextRequest();
                    break;
                }
                break;
            default:
                Iterator it = ((SessionConfig.ValidatingBuilder) obj).mErrorListeners.iterator();
                while (it.hasNext()) {
                    ((SessionConfig.ErrorListener) it.next()).onError(sessionConfig);
                }
                break;
        }
    }
}
