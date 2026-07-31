package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.CameraStream;
import androidx.sqlite.SQLite;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraGraph$Config {
    public final String camera;
    public final List defaultListeners;
    public final Map defaultParameters;
    public final int defaultTemplate;
    public final List exclusiveStreamGroups;
    public final CameraGraph$Flags flags;
    public final List graphStateListeners;
    public final ArrayList input;
    public final MetadataTransform metadataTransform;
    public final CameraStream.Config postviewStream;
    public final Map requiredParameters;
    public final int sessionMode;
    public final Map sessionParameters;
    public final int sessionTemplate;
    public final List streams;

    public CameraGraph$Config(String str, List list, List list2, ArrayList arrayList, CameraStream.Config config, int i, LinkedHashMap linkedHashMap, int i2, MapBuilder mapBuilder, List list3, List list4, CameraGraph$Flags cameraGraph$Flags) {
        MetadataTransform metadataTransform = new MetadataTransform();
        str.getClass();
        this.camera = str;
        this.streams = list;
        this.exclusiveStreamGroups = list2;
        this.input = arrayList;
        this.postviewStream = config;
        this.sessionTemplate = i;
        this.sessionParameters = linkedHashMap;
        this.sessionMode = i2;
        this.defaultTemplate = 1;
        this.defaultParameters = mapBuilder;
        this.defaultListeners = list3;
        this.graphStateListeners = list4;
        this.requiredParameters = EmptyMap.INSTANCE;
        this.metadataTransform = metadataTransform;
        this.flags = cameraGraph$Flags;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraGraph$Config)) {
            return false;
        }
        CameraGraph$Config cameraGraph$Config = (CameraGraph$Config) obj;
        return Intrinsics.areEqual(this.camera, cameraGraph$Config.camera) && Intrinsics.areEqual(this.streams, cameraGraph$Config.streams) && Intrinsics.areEqual(this.exclusiveStreamGroups, cameraGraph$Config.exclusiveStreamGroups) && Intrinsics.areEqual(this.input, cameraGraph$Config.input) && Intrinsics.areEqual(this.postviewStream, cameraGraph$Config.postviewStream) && this.sessionTemplate == cameraGraph$Config.sessionTemplate && Intrinsics.areEqual(this.sessionParameters, cameraGraph$Config.sessionParameters) && this.sessionMode == cameraGraph$Config.sessionMode && this.defaultTemplate == cameraGraph$Config.defaultTemplate && Intrinsics.areEqual(this.defaultParameters, cameraGraph$Config.defaultParameters) && Intrinsics.areEqual(this.defaultListeners, cameraGraph$Config.defaultListeners) && Intrinsics.areEqual(this.graphStateListeners, cameraGraph$Config.graphStateListeners) && Intrinsics.areEqual(this.requiredParameters, cameraGraph$Config.requiredParameters) && Intrinsics.areEqual(this.metadataTransform, cameraGraph$Config.metadataTransform) && Intrinsics.areEqual(this.flags, cameraGraph$Config.flags);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(this.exclusiveStreamGroups, CameraDevices$CC.m(this.streams, this.camera.hashCode() * 31, 31), 31);
        ArrayList arrayList = this.input;
        int hashCode = (m + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        CameraStream.Config config = this.postviewStream;
        return (this.flags.hashCode() + ((this.metadataTransform.transformFn.hashCode() + ((this.requiredParameters.hashCode() + CameraDevices$CC.m(this.graphStateListeners, CameraDevices$CC.m(this.defaultListeners, (this.defaultParameters.hashCode() + ((((((this.sessionParameters.hashCode() + ((((hashCode + (config != null ? config.hashCode() : 0)) * 31) + this.sessionTemplate) * 31)) * 31) + this.sessionMode) * 31) + this.defaultTemplate) * 31)) * 31, 31), 31)) * 29791)) * 31)) * 31;
    }

    public final String toString() {
        return "Config(camera=" + ((Object) CameraId.m35toStringimpl(this.camera)) + ", streams=" + this.streams + ", exclusiveStreamGroups=" + this.exclusiveStreamGroups + ", input=" + this.input + ", postviewStream=" + this.postviewStream + ", sessionTemplate=" + ((Object) RequestTemplate.m43toStringimpl(this.sessionTemplate)) + ", sessionParameters=" + this.sessionParameters + ", sessionMode=" + ((Object) SQLite.m818toStringimpl(this.sessionMode)) + ", defaultTemplate=" + ((Object) RequestTemplate.m43toStringimpl(this.defaultTemplate)) + ", defaultParameters=" + this.defaultParameters + ", defaultListeners=" + this.defaultListeners + ", graphStateListeners=" + this.graphStateListeners + ", requiredParameters=" + this.requiredParameters + ", cameraBackendId=" + ((Object) "null") + ", customCameraBackend=null, metadataTransform=" + this.metadataTransform + ", flags=" + this.flags + ", sessionColorSpace=" + ((Object) "null") + ')';
    }
}
