package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DeviceQuirks {
    public static volatile Quirks all;

    static {
        QuirkSettingsHolder quirkSettingsHolder = QuirkSettingsHolder.sInstance;
        quirkSettingsHolder.mObservable.addObserver(Util.directExecutor(), new QuirkSettingsHolder.ObserverToConsumerAdapter(0, new SessionConfig$$ExternalSyntheticLambda0(1)));
    }

    public static final Quirks getAll() {
        Quirks quirks = all;
        if (quirks != null) {
            return quirks;
        }
        Intrinsics.throwUninitializedPropertyAccessException("all");
        throw null;
    }
}
