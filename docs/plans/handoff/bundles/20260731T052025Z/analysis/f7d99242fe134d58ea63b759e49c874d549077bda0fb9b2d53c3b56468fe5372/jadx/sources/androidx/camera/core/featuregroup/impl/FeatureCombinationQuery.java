package androidx.camera.core.featuregroup.impl;

import androidx.camera.core.impl.SessionConfig;
import androidx.collection.internal.Lock;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FeatureCombinationQuery {
    public static final Lock NO_OP_FEATURE_COMBINATION_QUERY = new Lock();

    boolean isSupported(SessionConfig sessionConfig);
}
