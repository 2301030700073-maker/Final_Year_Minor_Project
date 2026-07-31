package androidx.camera.camera2.compat.quirk;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.room.util.RelationUtil;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExtraCroppingQuirk implements Quirk {
    public static final LinkedHashMap SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP = MapsKt__MapsKt.mutableMapOf(new Pair("SM-T580", null), new Pair("SM-J710MN", new Range(21, 26)), new Pair("SM-A320FL", null), new Pair("SM-G570M", null), new Pair("SM-G610F", null), new Pair("SM-G610M", new Range(21, 26)));

    public static Size getVerifiedResolution(SurfaceConfig.ConfigType configType) {
        if (!RelationUtil.isSamsungDistortion$camera_camera2()) {
            return null;
        }
        int ordinal = configType.ordinal();
        if (ordinal == 0) {
            return new Size(1920, 1080);
        }
        if (ordinal == 1) {
            return new Size(1280, 720);
        }
        if (ordinal != 2) {
            return null;
        }
        return new Size(3264, 1836);
    }
}
