package androidx.camera.camera2.pipe;

import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.OutputStream$Config;
import kotlin.collections.EmptyList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MetadataTransform {
    public final AnonymousClass1 transformFn = new AnonymousClass1();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.camera2.pipe.MetadataTransform$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public static final AnonymousClass1 SURFACE = new AnonymousClass1();
        public static final AnonymousClass1 SURFACE_VIEW = new AnonymousClass1();
        public static final AnonymousClass1 SURFACE_TEXTURE = new AnonymousClass1();
        public static final AnonymousClass1 SURFACE_DEFERRED_FOR_QUERY_ONLY = new AnonymousClass1();
        public static final AnonymousClass1 MEDIA_CODEC = new AnonymousClass1();
        public static final AnonymousClass1 MEDIA_RECORDER = new AnonymousClass1();

        /* renamed from: create-vBYXiEU$default, reason: not valid java name */
        public static OutputStream$Config m37createvBYXiEU$default(int i, int i2, Size size, AnonymousClass1 anonymousClass1, OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile, OutputStream$MirrorMode outputStream$MirrorMode, OutputStream$StreamUseCase outputStream$StreamUseCase, OutputStream$StreamUseHint outputStream$StreamUseHint, String str) {
            int i3 = i2 & 8;
            AnonymousClass1 anonymousClass12 = SURFACE;
            AnonymousClass1 anonymousClass13 = i3 != 0 ? anonymousClass12 : anonymousClass1;
            OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile2 = (i2 & 64) != 0 ? null : outputStream$DynamicRangeProfile;
            OutputStream$StreamUseCase outputStream$StreamUseCase2 = (i2 & 128) != 0 ? null : outputStream$StreamUseCase;
            OutputStream$StreamUseHint outputStream$StreamUseHint2 = (i2 & 256) != 0 ? null : outputStream$StreamUseHint;
            size.getClass();
            AnonymousClass1 anonymousClass14 = SURFACE_TEXTURE;
            EmptyList emptyList = EmptyList.INSTANCE;
            if (anonymousClass13 == anonymousClass14 || anonymousClass13 == SURFACE_VIEW || ((anonymousClass13 == MEDIA_CODEC || anonymousClass13 == MEDIA_RECORDER) && Build.VERSION.SDK_INT >= 35)) {
                return new OutputStream$Config.LazyOutputConfig(size, i, str, anonymousClass13, outputStream$MirrorMode, outputStream$DynamicRangeProfile2, outputStream$StreamUseCase2, outputStream$StreamUseHint2, emptyList);
            }
            if (anonymousClass13 == anonymousClass12) {
                return new OutputStream$Config.SimpleOutputConfig(size, i, str, outputStream$MirrorMode, outputStream$DynamicRangeProfile2, outputStream$StreamUseCase2, outputStream$StreamUseHint2, emptyList);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MetadataTransform) && this.transformFn == ((MetadataTransform) obj).transformFn;
    }

    public final int hashCode() {
        return this.transformFn.hashCode();
    }

    public final String toString() {
        return "MetadataTransform(past=0, future=0, transformFn=" + this.transformFn + ')';
    }
}
