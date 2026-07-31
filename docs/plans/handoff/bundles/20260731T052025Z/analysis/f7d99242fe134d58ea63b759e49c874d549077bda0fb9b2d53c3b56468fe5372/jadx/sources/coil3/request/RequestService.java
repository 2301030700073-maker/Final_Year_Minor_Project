package coil3.request;

import coil3.memory.MemoryCache;
import coil3.size.Size;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RequestService {
    boolean isCacheValueValidForHardware(ImageRequest imageRequest, MemoryCache.Value value);

    Options options(ImageRequest imageRequest, Size size);

    RequestDelegate requestDelegate(ImageRequest imageRequest, Job job, boolean z);

    Options updateOptions(Options options);

    ImageRequest updateRequest(ImageRequest imageRequest);
}
