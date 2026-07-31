package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExtensionRequestFailure implements RequestFailure {
    public final long frameNumber;
    public final RequestMetadata requestMetadata;

    public ExtensionRequestFailure(RequestMetadata requestMetadata, long j) {
        requestMetadata.getClass();
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExtensionRequestFailure) {
            ExtensionRequestFailure extensionRequestFailure = (ExtensionRequestFailure) obj;
            return Intrinsics.areEqual(this.requestMetadata, extensionRequestFailure.requestMetadata) && this.frameNumber == extensionRequestFailure.frameNumber;
        }
        return false;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public final int getReason() {
        return 0;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public final boolean getWasImageCaptured() {
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.requestMetadata.hashCode() * 31) + 1237) * 31;
        long j = this.frameNumber;
        return (((int) (j ^ (j >>> 32))) + hashCode) * 31;
    }

    public final String toString() {
        return "ExtensionRequestFailure(requestMetadata=" + this.requestMetadata + ", wasImageCaptured=false, frameNumber=" + ((Object) FrameNumber.m36toStringimpl(this.frameNumber)) + ", reason=0)";
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        return null;
    }
}
