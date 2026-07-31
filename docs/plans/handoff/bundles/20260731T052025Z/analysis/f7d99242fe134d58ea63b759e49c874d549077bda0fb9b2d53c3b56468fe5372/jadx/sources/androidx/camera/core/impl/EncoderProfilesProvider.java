package androidx.camera.core.impl;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface EncoderProfilesProvider {
    public static final List QUALITY_HIGH_TO_LOW = DesugarCollections.unmodifiableList(Arrays.asList(13, 10, 8, 11, 6, 5, 4, 9, 3, 7, 2));

    AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy getAll(int i);

    boolean hasProfile(int i);
}
