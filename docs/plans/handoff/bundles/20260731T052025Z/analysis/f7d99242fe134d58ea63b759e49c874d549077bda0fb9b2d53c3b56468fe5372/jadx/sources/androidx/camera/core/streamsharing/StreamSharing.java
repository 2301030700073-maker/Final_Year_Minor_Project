package androidx.camera.core.streamsharing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.Log;
import android.util.Size;
import androidx.appcompat.widget.TooltipPopup;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Preview;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.SurfaceProcessorNode$Out;
import androidx.camera.core.processing.concurrent.AutoValue_DualOutConfig;
import androidx.camera.core.processing.concurrent.AutoValue_DualSurfaceProcessorNode_In;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.AutoValue_OutConfig;
import androidx.camera.view.TextureViewImplementation$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.BasicText_androidKt$$ExternalSyntheticLambda2;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import com.fsck.k9.mailstore.LocalStore;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.apache.james.mime4j.stream.RawField;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamSharing extends UseCase {
    public SurfaceEdge mCameraEdge;
    public SessionConfig.CloseableErrorListener mCloseableErrorListener;
    public final SurfaceRequest.AnonymousClass1 mCompositionSettings;
    public final StreamSharingConfig mDefaultConfig;
    public LocalStore.AnonymousClass7 mDualSharingNode;
    public SurfaceEdge mSecondaryCameraEdge;
    public final SurfaceRequest.AnonymousClass1 mSecondaryCompositionSettings;
    public SessionConfig.Builder mSecondarySessionConfigBuilder;
    public SurfaceEdge mSecondarySharingInputEdge;
    public SessionConfig.Builder mSessionConfigBuilder;
    public SurfaceEdge mSharingInputEdge;
    public MenuHostHelper mSharingNode;
    public final VirtualCameraAdapter mVirtualCameraAdapter;

    public StreamSharing(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceRequest.AnonymousClass1 anonymousClass1, SurfaceRequest.AnonymousClass1 anonymousClass12, HashSet hashSet, UseCaseConfigFactory useCaseConfigFactory) {
        super(getDefaultConfig(hashSet));
        this.mDefaultConfig = getDefaultConfig(hashSet);
        this.mCompositionSettings = anonymousClass1;
        this.mSecondaryCompositionSettings = anonymousClass12;
        this.mVirtualCameraAdapter = new VirtualCameraAdapter(cameraInternal, cameraInternal2, hashSet, useCaseConfigFactory, new StreamSharing$$ExternalSyntheticLambda0(0));
        HashSet hashSet2 = ((UseCase) hashSet.iterator().next()).mFeatureGroup;
        this.mFeatureGroup = hashSet2 != null ? new HashSet(hashSet2) : null;
    }

    public static StreamSharingConfig getDefaultConfig(HashSet hashSet) {
        MutableOptionsBundle create = MutableOptionsBundle.create();
        new Preview.Builder(create, 6);
        create.insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase.mCurrentConfig.containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
                arrayList.add(useCase.mCurrentConfig.getCaptureType());
            } else {
                Log.e("StreamSharing", "A child does not have capture type.");
            }
        }
        create.insertOption(StreamSharingConfig.OPTION_CAPTURE_TYPES, arrayList);
        create.insertOption(ImageOutputConfig.OPTION_MIRROR_MODE, 2);
        create.insertOption(UseCaseConfig.OPTION_STREAM_USE_CASE, StreamUseCase.PREVIEW_VIDEO_STILL);
        return new StreamSharingConfig(OptionsBundle.from(create));
    }

    public final void clearPipeline$3() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        SurfaceEdge surfaceEdge2 = this.mSecondaryCameraEdge;
        if (surfaceEdge2 != null) {
            surfaceEdge2.close();
            this.mSecondaryCameraEdge = null;
        }
        SurfaceEdge surfaceEdge3 = this.mSharingInputEdge;
        if (surfaceEdge3 != null) {
            surfaceEdge3.close();
            this.mSharingInputEdge = null;
        }
        SurfaceEdge surfaceEdge4 = this.mSecondarySharingInputEdge;
        if (surfaceEdge4 != null) {
            surfaceEdge4.close();
            this.mSecondarySharingInputEdge = null;
        }
        MenuHostHelper menuHostHelper = this.mSharingNode;
        if (menuHostHelper != null) {
            ((DefaultSurfaceProcessor) menuHostHelper.mOnInvalidateMenuCallback).release();
            Validate.runOnMain(new Preview$$ExternalSyntheticLambda0(14, menuHostHelper));
            this.mSharingNode = null;
        }
        LocalStore.AnonymousClass7 anonymousClass7 = this.mDualSharingNode;
        if (anonymousClass7 != null) {
            ((SurfaceProcessorInternal) anonymousClass7.val$queryString).release();
            Validate.runOnMain(new Preview$$ExternalSyntheticLambda0(16, anonymousClass7));
            this.mDualSharingNode = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List createPipelineAndUpdateChildrenSpecs(String str, String str2, UseCaseConfig useCaseConfig, AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        boolean z;
        DynamicRange dynamicRange = autoValue_StreamSpec.dynamicRange;
        Validate.checkMainThread();
        VirtualCameraAdapter virtualCameraAdapter = this.mVirtualCameraAdapter;
        if (autoValue_StreamSpec2 == null) {
            SurfaceEdge createPrimaryCameraInputSurface = createPrimaryCameraInputSurface(str, str2, useCaseConfig, autoValue_StreamSpec, null);
            CameraInternal camera = getCamera();
            Objects.requireNonNull(camera);
            MenuHostHelper menuHostHelper = new MenuHostHelper(camera, new DefaultSurfaceProcessor(dynamicRange));
            this.mSharingNode = menuHostHelper;
            boolean z2 = this.mViewPortCropRect != null;
            int targetRotation = ((ImageOutputConfig) this.mCurrentConfig).getTargetRotation(0);
            virtualCameraAdapter.getClass();
            HashMap hashMap = new HashMap();
            Iterator it = virtualCameraAdapter.mChildren.iterator();
            while (it.hasNext()) {
                UseCase useCase = (UseCase) it.next();
                ResolutionsMerger resolutionsMerger = virtualCameraAdapter.mResolutionsMerger;
                CameraInternal cameraInternal = virtualCameraAdapter.mParentCamera;
                VirtualCameraAdapter virtualCameraAdapter2 = virtualCameraAdapter;
                boolean z3 = z2;
                AutoValue_OutConfig calculateOutConfig = virtualCameraAdapter2.calculateOutConfig(useCase, resolutionsMerger, cameraInternal, createPrimaryCameraInputSurface, targetRotation, z3);
                int sensorRotationDegrees = virtualCameraAdapter2.mParentCamera.getCameraInfo().getSensorRotationDegrees(((ImageOutputConfig) useCase.mCurrentConfig).getTargetRotation(0));
                VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter2.mChildrenVirtualCameras.get(useCase);
                Objects.requireNonNull(virtualCamera);
                virtualCamera.mVirtualCameraInfo.mVirtualCameraRotationDegrees = sensorRotationDegrees;
                hashMap.put(useCase, calculateOutConfig);
                virtualCameraAdapter = virtualCameraAdapter2;
                z2 = z3;
            }
            VirtualCameraAdapter virtualCameraAdapter3 = virtualCameraAdapter;
            boolean z4 = z2;
            ArrayList arrayList = new ArrayList(hashMap.values());
            if (createPrimaryCameraInputSurface == null) {
                Regex$$ExternalSyntheticBUOutline0.m("Null surfaceEdge");
                return null;
            }
            DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) menuHostHelper.mOnInvalidateMenuCallback;
            Validate.checkMainThread();
            Utf8.SafeProcessor.d("SurfaceProcessorNode", "[StreamSharing] SurfaceProcessorNode Transform (Processor=" + defaultSurfaceProcessor + "\n   inputEdge = " + createPrimaryCameraInputSurface);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Utf8.SafeProcessor.d("SurfaceProcessorNode", "   outputConfig = " + ((AutoValue_OutConfig) it2.next()));
            }
            menuHostHelper.mProviderToLifecycleContainers = new SurfaceProcessorNode$Out();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                AutoValue_OutConfig autoValue_OutConfig = (AutoValue_OutConfig) it3.next();
                SurfaceProcessorNode$Out surfaceProcessorNode$Out = (SurfaceProcessorNode$Out) menuHostHelper.mProviderToLifecycleContainers;
                Rect rect = autoValue_OutConfig.getCropRect;
                int i = autoValue_OutConfig.getRotationDegrees;
                boolean z5 = autoValue_OutConfig.isMirroring;
                Matrix matrix = new Matrix(createPrimaryCameraInputSurface.mSensorToBufferTransform);
                RectF rectF = new RectF(rect);
                Size size = autoValue_OutConfig.getSize;
                Iterator it4 = it3;
                matrix.postConcat(TransformUtils.getRectToRect(rectF, TransformUtils.sizeToRectF(size), i, z5));
                RelationUtil.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.rotateSize(i, TransformUtils.rectToSize(rect)), false, size));
                HashMap hashMap2 = hashMap;
                Rect rect2 = new Rect(0, 0, size.getWidth(), size.getHeight());
                TooltipPopup builder = createPrimaryCameraInputSurface.mStreamSpec.toBuilder();
                builder.mContext = size;
                surfaceProcessorNode$Out.put(autoValue_OutConfig, new SurfaceEdge(autoValue_OutConfig.getTargets, autoValue_OutConfig.getFormat, builder.build(), matrix, false, rect2, createPrimaryCameraInputSurface.mRotationDegrees - i, -1, createPrimaryCameraInputSurface.mMirroring != z5));
                it3 = it4;
                hashMap = hashMap2;
            }
            HashMap hashMap3 = hashMap;
            defaultSurfaceProcessor.onInputSurface(createPrimaryCameraInputSurface.createSurfaceRequest((CameraInternal) menuHostHelper.mMenuProviders, true));
            for (Map.Entry entry : ((SurfaceProcessorNode$Out) menuHostHelper.mProviderToLifecycleContainers).entrySet()) {
                menuHostHelper.createAndSendSurfaceOutput(createPrimaryCameraInputSurface, entry);
                SurfaceEdge surfaceEdge = (SurfaceEdge) entry.getValue();
                Processor$$ExternalSyntheticLambda1 processor$$ExternalSyntheticLambda1 = new Processor$$ExternalSyntheticLambda1(menuHostHelper, createPrimaryCameraInputSurface, entry, 7);
                surfaceEdge.getClass();
                Validate.checkMainThread();
                surfaceEdge.checkNotClosed();
                surfaceEdge.mOnInvalidatedListeners.add(processor$$ExternalSyntheticLambda1);
            }
            createPrimaryCameraInputSurface.mTransformationUpdatesListeners.add(new TextureViewImplementation$$ExternalSyntheticLambda3(1, (SurfaceProcessorNode$Out) menuHostHelper.mProviderToLifecycleContainers));
            SurfaceProcessorNode$Out surfaceProcessorNode$Out2 = (SurfaceProcessorNode$Out) menuHostHelper.mProviderToLifecycleContainers;
            HashMap hashMap4 = new HashMap();
            for (Map.Entry entry2 : hashMap3.entrySet()) {
                hashMap4.put((UseCase) entry2.getKey(), (SurfaceEdge) surfaceProcessorNode$Out2.get(entry2.getValue()));
            }
            virtualCameraAdapter3.setChildrenEdges(hashMap4, virtualCameraAdapter3.getSelectedChildSizes(createPrimaryCameraInputSurface, z4));
            Object[] objArr = {this.mSessionConfigBuilder.build()};
            ArrayList arrayList2 = new ArrayList(1);
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            arrayList2.add(obj);
            return DesugarCollections.unmodifiableList(arrayList2);
        }
        SurfaceEdge createPrimaryCameraInputSurface2 = createPrimaryCameraInputSurface(str, str2, useCaseConfig, autoValue_StreamSpec, autoValue_StreamSpec2);
        Matrix matrix2 = this.mSensorToBufferTransformMatrix;
        CameraInternal secondaryCamera = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera);
        boolean hasTransform = secondaryCamera.getHasTransform();
        Size size2 = autoValue_StreamSpec2.resolution;
        Rect rect3 = this.mViewPortCropRect;
        if (rect3 != null) {
            z = false;
        } else {
            z = false;
            rect3 = new Rect(0, 0, size2.getWidth(), size2.getHeight());
        }
        CameraInternal secondaryCamera2 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera2);
        int relativeRotation = getRelativeRotation(secondaryCamera2, z);
        CameraInternal secondaryCamera3 = getSecondaryCamera();
        Objects.requireNonNull(secondaryCamera3);
        VirtualCameraAdapter virtualCameraAdapter4 = virtualCameraAdapter;
        SurfaceEdge surfaceEdge2 = new SurfaceEdge(3, 34, autoValue_StreamSpec2, matrix2, hasTransform, rect3, relativeRotation, -1, isMirroringRequired(secondaryCamera3));
        this.mSecondaryCameraEdge = surfaceEdge2;
        Objects.requireNonNull(getSecondaryCamera());
        this.mSecondarySharingInputEdge = surfaceEdge2;
        SessionConfig.Builder createSessionConfigBuilder = createSessionConfigBuilder(this.mSecondaryCameraEdge, useCaseConfig, autoValue_StreamSpec2);
        this.mSecondarySessionConfigBuilder = createSessionConfigBuilder;
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new StreamSharing$$ExternalSyntheticLambda1(this, str, str2, useCaseConfig, autoValue_StreamSpec, autoValue_StreamSpec2));
        this.mCloseableErrorListener = closeableErrorListener2;
        createSessionConfigBuilder.mErrorListener = closeableErrorListener2;
        SurfaceEdge surfaceEdge3 = this.mSecondarySharingInputEdge;
        this.mDualSharingNode = new LocalStore.AnonymousClass7(getCamera(), getSecondaryCamera(), new DualSurfaceProcessor(dynamicRange, this.mCompositionSettings, this.mSecondaryCompositionSettings));
        boolean z6 = this.mViewPortCropRect != null;
        int targetRotation2 = ((ImageOutputConfig) this.mCurrentConfig).getTargetRotation(0);
        virtualCameraAdapter4.getClass();
        HashMap hashMap5 = new HashMap();
        Iterator it5 = virtualCameraAdapter4.mChildren.iterator();
        while (it5.hasNext()) {
            UseCase useCase2 = (UseCase) it5.next();
            VirtualCameraAdapter virtualCameraAdapter5 = virtualCameraAdapter4;
            AutoValue_OutConfig calculateOutConfig2 = virtualCameraAdapter5.calculateOutConfig(useCase2, virtualCameraAdapter4.mResolutionsMerger, virtualCameraAdapter4.mParentCamera, createPrimaryCameraInputSurface2, targetRotation2, z6);
            ResolutionsMerger resolutionsMerger2 = virtualCameraAdapter5.mSecondaryResolutionsMerger;
            Objects.requireNonNull(resolutionsMerger2);
            CameraInternal cameraInternal2 = virtualCameraAdapter5.mSecondaryParentCamera;
            Objects.requireNonNull(cameraInternal2);
            SurfaceEdge surfaceEdge4 = surfaceEdge3;
            AutoValue_OutConfig calculateOutConfig3 = virtualCameraAdapter5.calculateOutConfig(useCase2, resolutionsMerger2, cameraInternal2, surfaceEdge4, targetRotation2, z6);
            int sensorRotationDegrees2 = virtualCameraAdapter5.mParentCamera.getCameraInfo().getSensorRotationDegrees(((ImageOutputConfig) useCase2.mCurrentConfig).getTargetRotation(0));
            VirtualCamera virtualCamera2 = (VirtualCamera) virtualCameraAdapter5.mChildrenVirtualCameras.get(useCase2);
            Objects.requireNonNull(virtualCamera2);
            virtualCamera2.mVirtualCameraInfo.mVirtualCameraRotationDegrees = sensorRotationDegrees2;
            hashMap5.put(useCase2, new AutoValue_DualOutConfig(calculateOutConfig2, calculateOutConfig3));
            virtualCameraAdapter4 = virtualCameraAdapter5;
            surfaceEdge3 = surfaceEdge4;
        }
        SurfaceEdge surfaceEdge5 = surfaceEdge3;
        VirtualCameraAdapter virtualCameraAdapter6 = virtualCameraAdapter4;
        LocalStore.AnonymousClass7 anonymousClass7 = this.mDualSharingNode;
        ArrayList arrayList3 = new ArrayList(hashMap5.values());
        AutoValue_DualSurfaceProcessorNode_In autoValue_DualSurfaceProcessorNode_In = new AutoValue_DualSurfaceProcessorNode_In(createPrimaryCameraInputSurface2, surfaceEdge5, arrayList3);
        anonymousClass7.getClass();
        Validate.checkMainThread();
        StringBuilder sb = new StringBuilder("[StreamSharing] DualSurfaceProcessorNode Transform Processor = ");
        SurfaceProcessorInternal surfaceProcessorInternal = (SurfaceProcessorInternal) anonymousClass7.val$queryString;
        sb.append(surfaceProcessorInternal);
        sb.append("\n   primary input = ");
        sb.append(createPrimaryCameraInputSurface2);
        sb.append("\n   secondary input = ");
        sb.append(surfaceEdge5);
        Utf8.SafeProcessor.d("DualSurfaceProcessorNode", sb.toString());
        Iterator it6 = arrayList3.iterator();
        while (it6.hasNext()) {
            Utf8.SafeProcessor.d("SurfaceProcessorNode", "   outputConfig = " + ((AutoValue_DualOutConfig) it6.next()));
        }
        anonymousClass7.this$0 = autoValue_DualSurfaceProcessorNode_In;
        anonymousClass7.val$messages = new SurfaceProcessorNode$Out();
        AutoValue_DualSurfaceProcessorNode_In autoValue_DualSurfaceProcessorNode_In2 = (AutoValue_DualSurfaceProcessorNode_In) anonymousClass7.this$0;
        SurfaceEdge surfaceEdge6 = autoValue_DualSurfaceProcessorNode_In2.primarySurfaceEdge;
        SurfaceEdge surfaceEdge7 = autoValue_DualSurfaceProcessorNode_In2.secondarySurfaceEdge;
        Iterator it7 = autoValue_DualSurfaceProcessorNode_In2.outConfigs.iterator();
        while (it7.hasNext()) {
            AutoValue_DualOutConfig autoValue_DualOutConfig = (AutoValue_DualOutConfig) it7.next();
            SurfaceProcessorNode$Out surfaceProcessorNode$Out3 = (SurfaceProcessorNode$Out) anonymousClass7.val$messages;
            AutoValue_OutConfig autoValue_OutConfig2 = autoValue_DualOutConfig.primaryOutConfig;
            Rect rect4 = autoValue_OutConfig2.getCropRect;
            int i2 = autoValue_OutConfig2.getRotationDegrees;
            boolean z7 = autoValue_OutConfig2.isMirroring;
            Iterator it8 = it7;
            HashMap hashMap6 = hashMap5;
            Matrix matrix3 = new Matrix(surfaceEdge6.mSensorToBufferTransform);
            RectF rectF2 = new RectF(rect4);
            Size size3 = autoValue_OutConfig2.getSize;
            matrix3.postConcat(TransformUtils.getRectToRect(rectF2, TransformUtils.sizeToRectF(size3), i2, z7));
            RelationUtil.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.rotateSize(i2, TransformUtils.rectToSize(rect4)), false, size3));
            Rect rect5 = new Rect(0, 0, size3.getWidth(), size3.getHeight());
            TooltipPopup builder2 = surfaceEdge6.mStreamSpec.toBuilder();
            builder2.mContext = size3;
            surfaceProcessorNode$Out3.put(autoValue_DualOutConfig, new SurfaceEdge(autoValue_OutConfig2.getTargets, autoValue_OutConfig2.getFormat, builder2.build(), matrix3, false, rect5, surfaceEdge6.mRotationDegrees - i2, -1, surfaceEdge6.mMirroring != z7));
            it7 = it8;
            hashMap5 = hashMap6;
        }
        HashMap hashMap7 = hashMap5;
        surfaceProcessorInternal.onInputSurface(surfaceEdge6.createSurfaceRequest((CameraInternal) anonymousClass7.val$placeHolders, true));
        surfaceProcessorInternal.onInputSurface(surfaceEdge7.createSurfaceRequest((CameraInternal) anonymousClass7.val$folder, false));
        CameraInternal cameraInternal3 = (CameraInternal) anonymousClass7.val$placeHolders;
        CameraInternal cameraInternal4 = (CameraInternal) anonymousClass7.val$folder;
        for (Map.Entry entry3 : ((SurfaceProcessorNode$Out) anonymousClass7.val$messages).entrySet()) {
            LocalStore.AnonymousClass7 anonymousClass72 = anonymousClass7;
            SurfaceEdge surfaceEdge8 = surfaceEdge6;
            SurfaceEdge surfaceEdge9 = surfaceEdge7;
            anonymousClass72.createAndSendSurfaceOutput(cameraInternal3, cameraInternal4, surfaceEdge8, surfaceEdge9, entry3);
            SurfaceEdge surfaceEdge10 = (SurfaceEdge) entry3.getValue();
            CameraInternal cameraInternal5 = cameraInternal4;
            CameraInternal cameraInternal6 = cameraInternal3;
            BasicText_androidKt$$ExternalSyntheticLambda2 basicText_androidKt$$ExternalSyntheticLambda2 = new BasicText_androidKt$$ExternalSyntheticLambda2(anonymousClass72, cameraInternal6, cameraInternal5, surfaceEdge8, surfaceEdge9, entry3, 1);
            cameraInternal3 = cameraInternal6;
            cameraInternal4 = cameraInternal5;
            surfaceEdge10.getClass();
            Validate.checkMainThread();
            surfaceEdge10.checkNotClosed();
            surfaceEdge10.mOnInvalidatedListeners.add(basicText_androidKt$$ExternalSyntheticLambda2);
            anonymousClass7 = anonymousClass72;
            surfaceEdge6 = surfaceEdge8;
            surfaceEdge7 = surfaceEdge9;
        }
        SurfaceProcessorNode$Out surfaceProcessorNode$Out4 = (SurfaceProcessorNode$Out) anonymousClass7.val$messages;
        HashMap hashMap8 = new HashMap();
        for (Map.Entry entry4 : hashMap7.entrySet()) {
            hashMap8.put((UseCase) entry4.getKey(), (SurfaceEdge) surfaceProcessorNode$Out4.get(entry4.getValue()));
        }
        virtualCameraAdapter6.setChildrenEdges(hashMap8, virtualCameraAdapter6.getSelectedChildSizes(createPrimaryCameraInputSurface2, z6));
        Object[] objArr2 = {this.mSessionConfigBuilder.build(), this.mSecondarySessionConfigBuilder.build()};
        ArrayList arrayList4 = new ArrayList(2);
        for (int i3 = 0; i3 < 2; i3++) {
            Object obj2 = objArr2[i3];
            Objects.requireNonNull(obj2);
            arrayList4.add(obj2);
        }
        return DesugarCollections.unmodifiableList(arrayList4);
    }

    public final SurfaceEdge createPrimaryCameraInputSurface(String str, String str2, UseCaseConfig useCaseConfig, AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        Matrix matrix = this.mSensorToBufferTransformMatrix;
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        boolean hasTransform = camera.getHasTransform();
        Size size = autoValue_StreamSpec.resolution;
        Rect rect = this.mViewPortCropRect;
        if (rect == null) {
            rect = new Rect(0, 0, size.getWidth(), size.getHeight());
        }
        CameraInternal camera2 = getCamera();
        Objects.requireNonNull(camera2);
        int relativeRotation = getRelativeRotation(camera2, false);
        CameraInternal camera3 = getCamera();
        Objects.requireNonNull(camera3);
        SurfaceEdge surfaceEdge = new SurfaceEdge(3, 34, autoValue_StreamSpec, matrix, hasTransform, rect, relativeRotation, -1, isMirroringRequired(camera3));
        this.mCameraEdge = surfaceEdge;
        Objects.requireNonNull(getCamera());
        this.mSharingInputEdge = surfaceEdge;
        SessionConfig.Builder createSessionConfigBuilder = createSessionConfigBuilder(this.mCameraEdge, useCaseConfig, autoValue_StreamSpec);
        this.mSessionConfigBuilder = createSessionConfigBuilder;
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new StreamSharing$$ExternalSyntheticLambda1(this, str, str2, useCaseConfig, autoValue_StreamSpec, autoValue_StreamSpec2));
        this.mCloseableErrorListener = closeableErrorListener2;
        createSessionConfigBuilder.mErrorListener = closeableErrorListener2;
        return this.mSharingInputEdge;
    }

    public final SessionConfig.Builder createSessionConfigBuilder(SurfaceEdge surfaceEdge, UseCaseConfig useCaseConfig, AutoValue_StreamSpec autoValue_StreamSpec) {
        SessionConfig.Builder createFrom = SessionConfig.Builder.createFrom(useCaseConfig, autoValue_StreamSpec.resolution);
        RawField rawField = createFrom.mCaptureConfigBuilder;
        VirtualCameraAdapter virtualCameraAdapter = this.mVirtualCameraAdapter;
        Iterator it = virtualCameraAdapter.mChildren.iterator();
        int i = -1;
        while (it.hasNext()) {
            int i2 = ((UseCase) it.next()).mCurrentConfig.getDefaultSessionConfig().mRepeatingCaptureConfig.mTemplateType;
            List list = SessionConfig.SUPPORTED_TEMPLATE_PRIORITY;
            if (list.indexOf(Integer.valueOf(i)) < list.indexOf(Integer.valueOf(i2))) {
                i = i2;
            }
        }
        if (i != -1) {
            rawField.delimiterIdx = i;
        }
        Size size = autoValue_StreamSpec.resolution;
        Iterator it2 = virtualCameraAdapter.mChildren.iterator();
        while (it2.hasNext()) {
            SessionConfig build = SessionConfig.Builder.createFrom(((UseCase) it2.next()).mCurrentConfig, size).build();
            CaptureConfig captureConfig = build.mRepeatingCaptureConfig;
            rawField.addAllCameraCaptureCallbacks(captureConfig.mCameraCaptureCallbacks);
            List<CameraCaptureCallback> list2 = build.mSingleCameraCaptureCallbacks;
            ArrayList arrayList = createFrom.mSingleCameraCaptureCallbacks;
            for (CameraCaptureCallback cameraCaptureCallback : list2) {
                rawField.addCameraCaptureCallback(cameraCaptureCallback);
                if (!arrayList.contains(cameraCaptureCallback)) {
                    arrayList.add(cameraCaptureCallback);
                }
            }
            for (CameraCaptureSession.StateCallback stateCallback : build.mSessionStateCallbacks) {
                ArrayList arrayList2 = createFrom.mSessionStateCallbacks;
                if (!arrayList2.contains(stateCallback)) {
                    arrayList2.add(stateCallback);
                }
            }
            for (CameraDevice.StateCallback stateCallback2 : build.mDeviceStateCallbacks) {
                ArrayList arrayList3 = createFrom.mDeviceStateCallbacks;
                if (!arrayList3.contains(stateCallback2)) {
                    arrayList3.add(stateCallback2);
                }
            }
            rawField.addImplementationOptions(captureConfig.mImplementationOptions);
        }
        surfaceEdge.getClass();
        Validate.checkMainThread();
        surfaceEdge.checkNotClosed();
        RelationUtil.checkState("Consumer can only be linked once.", !surfaceEdge.mHasConsumer);
        surfaceEdge.mHasConsumer = true;
        createFrom.addSurface(surfaceEdge.mSettableSurface, autoValue_StreamSpec.dynamicRange, -1);
        rawField.addCameraCaptureCallback(virtualCameraAdapter.mParentMetadataCallback);
        Config config = autoValue_StreamSpec.implementationOptions;
        if (config != null) {
            rawField.addImplementationOptions(config);
        }
        createFrom.mSessionType = autoValue_StreamSpec.sessionType;
        applyExpectedFrameRateRange(createFrom, autoValue_StreamSpec);
        return createFrom;
    }

    @Override // androidx.camera.core.UseCase
    public final Set getSupportedDynamicRanges(CameraInfoInternal cameraInfoInternal) {
        HashSet hashSet = this.mVirtualCameraAdapter.mChildren;
        HashSet hashSet2 = null;
        if (hashSet.isEmpty()) {
            return null;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Set supportedDynamicRanges = ((UseCase) it.next()).getSupportedDynamicRanges(cameraInfoInternal);
            if (supportedDynamicRanges != null) {
                if (hashSet2 == null) {
                    hashSet2 = new HashSet(supportedDynamicRanges);
                } else {
                    hashSet2.retainAll(supportedDynamicRanges);
                }
            }
        }
        return hashSet2;
    }

    @Override // androidx.camera.core.UseCase
    public final Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(3);
        return hashSet;
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return new Preview.Builder(MutableOptionsBundle.from(config), 6);
    }

    @Override // androidx.camera.core.UseCase
    public final void onBind() {
        VirtualCameraAdapter virtualCameraAdapter = this.mVirtualCameraAdapter;
        Iterator it = virtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.bindToCamera(virtualCamera, null, null, useCase.getDefaultConfig(true, virtualCameraAdapter.mUseCaseConfigFactory));
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void onCameraControlReady() {
        Iterator it = this.mVirtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onCameraControlReady();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f4, code lost:
    
        if (r13 != false) goto L145;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e9  */
    @Override // androidx.camera.core.UseCase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.UseCaseConfig onMergeConfig(androidx.camera.core.impl.CameraInfoInternal r17, androidx.camera.core.impl.UseCaseConfig.Builder r18) {
        /*
            Method dump skipped, instructions count: 689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.streamsharing.StreamSharing.onMergeConfig(androidx.camera.core.impl.CameraInfoInternal, androidx.camera.core.impl.UseCaseConfig$Builder):androidx.camera.core.impl.UseCaseConfig");
    }

    @Override // androidx.camera.core.UseCase
    public final void onSessionStart() {
        Iterator it = this.mVirtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onSessionStart();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final void onSessionStop() {
        Iterator it = this.mVirtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            ((UseCase) it.next()).onSessionStop();
        }
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        Object[] objArr = {this.mSessionConfigBuilder.build()};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        updateSessionConfig(DesugarCollections.unmodifiableList(arrayList));
        TooltipPopup builder = this.mAttachedStreamSpec.toBuilder();
        builder.mTmpAnchorPos = config;
        return builder.build();
    }

    @Override // androidx.camera.core.UseCase
    public final AutoValue_StreamSpec onSuggestedStreamSpecUpdated(AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        Utf8.SafeProcessor.d("StreamSharing", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + autoValue_StreamSpec + ", secondaryStreamSpec " + autoValue_StreamSpec2);
        updateSessionConfig(createPipelineAndUpdateChildrenSpecs(getCameraId(), getSecondaryCamera() == null ? null : getSecondaryCamera().getCameraInfoInternal().getCameraId(), this.mCurrentConfig, autoValue_StreamSpec, autoValue_StreamSpec2));
        notifyActive();
        return autoValue_StreamSpec;
    }

    @Override // androidx.camera.core.UseCase
    public final void onUnbind() {
        clearPipeline$3();
        VirtualCameraAdapter virtualCameraAdapter = this.mVirtualCameraAdapter;
        Iterator it = virtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            VirtualCamera virtualCamera = (VirtualCamera) virtualCameraAdapter.mChildrenVirtualCameras.get(useCase);
            Objects.requireNonNull(virtualCamera);
            useCase.unbindFromCamera(virtualCamera);
        }
    }

    @Override // androidx.camera.core.UseCase
    public final UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        StreamSharingConfig streamSharingConfig = this.mDefaultConfig;
        streamSharingConfig.getClass();
        Config config = useCaseConfigFactory.getConfig(Config.CC.$default$getCaptureType(streamSharingConfig), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, streamSharingConfig.mConfig);
        }
        if (config == null) {
            return null;
        }
        return ((Preview.Builder) getUseCaseConfigBuilder(config)).getUseCaseConfig();
    }
}
