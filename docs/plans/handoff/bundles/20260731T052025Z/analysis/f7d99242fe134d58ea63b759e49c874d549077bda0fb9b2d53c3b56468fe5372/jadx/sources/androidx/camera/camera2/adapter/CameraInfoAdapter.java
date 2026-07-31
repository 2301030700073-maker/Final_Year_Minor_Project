package androidx.camera.camera2.adapter;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.view.PreviewStreamStateObserver;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.Api33Impl;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.LiveData;
import androidx.work.OperationKt;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraInfoAdapter implements CameraInfoInternal, UnsafeWrapper {
    public final SynchronizedLazyImpl camera2CameraInfo$delegate;
    public final CameraCallbackMap cameraCallbackMap;
    public final LocalStore.AnonymousClass8 cameraConfig;
    public final CameraPipeCameraProperties cameraProperties;
    public final CameraQuirks cameraQuirks;
    public final CameraStateAdapter cameraStateAdapter;
    public final SynchronizedLazyImpl isLegacyDevice$delegate;
    public final StreamConfigurationMapCompat streamConfigurationMapCompat;

    public CameraInfoAdapter(CameraPipeCameraProperties cameraPipeCameraProperties, LocalStore.AnonymousClass8 anonymousClass8, CameraStateAdapter cameraStateAdapter, CameraControlStateAdapter cameraControlStateAdapter, CameraCallbackMap cameraCallbackMap, FocusMeteringControl focusMeteringControl, CameraQuirks cameraQuirks, EncoderProfilesProvider encoderProfilesProvider, StreamConfigurationMapCompat streamConfigurationMapCompat, IntrinsicZoomCalculatorImpl intrinsicZoomCalculatorImpl, CardView.AnonymousClass1 anonymousClass1) {
        String str;
        cameraPipeCameraProperties.getClass();
        anonymousClass8.getClass();
        cameraStateAdapter.getClass();
        cameraControlStateAdapter.getClass();
        cameraCallbackMap.getClass();
        focusMeteringControl.getClass();
        cameraQuirks.getClass();
        encoderProfilesProvider.getClass();
        streamConfigurationMapCompat.getClass();
        intrinsicZoomCalculatorImpl.getClass();
        anonymousClass1.getClass();
        this.cameraProperties = cameraPipeCameraProperties;
        this.cameraConfig = anonymousClass8;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraCallbackMap = cameraCallbackMap;
        this.cameraQuirks = cameraQuirks;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        key.getClass();
        Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) cameraMetadata;
        camera2CameraMetadata.getClass();
        Object obj = camera2CameraMetadata.get(key);
        Integer num = (Integer) (obj != null ? obj : -1);
        final int i = 1;
        final int i2 = 2;
        if (num.intValue() == 2) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY";
        } else if (num.intValue() == 4) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_EXTERNAL";
        } else if (num.intValue() == 0) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED";
        } else if (num.intValue() == 1) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_FULL";
        } else if (num.intValue() == 3) {
            str = "INFO_SUPPORTED_HARDWARE_LEVEL_3";
        } else {
            str = "Unknown value: " + num;
        }
        if (Utf8.SafeProcessor.isInfoEnabled()) {
            Log.i("CXCP", "Device Level: ".concat(str));
        }
        final int i3 = 0;
        new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda0
            public final /* synthetic */ CameraInfoAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                CameraInfoAdapter cameraInfoAdapter = this.f$0;
                switch (i4) {
                    case 0:
                        CameraPipeCameraProperties cameraPipeCameraProperties2 = cameraInfoAdapter.cameraProperties;
                        Set set = (Set) ((Camera2CameraMetadata) cameraPipeCameraProperties2.metadata)._physicalCameraIds.getValue();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            String str2 = ((CameraId) it.next()).value;
                            LocalStore.AnonymousClass8 anonymousClass82 = new LocalStore.AnonymousClass8(str2, 1);
                            Camera2CameraMetadata camera2CameraMetadata2 = (Camera2CameraMetadata) cameraPipeCameraProperties2.metadata;
                            camera2CameraMetadata2.getClass();
                            if (!((Set) camera2CameraMetadata2._physicalCameraIds.getValue()).contains(new CameraId(str2))) {
                                throw new IllegalStateException((((Object) CameraId.m35toStringimpl(str2)) + " is not a valid physical camera on " + camera2CameraMetadata2).toString());
                            }
                            linkedHashSet.add(new PhysicalCameraInfoAdapter(new CameraPipeCameraProperties(anonymousClass82, camera2CameraMetadata2.metadataProvider.m63awaitCameraMetadataEfqyGwQ(str2))));
                        }
                        return linkedHashSet;
                    case 1:
                        CameraMetadata.Companion companion = CameraMetadata.Companion;
                        CameraMetadata cameraMetadata2 = cameraInfoAdapter.cameraProperties.metadata;
                        companion.getClass();
                        return Boolean.valueOf(CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata2));
                    default:
                        CameraPipeCameraProperties cameraPipeCameraProperties3 = cameraInfoAdapter.cameraProperties;
                        cameraPipeCameraProperties3.getClass();
                        Camera2CameraInfo camera2CameraInfo = new Camera2CameraInfo();
                        String str3 = cameraPipeCameraProperties3.cameraConfig.val$attachmentId;
                        return camera2CameraInfo;
                }
            }
        });
        this.isLegacyDevice$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda0
            public final /* synthetic */ CameraInfoAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                CameraInfoAdapter cameraInfoAdapter = this.f$0;
                switch (i4) {
                    case 0:
                        CameraPipeCameraProperties cameraPipeCameraProperties2 = cameraInfoAdapter.cameraProperties;
                        Set set = (Set) ((Camera2CameraMetadata) cameraPipeCameraProperties2.metadata)._physicalCameraIds.getValue();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            String str2 = ((CameraId) it.next()).value;
                            LocalStore.AnonymousClass8 anonymousClass82 = new LocalStore.AnonymousClass8(str2, 1);
                            Camera2CameraMetadata camera2CameraMetadata2 = (Camera2CameraMetadata) cameraPipeCameraProperties2.metadata;
                            camera2CameraMetadata2.getClass();
                            if (!((Set) camera2CameraMetadata2._physicalCameraIds.getValue()).contains(new CameraId(str2))) {
                                throw new IllegalStateException((((Object) CameraId.m35toStringimpl(str2)) + " is not a valid physical camera on " + camera2CameraMetadata2).toString());
                            }
                            linkedHashSet.add(new PhysicalCameraInfoAdapter(new CameraPipeCameraProperties(anonymousClass82, camera2CameraMetadata2.metadataProvider.m63awaitCameraMetadataEfqyGwQ(str2))));
                        }
                        return linkedHashSet;
                    case 1:
                        CameraMetadata.Companion companion = CameraMetadata.Companion;
                        CameraMetadata cameraMetadata2 = cameraInfoAdapter.cameraProperties.metadata;
                        companion.getClass();
                        return Boolean.valueOf(CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata2));
                    default:
                        CameraPipeCameraProperties cameraPipeCameraProperties3 = cameraInfoAdapter.cameraProperties;
                        cameraPipeCameraProperties3.getClass();
                        Camera2CameraInfo camera2CameraInfo = new Camera2CameraInfo();
                        String str3 = cameraPipeCameraProperties3.cameraConfig.val$attachmentId;
                        return camera2CameraInfo;
                }
            }
        });
        this.camera2CameraInfo$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.camera.camera2.adapter.CameraInfoAdapter$$ExternalSyntheticLambda0
            public final /* synthetic */ CameraInfoAdapter f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                CameraInfoAdapter cameraInfoAdapter = this.f$0;
                switch (i4) {
                    case 0:
                        CameraPipeCameraProperties cameraPipeCameraProperties2 = cameraInfoAdapter.cameraProperties;
                        Set set = (Set) ((Camera2CameraMetadata) cameraPipeCameraProperties2.metadata)._physicalCameraIds.getValue();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        Iterator it = set.iterator();
                        while (it.hasNext()) {
                            String str2 = ((CameraId) it.next()).value;
                            LocalStore.AnonymousClass8 anonymousClass82 = new LocalStore.AnonymousClass8(str2, 1);
                            Camera2CameraMetadata camera2CameraMetadata2 = (Camera2CameraMetadata) cameraPipeCameraProperties2.metadata;
                            camera2CameraMetadata2.getClass();
                            if (!((Set) camera2CameraMetadata2._physicalCameraIds.getValue()).contains(new CameraId(str2))) {
                                throw new IllegalStateException((((Object) CameraId.m35toStringimpl(str2)) + " is not a valid physical camera on " + camera2CameraMetadata2).toString());
                            }
                            linkedHashSet.add(new PhysicalCameraInfoAdapter(new CameraPipeCameraProperties(anonymousClass82, camera2CameraMetadata2.metadataProvider.m63awaitCameraMetadataEfqyGwQ(str2))));
                        }
                        return linkedHashSet;
                    case 1:
                        CameraMetadata.Companion companion = CameraMetadata.Companion;
                        CameraMetadata cameraMetadata2 = cameraInfoAdapter.cameraProperties.metadata;
                        companion.getClass();
                        return Boolean.valueOf(CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata2));
                    default:
                        CameraPipeCameraProperties cameraPipeCameraProperties3 = cameraInfoAdapter.cameraProperties;
                        cameraPipeCameraProperties3.getClass();
                        Camera2CameraInfo camera2CameraInfo = new Camera2CameraInfo();
                        String str3 = cameraPipeCameraProperties3.cameraConfig.val$attachmentId;
                        return camera2CameraInfo;
                }
            }
        });
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void addSessionCaptureCallback(Executor executor, PreviewStreamStateObserver.AnonymousClass2 anonymousClass2) {
        executor.getClass();
        this.cameraCallbackMap.addCaptureCallback(anonymousClass2, executor);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set getAvailableCapabilities() {
        int length;
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
        EmptySet emptySet = EmptySet.INSTANCE;
        if (iArr == null || (length = iArr.length) == 0) {
            return emptySet;
        }
        if (length == 1) {
            return Validate.setOf(Integer.valueOf(iArr[0]));
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(iArr.length));
        for (int i : iArr) {
            linkedHashSet.add(Integer.valueOf(i));
        }
        return linkedHashSet;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Object getCameraCharacteristics() {
        Object unwrapAs = ((Camera2CameraMetadata) this.cameraProperties.metadata).unwrapAs(Reflection.getOrCreateKotlinClass(CameraCharacteristics.class));
        unwrapAs.getClass();
        return (CameraCharacteristics) unwrapAs;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final String getCameraId() {
        return this.cameraConfig.val$attachmentId;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Quirks getCameraQuirks() {
        return this.cameraQuirks.getQuirks();
    }

    @Override // androidx.camera.core.CameraInfo
    public final LiveData getCameraState() {
        return this.cameraStateAdapter.cameraState;
    }

    @Override // androidx.camera.core.CameraInfo
    public final String getImplementationType() {
        return ((Boolean) this.isLegacyDevice$delegate.getValue()).booleanValue() ? "androidx.camera.camera2.legacy" : "androidx.camera.camera2";
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getLensFacing() {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        obj.getClass();
        int intValue = ((Number) obj).intValue();
        if (intValue == 0) {
            return 0;
        }
        int i = 1;
        if (intValue != 1) {
            i = 2;
            if (intValue != 2) {
                if (!Utf8.SafeProcessor.isWarnEnabled()) {
                    return -1;
                }
                Log.w("CXCP", "Unrecognized lens facing: " + intValue + '!');
                return -1;
            }
        }
        return i;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Rect getSensorRect() {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        key.getClass();
        Rect rect = (Rect) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if ("robolectric".equals(Build.FINGERPRINT) && rect == null) {
            return new Rect(0, 0, 4000, 3000);
        }
        rect.getClass();
        return rect;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getSensorRotationDegrees(int i) {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.SENSOR_ORIENTATION;
        key.getClass();
        Object obj = ((Camera2CameraMetadata) cameraMetadata).get(key);
        obj.getClass();
        return IntOffsetKt.getRelativeImageRotation(IntOffsetKt.surfaceRotationToDegrees(i), ((Number) obj).intValue(), 1 == getLensFacing());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set getSupportedDynamicRanges() {
        return ((DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl) Api33Impl.fromCameraMetaData(this.cameraProperties.metadata).mClientFragmentManager).getSupportedDynamicRanges();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final Set getSupportedOutputFormats() {
        Integer[] outputFormats = this.streamConfigurationMapCompat.impl.getOutputFormats();
        return outputFormats != null ? ArraysKt___ArraysKt.toSet(outputFormats) : EmptySet.INSTANCE;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final List getSupportedResolutions(int i) {
        Size[] outputSizes = this.streamConfigurationMapCompat.getOutputSizes(i);
        return outputSizes != null ? ArraysKt___ArraysKt.toList(outputSizes) : EmptyList.INSTANCE;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final boolean isPreviewStabilizationSupported() {
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        companion.getClass();
        return CameraMetadata.Companion.getSupportsPreviewStabilization(cameraMetadata);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final /* synthetic */ boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, LegacySessionConfig legacySessionConfig) {
        return Config.CC.$default$isResolvedFeatureGroupSupported(legacySessionConfig, resolvedFeatureGroup, this);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final boolean isVideoStabilizationSupported() {
        CameraMetadata cameraMetadata = this.cameraProperties.metadata;
        CameraCharacteristics.Key key = CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES;
        key.getClass();
        int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
        return iArr != null && ArraysKt___ArraysKt.contains(iArr, 1);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void removeSessionCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
        cameraCaptureCallback.getClass();
        CameraCallbackMap cameraCallbackMap = this.cameraCallbackMap;
        cameraCallbackMap.getClass();
        synchronized (cameraCallbackMap.callbackMap) {
            cameraCallbackMap.callbackMap.remove(cameraCaptureCallback);
            cameraCallbackMap.callbacks = MapsKt__MapsKt.toMap(cameraCallbackMap.callbackMap);
        }
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final void setCameraUseCaseAdapterProvider(Dispatcher dispatcher) {
        dispatcher.getClass();
        OperationKt.cameraUseCaseAdapterProvider = dispatcher;
    }

    public final String toString() {
        return "CameraInfoAdapter<" + this.cameraConfig + ".cameraId>";
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class))) {
            Camera2CameraInfo camera2CameraInfo = (Camera2CameraInfo) this.camera2CameraInfo$delegate.getValue();
            camera2CameraInfo.getClass();
            return camera2CameraInfo;
        }
        boolean equals = classReference.equals(Reflection.getOrCreateKotlinClass(CameraPipeCameraProperties.class));
        CameraPipeCameraProperties cameraPipeCameraProperties = this.cameraProperties;
        if (equals) {
            cameraPipeCameraProperties.getClass();
            return cameraPipeCameraProperties;
        }
        if (!classReference.equals(Reflection.getOrCreateKotlinClass(CameraMetadata.class))) {
            return ((Camera2CameraMetadata) cameraPipeCameraProperties.metadata).unwrapAs(classReference);
        }
        CameraMetadata cameraMetadata = cameraPipeCameraProperties.metadata;
        cameraMetadata.getClass();
        return cameraMetadata;
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public final CameraInfoInternal getImplementation() {
        return this;
    }

    @Override // androidx.camera.core.CameraInfo
    public final int getSensorRotationDegrees() {
        return getSensorRotationDegrees(0);
    }
}
