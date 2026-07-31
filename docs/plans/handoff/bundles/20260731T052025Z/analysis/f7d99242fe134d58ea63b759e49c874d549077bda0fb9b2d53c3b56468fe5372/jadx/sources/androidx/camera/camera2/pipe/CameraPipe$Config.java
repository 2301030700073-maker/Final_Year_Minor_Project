package androidx.camera.camera2.pipe;

import android.content.Context;
import androidx.cardview.widget.CardView;
import com.bumptech.glide.GlideExperiments;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraPipe$Config {
    public final Context appContext;
    public final GlideExperiments cameraBackendConfig;
    public final CameraPipe$CameraInteropConfig cameraInteropConfig;
    public final CardView.AnonymousClass1 cameraMetadataConfig;
    public final CameraPipe$Flags flags;
    public final CameraPipe$ThreadConfig threadConfig;

    public CameraPipe$Config(Context context, CameraPipe$ThreadConfig cameraPipe$ThreadConfig, CameraPipe$CameraInteropConfig cameraPipe$CameraInteropConfig) {
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(11);
        GlideExperiments glideExperiments = new GlideExperiments(1);
        CameraPipe$Flags cameraPipe$Flags = new CameraPipe$Flags();
        this.appContext = context;
        this.threadConfig = cameraPipe$ThreadConfig;
        this.cameraMetadataConfig = anonymousClass1;
        this.cameraBackendConfig = glideExperiments;
        this.cameraInteropConfig = cameraPipe$CameraInteropConfig;
        this.flags = cameraPipe$Flags;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPipe$Config)) {
            return false;
        }
        CameraPipe$Config cameraPipe$Config = (CameraPipe$Config) obj;
        return Intrinsics.areEqual(this.appContext, cameraPipe$Config.appContext) && Intrinsics.areEqual(this.threadConfig, cameraPipe$Config.threadConfig) && Intrinsics.areEqual(this.cameraMetadataConfig, cameraPipe$Config.cameraMetadataConfig) && Intrinsics.areEqual(this.cameraBackendConfig, cameraPipe$Config.cameraBackendConfig) && Intrinsics.areEqual(this.cameraInteropConfig, cameraPipe$Config.cameraInteropConfig) && Intrinsics.areEqual(this.flags, cameraPipe$Config.flags);
    }

    public final int hashCode() {
        int hashCode = (this.cameraInteropConfig.hashCode() + ((this.cameraBackendConfig.hashCode() + ((this.cameraMetadataConfig.hashCode() + ((this.threadConfig.hashCode() + (this.appContext.hashCode() * 31)) * 31)) * 31)) * 31)) * 961;
        this.flags.getClass();
        return (1237 + hashCode) * 31;
    }

    public final String toString() {
        return "Config(appContext=" + this.appContext + ", threadConfig=" + this.threadConfig + ", cameraMetadataConfig=" + this.cameraMetadataConfig + ", cameraBackendConfig=" + this.cameraBackendConfig + ", cameraInteropConfig=" + this.cameraInteropConfig + ", imageSources=null, flags=" + this.flags + ", platformApiCompat=null)";
    }
}
