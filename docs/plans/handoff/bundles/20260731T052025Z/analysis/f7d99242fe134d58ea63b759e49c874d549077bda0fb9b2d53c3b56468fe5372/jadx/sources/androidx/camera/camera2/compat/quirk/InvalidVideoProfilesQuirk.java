package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InvalidVideoProfilesQuirk implements Quirk {
    public static final List AFFECTED_PIXEL_MODELS = IntOffsetKt.listOf((Object[]) new String[]{"pixel 4", "pixel 4a", "pixel 4a (5g)", "pixel 4 xl", "pixel 5", "pixel 5a", "pixel 6", "pixel 6a", "pixel 6 pro", "pixel 7", "pixel 7 pro"});
    public static final List AFFECTED_ONE_PLUS_MODELS = IntOffsetKt.listOf((Object[]) new String[]{"cph2417", "cph2451"});
    public static final List AFFECTED_OPPO_MODELS = IntOffsetKt.listOf((Object[]) new String[]{"cph2437", "cph2525", "pht110"});
}
