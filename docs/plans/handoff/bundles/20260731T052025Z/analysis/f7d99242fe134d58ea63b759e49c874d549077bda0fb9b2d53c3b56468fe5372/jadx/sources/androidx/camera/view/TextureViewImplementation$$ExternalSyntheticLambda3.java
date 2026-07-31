package androidx.camera.view;

import androidx.camera.core.AutoValue_SurfaceRequest_Result;
import androidx.camera.core.AutoValue_SurfaceRequest_TransformationInfo;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda4;
import androidx.camera.core.processing.util.AutoValue_OutConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.util.Consumer;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.window.layout.WindowLayoutInfo;
import java.util.Map;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextureViewImplementation$$ExternalSyntheticLambda3 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ TextureViewImplementation$$ExternalSyntheticLambda3(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((CallbackToFutureAdapter$Completer) obj2).set((AutoValue_SurfaceRequest_Result) obj);
                break;
            case 1:
                AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo = (AutoValue_SurfaceRequest_TransformationInfo) obj;
                for (Map.Entry entry : ((Map) obj2).entrySet()) {
                    int i2 = autoValue_SurfaceRequest_TransformationInfo.getRotationDegrees - ((AutoValue_OutConfig) entry.getKey()).getRotationDegrees;
                    if (((AutoValue_OutConfig) entry.getKey()).isMirroring) {
                        i2 = -i2;
                    }
                    int within360 = TransformUtils.within360(i2);
                    SurfaceEdge surfaceEdge = (SurfaceEdge) entry.getValue();
                    surfaceEdge.getClass();
                    Validate.runOnMain(new SurfaceEdge$$ExternalSyntheticLambda4(surfaceEdge, within360, -1));
                }
                break;
            case 2:
                PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2 = (PreviewView$1$$ExternalSyntheticLambda2) obj2;
                Utf8.SafeProcessor.d("SurfaceViewImpl", "Safe to release surface.");
                if (previewView$1$$ExternalSyntheticLambda2 != null) {
                    previewView$1$$ExternalSyntheticLambda2.onSurfaceNotInUse();
                    break;
                }
                break;
            default:
                ((ProducerCoroutine) ((ProducerScope) obj2)).mo1016trySendJP2dKIU((WindowLayoutInfo) obj);
                break;
        }
    }
}
