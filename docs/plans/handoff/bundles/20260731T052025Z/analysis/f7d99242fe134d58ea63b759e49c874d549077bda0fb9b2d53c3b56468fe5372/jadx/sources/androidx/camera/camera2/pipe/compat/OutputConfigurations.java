package androidx.camera.camera2.pipe.compat;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputConfigurations {
    public final ArrayList all;
    public final LinkedHashMap deferred;
    public final LinkedHashMap outputSurfaceMap;
    public final OutputConfigurationWrapper postviewOutput;

    public OutputConfigurations(ArrayList arrayList, LinkedHashMap linkedHashMap, AndroidOutputConfiguration androidOutputConfiguration, LinkedHashMap linkedHashMap2) {
        this.all = arrayList;
        this.deferred = linkedHashMap;
        this.postviewOutput = androidOutputConfiguration;
        this.outputSurfaceMap = linkedHashMap2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OutputConfigurations)) {
            return false;
        }
        OutputConfigurations outputConfigurations = (OutputConfigurations) obj;
        return this.all.equals(outputConfigurations.all) && this.deferred.equals(outputConfigurations.deferred) && Intrinsics.areEqual(this.postviewOutput, outputConfigurations.postviewOutput) && this.outputSurfaceMap.equals(outputConfigurations.outputSurfaceMap);
    }

    public final int hashCode() {
        int hashCode = (this.deferred.hashCode() + (this.all.hashCode() * 31)) * 31;
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutput;
        return this.outputSurfaceMap.hashCode() + ((hashCode + (outputConfigurationWrapper == null ? 0 : outputConfigurationWrapper.hashCode())) * 31);
    }

    public final String toString() {
        return "OutputConfigurations(all=" + this.all + ", deferred=" + this.deferred + ", postviewOutput=" + this.postviewOutput + ", outputSurfaceMap=" + this.outputSurfaceMap + ')';
    }
}
