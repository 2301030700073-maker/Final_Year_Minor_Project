package coil3;

import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.fetch.ByteBufferFetcher;
import coil3.fetch.JarFileFetcher;
import coil3.map.FileMapper;
import java.io.File;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImageLoader_jvmCommonKt {
    public static final ComponentRegistry.Builder addJvmComponents(ComponentRegistry.Builder builder, RealImageLoader.Options options) {
        return builder.add(new FileMapper(), Reflection.getOrCreateKotlinClass(File.class)).add(new JarFileFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new ByteBufferFetcher.Factory(), Reflection.getOrCreateKotlinClass(ByteBuffer.class));
    }
}
