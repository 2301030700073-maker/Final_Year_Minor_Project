package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import okhttp3.MultipartBody;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RuntimeModuleData {
    public final ActivityGalleryBinding deserialization;
    public final MultipartBody.Builder packagePartScopeCache;

    public RuntimeModuleData(ActivityGalleryBinding activityGalleryBinding, MultipartBody.Builder builder) {
        this.deserialization = activityGalleryBinding;
        this.packagePartScopeCache = builder;
    }
}
