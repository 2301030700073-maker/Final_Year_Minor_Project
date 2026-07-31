package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraAppComponentImpl;
import androidx.camera.camera2.config.DaggerCameraAppComponent$CameraComponentImpl;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Api30Compat;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.graph.CameraGraphSessionImpl;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import androidx.camera.camera2.pipe.graph.GraphLoop;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.GraphState3A;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.Result3AStateListenerImpl;
import androidx.camera.camera2.pipe.graph.Result3AStateListenerKt$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.mikepenz.fastadapter.VerboseLogger;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import de.cketti.changelog.XmlParser;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: androidx.camera.camera2.pipe.CameraDevices$-CC, reason: invalid class name */
/* loaded from: classes.dex */
public abstract /* synthetic */ class CameraDevices$CC implements CallbackToFutureAdapter$Resolver {
    /* renamed from: awaitCameraIds-SeavPBo$default, reason: not valid java name */
    public static ArrayList m26awaitCameraIdsSeavPBo$default(CameraDevicesImpl cameraDevicesImpl) {
        ArrayList arrayList;
        Camera2DeviceCache camera2DeviceCache = ((Camera2Backend) cameraDevicesImpl.m85getCameraBackendSeavPBo()).camera2DeviceCache;
        synchronized (camera2DeviceCache.lock) {
            arrayList = camera2DeviceCache.openableCameras;
        }
        if (arrayList == null) {
            arrayList = camera2DeviceCache.readCameraIds();
        }
        if (arrayList == null) {
            Log.w("CXCP", "Failed to load cameraIds from " + ((Object) CameraBackendId.m25toStringimpl("CXCP-Camera2")));
        }
        return arrayList;
    }

    /* renamed from: awaitCameraMetadata-FpsL5FU$default, reason: not valid java name */
    public static CameraMetadata m27awaitCameraMetadataFpsL5FU$default(CameraDevicesImpl cameraDevicesImpl, String str) {
        cameraDevicesImpl.getClass();
        str.getClass();
        return ((Camera2Backend) cameraDevicesImpl.m85getCameraBackendSeavPBo()).camera2MetadataCache.m63awaitCameraMetadataEfqyGwQ(str);
    }

    /* renamed from: awaitConcurrentCameraIds-SeavPBo$default, reason: not valid java name */
    public static Set m28awaitConcurrentCameraIdsSeavPBo$default(CameraDevicesImpl cameraDevicesImpl) {
        Camera2DeviceCache camera2DeviceCache = ((Camera2Backend) cameraDevicesImpl.m85getCameraBackendSeavPBo()).camera2DeviceCache;
        if (Build.VERSION.SDK_INT < 30) {
            camera2DeviceCache.getClass();
            return EmptySet.INSTANCE;
        }
        synchronized (camera2DeviceCache.lock) {
        }
        CameraManager cameraManager = (CameraManager) camera2DeviceCache.cameraManager.get();
        try {
            cameraManager.getClass();
            Set concurrentCameraIds = Api30Compat.getConcurrentCameraIds(cameraManager);
            Log.d("CXCP", "Loaded ConcurrentCameraIdsSet " + concurrentCameraIds);
            Set<Set> set = concurrentCameraIds;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set, 10));
            for (Set<String> set2 : set) {
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
                for (String str : set2) {
                    CameraId.m34constructorimpl(str);
                    arrayList2.add(new CameraId(str));
                }
                arrayList.add(CollectionsKt.toSet(arrayList2));
            }
            return CollectionsKt.toSet(arrayList);
        } catch (CameraAccessException e) {
            Log.w("CXCP", "Failed to query CameraManager#getConcurrentStreamingCameraIds", e);
            return null;
        }
    }

    public static void m(SurfaceConfig.ConfigType configType, SurfaceConfig.ConfigSize configSize, SurfaceCombination surfaceCombination, SurfaceConfig.ConfigType configType2, SurfaceConfig.ConfigSize configSize2) {
        StreamUseCase streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
        surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase));
        surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType2, configSize2, streamUseCase));
    }

    public static CompletableDeferredImpl unlock3A$default(CameraGraphSessionImpl cameraGraphSessionImpl, long j, int i) {
        Map map;
        boolean z;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = (i & 1) != 0 ? null : bool;
        Boolean bool3 = (i & 4) != 0 ? null : bool;
        long j2 = (i & 32) != 0 ? 3000000000L : j;
        if (cameraGraphSessionImpl.token.getReleased()) {
            UriKt$$ExternalSyntheticBUOutline0.m(cameraGraphSessionImpl, " after close.", "Cannot call unlock3A on ");
            return null;
        }
        Controller3A controller3A = cameraGraphSessionImpl.controller3A;
        Long l = new Long(j2);
        CompletableDeferredImpl completableDeferredImpl = Controller3A.deferredResult3ASubmitFailed;
        GraphProcessorImpl graphProcessorImpl = controller3A.graphProcessor;
        CameraMetadata.Companion companion = CameraMetadata.Companion;
        CameraMetadata cameraMetadata = controller3A.metadata;
        companion.getClass();
        Boolean bool4 = !CameraMetadata.Companion.getSupportsAutoFocusTrigger(cameraMetadata) ? null : bool;
        int i2 = 0;
        if (!Intrinsics.areEqual(bool2, bool) && !Intrinsics.areEqual(bool4, bool) && !Intrinsics.areEqual(bool3, bool)) {
            return JobKt.CompletableDeferred(new Result3A(0, null));
        }
        if (graphProcessorImpl.graphLoop.getRepeatingRequest() == null) {
            return completableDeferredImpl;
        }
        if (Intrinsics.areEqual(bool4, bool)) {
            Log.d("CXCP", "unlock3A - sending a request to unlock af first.");
            Map map2 = Controller3A.parameterForAfTriggerCancel;
            map2.getClass();
            GraphLoop graphLoop = graphProcessorImpl.graphLoop;
            graphLoop.getClass();
            if (graphLoop.getRepeatingRequest() != null) {
                z = graphLoop.processingQueue.tryEmit(new GraphCommand.Trigger(map2));
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot submit parameters without an active repeating request!");
                z = false;
            }
            if (!z) {
                Log.d("CXCP", "unlock3A - failed to send a request to unlock af first.");
                return completableDeferredImpl;
            }
            GraphState3A.m80update7jOEVJU$default(controller3A.graphState3A, null, null, null, null, null, null, null, null, Boolean.FALSE, null, 767);
        }
        boolean areEqual = Intrinsics.areEqual(bool2, bool);
        boolean areEqual2 = Intrinsics.areEqual(bool4, bool);
        boolean areEqual3 = Intrinsics.areEqual(bool3, bool);
        if (areEqual || areEqual2 || areEqual3) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (areEqual) {
                linkedHashMap.put(CaptureResult.CONTROL_AE_STATE, Controller3A.aeUnlockedStateList);
            }
            if (areEqual2) {
                linkedHashMap.put(CaptureResult.CONTROL_AF_STATE, Controller3A.afUnlockedStateList);
            }
            if (areEqual3) {
                linkedHashMap.put(CaptureResult.CONTROL_AWB_STATE, Controller3A.awbUnlockedStateList);
            }
            map = linkedHashMap;
        } else {
            map = EmptyMap.INSTANCE;
        }
        Result3AStateListenerImpl result3AStateListenerImpl = new Result3AStateListenerImpl(new Result3AStateListenerKt$$ExternalSyntheticLambda0(i2, map), 60, l);
        Listener3A listener3A = controller3A.graphListener3A;
        listener3A.getClass();
        listener3A.listeners.add(result3AStateListenerImpl);
        Boolean bool5 = Intrinsics.areEqual(bool2, bool) ? Boolean.FALSE : null;
        Boolean bool6 = Intrinsics.areEqual(bool3, bool) ? Boolean.FALSE : null;
        if (bool5 != null || bool6 != null) {
            Log.d("CXCP", "unlock3A - updating graph state, aeLock=" + bool5 + ", awbLock=" + bool6);
            GraphState3A.m80update7jOEVJU$default(controller3A.graphState3A, null, null, null, null, null, null, null, bool5, null, bool6, 383);
        }
        graphProcessorImpl.update3AParameters(controller3A.graphState3A.toCaptureRequestParametersMap());
        return result3AStateListenerImpl._result;
    }

    /* renamed from: update3A-ydBZfZg$default, reason: not valid java name */
    public static Deferred m29update3AydBZfZg$default(CameraGraphSessionImpl cameraGraphSessionImpl, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, int i) {
        AeMode aeMode2 = (i & 1) != 0 ? null : aeMode;
        AfMode afMode2 = (i & 2) != 0 ? null : afMode;
        AwbMode awbMode2 = (i & 4) != 0 ? null : awbMode;
        List list4 = (i & 8) != 0 ? null : list;
        List list5 = (i & 16) != 0 ? null : list2;
        List list6 = (i & 32) != 0 ? null : list3;
        if (!cameraGraphSessionImpl.token.getReleased()) {
            return Controller3A.m79update3A169HPGg$default(cameraGraphSessionImpl.controller3A, aeMode2, afMode2, awbMode2, null, list4, list5, list6, 8);
        }
        UriKt$$ExternalSyntheticBUOutline0.m(cameraGraphSessionImpl, " after close.", "Cannot call update3A on ");
        return null;
    }

    public static int m(int i, float f, int i2) {
        return (Float.floatToIntBits(f) + i) * i2;
    }

    public static int m(List list, int i, int i2) {
        return (list.hashCode() + i) * i2;
    }

    public static SurfaceCombination m(ArrayList arrayList, SurfaceCombination surfaceCombination) {
        arrayList.add(surfaceCombination);
        return new SurfaceCombination();
    }

    public static Provider m(DaggerCameraAppComponent$CameraAppComponentImpl daggerCameraAppComponent$CameraAppComponentImpl, DaggerCameraAppComponent$CameraComponentImpl daggerCameraAppComponent$CameraComponentImpl, int i) {
        return DoubleCheck.provider(new XmlParser(i, 2, daggerCameraAppComponent$CameraAppComponentImpl, daggerCameraAppComponent$CameraComponentImpl));
    }

    public static String m(char c, String str, String str2) {
        return str + str2 + c;
    }

    public static String m(int i, String str, String str2) {
        return str + i + str2;
    }

    public static String m(long j, String str) {
        return str + j;
    }

    public static String m(String str, int i) {
        return str + i;
    }

    public static String m(String str, int i, char c) {
        return str + i + c;
    }

    public static String m(String str, String str2) {
        return str + str2;
    }

    public static String m(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String m(String str, StringBuilder sb, boolean z) {
        sb.append(z);
        sb.append(str);
        return sb.toString();
    }

    public static String m(StringBuilder sb, float f, char c) {
        sb.append(f);
        sb.append(c);
        return sb.toString();
    }

    public static String m(StringBuilder sb, int i, char c) {
        sb.append(i);
        sb.append(c);
        return sb.toString();
    }

    public static String m(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static String m(StringBuilder sb, String str, char c) {
        sb.append(str);
        sb.append(c);
        return sb.toString();
    }

    public static String m(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String m(StringBuilder sb, boolean z, char c) {
        sb.append(z);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static StringBuilder m30m(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static StringBuilder m31m(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static void m32m(int i, String str, String str2) {
        Log.d(str2, str + i);
    }

    public static void m(SurfaceCombination surfaceCombination, SurfaceConfig surfaceConfig, SurfaceConfig.ConfigType configType, SurfaceConfig.ConfigSize configSize, StreamUseCase streamUseCase) {
        surfaceCombination.addSurfaceConfig(surfaceConfig);
        surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase));
    }

    public static void m(String str, CompletableDeferredImpl completableDeferredImpl) {
        completableDeferredImpl.completeExceptionally(new InstanceCreationException(str));
    }

    public static float m(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }
}
