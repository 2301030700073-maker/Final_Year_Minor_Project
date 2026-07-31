package androidx.camera.camera2.adapter;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.DoNotDisturbException;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.InitializationException;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.InternalCameraPresenceListener;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraSurfaceAdapter implements InternalCameraPresenceListener {
    public final DaggerCameraAppComponent$CameraAppComponentImpl component;
    public final Context context;
    public final Object lock;
    public Map supportedSurfaceCombinationMap;

    public CameraSurfaceAdapter(Context context, DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl, Set set) {
        context.getClass();
        this.context = context;
        daggerCameraAppComponent$CameraAppComponentImpl.getClass();
        this.component = daggerCameraAppComponent$CameraAppComponentImpl;
        this.lock = new Object();
        this.supportedSurfaceCombinationMap = EmptyMap.INSTANCE;
        try {
            onCamerasUpdated(CollectionsKt.toList(set));
        } catch (CameraUpdateException e) {
            throw new InitializationException(e);
        }
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void onCamerasUpdated(List list) {
        List<String> minus;
        FeatureCombinationQuery featureCombinationQuery;
        synchronized (this.lock) {
            minus = CollectionsKt.minus((Iterable) list, (Iterable) this.supportedSurfaceCombinationMap.keySet());
        }
        if (!minus.isEmpty() && Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Creating new surface combinations for: " + minus);
        }
        DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl = this.component;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!minus.isEmpty()) {
            try {
                for (String str : minus) {
                    CameraDevicesImpl cameraDevices = daggerCameraAppComponent$CameraAppComponentImpl.getCameraDevices();
                    CameraId.m34constructorimpl(str);
                    CameraMetadata m27awaitCameraMetadataFpsL5FU$default = CameraDevices$CC.m27awaitCameraMetadataFpsL5FU$default(cameraDevices, str);
                    CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
                    key.getClass();
                    CameraQuirks cameraQuirks = new CameraQuirks(m27awaitCameraMetadataFpsL5FU$default, new StreamConfigurationMapCompat((StreamConfigurationMap) ((Camera2CameraMetadata) m27awaitCameraMetadataFpsL5FU$default).get(key), new OutputSizesCorrector(m27awaitCameraMetadataFpsL5FU$default)));
                    Context context = this.context;
                    EncoderProfilesProviderAdapter encoderProfilesProviderAdapter = new EncoderProfilesProviderAdapter(str, cameraQuirks.getQuirks());
                    if (Build.VERSION.SDK_INT >= 35) {
                        CameraPipeImpl cameraPipeImpl = (CameraPipeImpl) daggerCameraAppComponent$CameraAppComponentImpl.cameraAppConfig.authority;
                        MathKt.checkNotNullFromProvides(cameraPipeImpl);
                        featureCombinationQuery = new MenuHostHelper(m27awaitCameraMetadataFpsL5FU$default, cameraPipeImpl, cameraQuirks, 3);
                    } else {
                        featureCombinationQuery = FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY;
                    }
                    linkedHashMap.put(str, new SupportedSurfaceCombination(context, m27awaitCameraMetadataFpsL5FU$default, encoderProfilesProviderAdapter, featureCombinationQuery));
                }
            } catch (DoNotDisturbException e) {
                throw new CameraUpdateException("Failed to query camera metadata", e);
            } catch (Exception e2) {
                throw new CameraUpdateException("Failed to build surface combinations", e2);
            }
        }
        synchronized (this.lock) {
            try {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    if (this.supportedSurfaceCombinationMap.containsKey(str2)) {
                        Object obj = this.supportedSurfaceCombinationMap.get(str2);
                        obj.getClass();
                        linkedHashMap2.put(str2, obj);
                    }
                }
                linkedHashMap2.putAll(linkedHashMap);
                this.supportedSurfaceCombinationMap = linkedHashMap2;
                if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                    Log.d("CXCP", "Committed new surface combination map. Total cameras: " + linkedHashMap2.size());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
