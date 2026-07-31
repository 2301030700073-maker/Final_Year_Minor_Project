package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.Metadata;
import androidx.room.util.DBUtil;
import java.util.HashMap;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CameraPipeKeys {
    public static final Metadata.Key camera2CaptureRequestTag;
    public static final Metadata.Key camera2ExtensionMode;
    public static final Metadata.Key ignore3ARequiredParameters;

    static {
        HashMap hashMap = Metadata.Key.keys;
        camera2ExtensionMode = DBUtil.create("androidx.camera.camera2.pipe.extensionMode", Reflection.getOrCreateKotlinClass(Integer.class));
        camera2CaptureRequestTag = DBUtil.create("androidx.camera.camera2.pipe.captureRequestTag", Reflection.getOrCreateKotlinClass(Object.class));
        ignore3ARequiredParameters = DBUtil.create("androidx.camera.camera2.pipe.ignore3ARequiredParameters", Reflection.getOrCreateKotlinClass(Boolean.class));
    }
}
