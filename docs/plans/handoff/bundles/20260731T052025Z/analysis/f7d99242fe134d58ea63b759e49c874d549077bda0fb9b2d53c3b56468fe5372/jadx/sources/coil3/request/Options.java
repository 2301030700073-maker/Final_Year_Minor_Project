package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.FileSystems_nonJsCommonKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Options {
    private final Context context;
    private final String diskCacheKey;
    private final CachePolicy diskCachePolicy;
    private final Extras extras;
    private final FileSystem fileSystem;
    private final CachePolicy memoryCachePolicy;
    private final CachePolicy networkCachePolicy;
    private final Precision precision;
    private final Scale scale;
    private final Size size;

    public /* synthetic */ Options(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? Size.ORIGINAL : size, (i & 4) != 0 ? Scale.FIT : scale, (i & 8) != 0 ? Precision.EXACT : precision, (i & 16) != 0 ? null : str, (i & 32) != 0 ? FileSystems_nonJsCommonKt.defaultFileSystem() : fileSystem, (i & 64) != 0 ? CachePolicy.ENABLED : cachePolicy, (i & 128) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i & 256) != 0 ? CachePolicy.ENABLED : cachePolicy3, (i & 512) != 0 ? Extras.EMPTY : extras);
    }

    public static /* synthetic */ Options copy$default(Options options, Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras, int i, Object obj) {
        if ((i & 1) != 0) {
            context = options.context;
        }
        if ((i & 2) != 0) {
            size = options.size;
        }
        if ((i & 4) != 0) {
            scale = options.scale;
        }
        if ((i & 8) != 0) {
            precision = options.precision;
        }
        if ((i & 16) != 0) {
            str = options.diskCacheKey;
        }
        if ((i & 32) != 0) {
            fileSystem = options.fileSystem;
        }
        if ((i & 64) != 0) {
            cachePolicy = options.memoryCachePolicy;
        }
        if ((i & 128) != 0) {
            cachePolicy2 = options.diskCachePolicy;
        }
        if ((i & 256) != 0) {
            cachePolicy3 = options.networkCachePolicy;
        }
        if ((i & 512) != 0) {
            extras = options.extras;
        }
        CachePolicy cachePolicy4 = cachePolicy3;
        Extras extras2 = extras;
        CachePolicy cachePolicy5 = cachePolicy;
        CachePolicy cachePolicy6 = cachePolicy2;
        String str2 = str;
        FileSystem fileSystem2 = fileSystem;
        return options.copy(context, size, scale, precision, str2, fileSystem2, cachePolicy5, cachePolicy6, cachePolicy4, extras2);
    }

    public final Options copy(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras) {
        return new Options(context, size, scale, precision, str, fileSystem, cachePolicy, cachePolicy2, cachePolicy3, extras);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Options)) {
            return false;
        }
        Options options = (Options) obj;
        return Intrinsics.areEqual(this.context, options.context) && Intrinsics.areEqual(this.size, options.size) && this.scale == options.scale && this.precision == options.precision && Intrinsics.areEqual(this.diskCacheKey, options.diskCacheKey) && Intrinsics.areEqual(this.fileSystem, options.fileSystem) && this.memoryCachePolicy == options.memoryCachePolicy && this.diskCachePolicy == options.diskCachePolicy && this.networkCachePolicy == options.networkCachePolicy && Intrinsics.areEqual(this.extras, options.extras);
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getDiskCacheKey() {
        return this.diskCacheKey;
    }

    public final CachePolicy getDiskCachePolicy() {
        return this.diskCachePolicy;
    }

    public final Extras getExtras() {
        return this.extras;
    }

    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    public final CachePolicy getMemoryCachePolicy() {
        return this.memoryCachePolicy;
    }

    public final CachePolicy getNetworkCachePolicy() {
        return this.networkCachePolicy;
    }

    public final Precision getPrecision() {
        return this.precision;
    }

    public final Scale getScale() {
        return this.scale;
    }

    public final Size getSize() {
        return this.size;
    }

    public int hashCode() {
        int hashCode = (this.precision.hashCode() + ((this.scale.hashCode() + ((this.size.hashCode() + (this.context.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.diskCacheKey;
        return this.extras.hashCode() + ((this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.fileSystem.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "Options(context=" + this.context + ", size=" + this.size + ", scale=" + this.scale + ", precision=" + this.precision + ", diskCacheKey=" + this.diskCacheKey + ", fileSystem=" + this.fileSystem + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", extras=" + this.extras + ")";
    }

    public Options(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras) {
        this.context = context;
        this.size = size;
        this.scale = scale;
        this.precision = precision;
        this.diskCacheKey = str;
        this.fileSystem = fileSystem;
        this.memoryCachePolicy = cachePolicy;
        this.diskCachePolicy = cachePolicy2;
        this.networkCachePolicy = cachePolicy3;
        this.extras = extras;
    }
}
