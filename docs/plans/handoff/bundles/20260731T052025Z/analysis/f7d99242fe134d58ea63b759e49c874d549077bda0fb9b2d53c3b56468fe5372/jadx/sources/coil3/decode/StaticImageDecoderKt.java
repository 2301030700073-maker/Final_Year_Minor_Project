package coil3.decode;

import android.content.res.AssetFileDescriptor;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda0;
import coil3.decode.ImageSource;
import coil3.request.Options;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StaticImageDecoderKt {
    public static final ImageDecoder.Source toImageDecoderSourceOrNull(ImageSource imageSource, Options options, boolean z) {
        Path fileOrNull;
        if (imageSource.getFileSystem() == FileSystem.SYSTEM && (fileOrNull = imageSource.fileOrNull()) != null) {
            return ImageDecoder.createSource(fileOrNull.toFile());
        }
        ImageSource.Metadata metadata = imageSource.getMetadata();
        if (metadata instanceof AssetMetadata) {
            return ImageDecoder.createSource(options.getContext().getAssets(), ((AssetMetadata) metadata).getFilePath());
        }
        if ((metadata instanceof ContentMetadata) && Build.VERSION.SDK_INT >= 29) {
            try {
                AssetFileDescriptor assetFileDescriptor = ((ContentMetadata) metadata).getAssetFileDescriptor();
                Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                return ImageDecoder.createSource(new WorkerWrapper$$ExternalSyntheticLambda0(2, assetFileDescriptor));
            } catch (ErrnoException unused) {
                return null;
            }
        }
        if (metadata instanceof ResourceMetadata) {
            ResourceMetadata resourceMetadata = (ResourceMetadata) metadata;
            if (Intrinsics.areEqual(resourceMetadata.getPackageName(), options.getContext().getPackageName())) {
                return ImageDecoder.createSource(options.getContext().getResources(), resourceMetadata.getResId());
            }
        }
        if (!(metadata instanceof ByteBufferMetadata)) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30 || !z || ((ByteBufferMetadata) metadata).getByteBuffer().isDirect()) {
            return ImageDecoder.createSource(((ByteBufferMetadata) metadata).getByteBuffer());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AssetFileDescriptor toImageDecoderSourceOrNull$lambda$0(AssetFileDescriptor assetFileDescriptor) {
        return assetFileDescriptor;
    }
}
