package org.jetbrains.compose.resources;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RegionQualifier implements Qualifier {
    public final String region;

    public RegionQualifier(String str) {
        str.getClass();
        this.region = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RegionQualifier.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.region, ((RegionQualifier) obj).region);
    }

    public final int hashCode() {
        return this.region.hashCode();
    }

    public final String toString() {
        return CameraDevices$CC.m("RegionQualifier(region='", this.region, "')");
    }
}
