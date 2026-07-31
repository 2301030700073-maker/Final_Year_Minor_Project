package androidx.camera.view.internal.compat.quirk;

import androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DeviceQuirks {
    public static volatile Quirks sQuirks;

    static {
        QuirkSettingsHolder quirkSettingsHolder = QuirkSettingsHolder.sInstance;
        quirkSettingsHolder.mObservable.addObserver(Util.directExecutor(), new QuirkSettingsHolder.ObserverToConsumerAdapter(0, new SessionConfig$$ExternalSyntheticLambda0(6)));
    }
}
