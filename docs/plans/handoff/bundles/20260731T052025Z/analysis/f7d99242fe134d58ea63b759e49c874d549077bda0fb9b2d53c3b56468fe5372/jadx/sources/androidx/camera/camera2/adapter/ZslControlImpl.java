package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ZslDisablerQuirk;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.imagecapture.CaptureNode$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RouteSelector;
import org.apache.james.mime4j.stream.RawField;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZslControlImpl implements ZslControl {
    public final CameraMetadata cameraMetadata;
    public final boolean isZslDisabledByQuirks;
    public boolean isZslDisabledByUseCaseConfig;
    public SurfaceRequest.AnonymousClass2 reprocessingImageDeferrableSurface;
    public RouteSelector reprocessingImageReader;
    public final SynchronizedLazyImpl streamConfigurationMap$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(2, this));
    public final MenuHostHelper zslRingBuffer = new MenuHostHelper(new ZslControlImpl$$ExternalSyntheticLambda1());

    public ZslControlImpl(CameraPipeCameraProperties cameraPipeCameraProperties) {
        this.cameraMetadata = cameraPipeCameraProperties.metadata;
        this.isZslDisabledByQuirks = DeviceQuirks.getAll().get(ZslDisablerQuirk.class) != null;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void addZslConfig(SessionConfig.Builder builder) {
        RawField rawField = builder.mCaptureConfigBuilder;
        reset();
        if (this.isZslDisabledByUseCaseConfig) {
            rawField.delimiterIdx = 1;
            return;
        }
        if (this.isZslDisabledByQuirks) {
            rawField.delimiterIdx = 1;
            return;
        }
        CameraMetadata.Companion.getClass();
        CameraMetadata cameraMetadata = this.cameraMetadata;
        cameraMetadata.getClass();
        CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        key.getClass();
        int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
        if (iArr == null) {
            iArr = CameraMetadata.Companion.EMPTY_INT_ARRAY;
        }
        if (!ArraysKt___ArraysKt.contains(iArr, 4)) {
            if (Utf8.SafeProcessor.isInfoEnabled()) {
                Log.i("CXCP", "ZslControlImpl: Private reprocessing isn't supported");
            }
            rawField.delimiterIdx = 1;
            return;
        }
        SynchronizedLazyImpl synchronizedLazyImpl = this.streamConfigurationMap$delegate;
        Size[] inputSizes = ((StreamConfigurationMap) synchronizedLazyImpl.getValue()).getInputSizes(34);
        inputSizes.getClass();
        Iterator it = ArraysKt___ArraysKt.toList(inputSizes).iterator();
        if (!it.hasNext()) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return;
        }
        Object next = it.next();
        if (it.hasNext()) {
            Size size = (Size) next;
            size.getClass();
            int height = size.getHeight() * size.getWidth();
            do {
                Object next2 = it.next();
                Size size2 = (Size) next2;
                size2.getClass();
                int height2 = size2.getHeight() * size2.getWidth();
                if (height < height2) {
                    next = next2;
                    height = height2;
                }
            } while (it.hasNext());
        }
        Size size3 = (Size) next;
        if (size3 == null) {
            if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "ZslControlImpl: Unable to find a supported size for ZSL");
                return;
            }
            return;
        }
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "ZslControlImpl: Selected ZSL size: " + size3);
        }
        int[] validOutputFormatsForInput = ((StreamConfigurationMap) synchronizedLazyImpl.getValue()).getValidOutputFormatsForInput(34);
        validOutputFormatsForInput.getClass();
        if (!ArraysKt___ArraysKt.contains(validOutputFormatsForInput, 256)) {
            if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "ZslControlImpl: JPEG isn't valid output for ZSL format");
                return;
            }
            return;
        }
        MetadataImageReader metadataImageReader = new MetadataImageReader(size3.getWidth(), size3.getHeight(), 34, 9);
        MetadataImageReader.AnonymousClass1 anonymousClass1 = metadataImageReader.mCameraCaptureCallback;
        anonymousClass1.getClass();
        RouteSelector routeSelector = new RouteSelector(metadataImageReader);
        metadataImageReader.setOnImageAvailableListener(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(2, this), Util.ioExecutor());
        Surface surface = routeSelector.getSurface();
        if (surface == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return;
        }
        SurfaceRequest.AnonymousClass2 anonymousClass2 = new SurfaceRequest.AnonymousClass2(surface, new Size(routeSelector.getWidth(), routeSelector.getHeight()), 34);
        Futures.nonCancellationPropagating(anonymousClass2.mTerminationFuture).addListener(new CaptureNode$$ExternalSyntheticLambda3(routeSelector, 2), Util.mainThreadExecutor());
        builder.addSurface(anonymousClass2, DynamicRange.SDR, -1);
        rawField.addCameraCaptureCallback(anonymousClass1);
        ArrayList arrayList = builder.mSingleCameraCaptureCallbacks;
        if (!arrayList.contains(anonymousClass1)) {
            arrayList.add(anonymousClass1);
        }
        builder.mInputConfiguration = new InputConfiguration(routeSelector.getWidth(), routeSelector.getHeight(), routeSelector.getImageFormat());
        this.reprocessingImageReader = routeSelector;
        this.reprocessingImageDeferrableSurface = anonymousClass2;
    }

    public final void clearRingBuffer() {
        boolean isEmpty;
        MenuHostHelper menuHostHelper = this.zslRingBuffer;
        while (true) {
            synchronized (menuHostHelper.mMenuProviders) {
                isEmpty = ((ArrayDeque) menuHostHelper.mOnInvalidateMenuCallback).isEmpty();
            }
            if (isEmpty) {
                return;
            } else {
                ((ImageProxy) menuHostHelper.dequeue()).close();
            }
        }
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void clearZslConfig() {
        reset();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig) {
        Size size = deferrableSurface.mPrescribedSize;
        sessionConfig.getClass();
        InputConfiguration inputConfiguration = sessionConfig.mInputConfiguration;
        return inputConfiguration != null && deferrableSurface.mPrescribedStreamFormat == inputConfiguration.getFormat() && size.getWidth() == inputConfiguration.getWidth() && size.getHeight() == inputConfiguration.getHeight();
    }

    public final void reset() {
        SurfaceRequest.AnonymousClass2 anonymousClass2 = this.reprocessingImageDeferrableSurface;
        if (anonymousClass2 != null) {
            RouteSelector routeSelector = this.reprocessingImageReader;
            if (routeSelector != null) {
                Futures.nonCancellationPropagating(anonymousClass2.mTerminationFuture).addListener(new CaptureNode$$ExternalSyntheticLambda3(routeSelector, 1), Util.mainThreadExecutor());
                routeSelector.clearOnImageAvailableListener();
                this.reprocessingImageReader = null;
            }
            anonymousClass2.close();
            this.reprocessingImageDeferrableSurface = null;
        }
        clearRingBuffer();
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void setZslDisabledByUserCaseConfig(boolean z) {
        if (this.isZslDisabledByUseCaseConfig != z && z) {
            clearRingBuffer();
        }
        this.isZslDisabledByUseCaseConfig = z;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public final void setZslDisabledByFlashMode(boolean z) {
    }
}
