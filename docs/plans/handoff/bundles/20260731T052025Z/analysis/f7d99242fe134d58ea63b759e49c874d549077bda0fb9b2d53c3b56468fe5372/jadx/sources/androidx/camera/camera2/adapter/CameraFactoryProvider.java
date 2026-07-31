package androidx.camera.camera2.adapter;

import android.content.Context;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_CameraThreadConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.NodeChain;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraFactoryProvider {
    public final CardView.AnonymousClass1 sharedInteropCallbacks = new CardView.AnonymousClass1(10);

    public final NodeChain newInstance(Context context, AutoValue_CameraThreadConfig autoValue_CameraThreadConfig, CameraSelector cameraSelector, long j, CameraXConfig cameraXConfig, CardView.AnonymousClass1 anonymousClass1) {
        context.getClass();
        SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new GapComposer$$ExternalSyntheticLambda0(this, context, autoValue_CameraThreadConfig, j == -1 ? null : new DurationNs(j), 2));
        if (cameraXConfig == null) {
            cameraXConfig = new CameraXConfig(OptionsBundle.from(new Preview.Builder(3).mMutableConfig));
        }
        return new NodeChain(synchronizedLazyImpl, context, autoValue_CameraThreadConfig, this.sharedInteropCallbacks, cameraSelector, anonymousClass1, cameraXConfig);
    }
}
