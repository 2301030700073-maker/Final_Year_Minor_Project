package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZslDisablerQuirk implements Quirk {
    public static final List AFFECTED_SAMSUNG_MODEL = IntOffsetKt.listOf((Object[]) new String[]{"SM-F936", "SM-S901U", "SM-S908U", "SM-S908U1", "SM-F721U1", "SM-S928U1"});
    public static final List AFFECTED_XIAOMI_MODEL = IntOffsetKt.listOf("MI 8");
}
