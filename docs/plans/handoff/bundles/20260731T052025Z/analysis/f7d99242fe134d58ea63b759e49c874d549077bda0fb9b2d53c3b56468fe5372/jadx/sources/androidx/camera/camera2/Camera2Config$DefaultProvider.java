package androidx.camera.camera2;

import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.AutoValue_Config_Option;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2Config$DefaultProvider implements CameraXConfig.Provider {
    @Override // androidx.camera.core.CameraXConfig.Provider
    public CameraXConfig getCameraXConfig() {
        CameraFactoryProvider cameraFactoryProvider = new CameraFactoryProvider();
        Preview.Builder builder = new Preview.Builder(3);
        AutoValue_Config_Option autoValue_Config_Option = CameraXConfig.OPTION_CAMERA_FACTORY_PROVIDER;
        MutableOptionsBundle mutableOptionsBundle = builder.mMutableConfig;
        mutableOptionsBundle.insertOption(autoValue_Config_Option, cameraFactoryProvider);
        mutableOptionsBundle.insertOption(CameraXConfig.OPTION_DEVICE_SURFACE_MANAGER_PROVIDER, new Camera2Config$Companion$$ExternalSyntheticLambda0());
        mutableOptionsBundle.insertOption(CameraXConfig.OPTION_USECASE_CONFIG_FACTORY_PROVIDER, new Camera2Config$Companion$$ExternalSyntheticLambda1());
        mutableOptionsBundle.insertOption(CameraXConfig.OPTION_REPEATING_STREAM_FORCED, Boolean.TRUE);
        return new CameraXConfig(OptionsBundle.from(mutableOptionsBundle));
    }
}
