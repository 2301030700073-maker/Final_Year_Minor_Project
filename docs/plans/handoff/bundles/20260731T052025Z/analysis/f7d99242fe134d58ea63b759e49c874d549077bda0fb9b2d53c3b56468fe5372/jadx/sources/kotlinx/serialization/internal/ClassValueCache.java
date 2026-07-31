package kotlinx.serialization.internal;

import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.UseCaseCameraKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Api34Compat;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.coroutines.Deferred;
import kotlinx.serialization.KSerializer;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ClassValueCache implements ZoomCompat, SerializerCache, ParametrizedSerializerCache {
    public final Object classValue;
    public final Object compute;

    public ClassValueCache(Function1 function1) {
        this.compute = function1;
        this.classValue = new ClassValueReferences();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        float minZoomRatio = getMinZoomRatio();
        if (1.0f > getMaxZoomRatio() || minZoomRatio > 1.0f) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
            return null;
        }
        LinkedHashMap mutableMapOf = MapsKt__MapsKt.mutableMapOf(new Pair(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(1.0f)));
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            CameraMetadata.Companion companion = CameraMetadata.Companion;
            CameraMetadata cameraMetadata = ((CameraPipeCameraProperties) this.compute).metadata;
            companion.getClass();
            cameraMetadata.getClass();
            if (i >= 34 && Api34Compat.isZoomOverrideSupported(cameraMetadata)) {
                androidx.camera.camera2.compat.Api34Compat.setSettingsOverrideZoom(mutableMapOf);
            }
        }
        return useCaseCameraRequestControl.setParametersAsync(mutableMapOf, UseCaseCameraKt.defaultOptionPriority);
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer get(KClass kClass) {
        Object obj = ((ClassValueReferences) this.classValue).get(Handshake.Companion.getJavaClass(kClass));
        obj.getClass();
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        Object obj2 = mutableSoftReference.reference.get();
        if (obj2 == null) {
            synchronized (mutableSoftReference) {
                obj2 = mutableSoftReference.reference.get();
                if (obj2 == null) {
                    obj2 = new CacheEntry((KSerializer) ((Function1) this.compute).invoke(kClass));
                    mutableSoftReference.reference = new SoftReference(obj2);
                }
            }
        }
        return ((CacheEntry) obj2).serializer;
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s */
    public Object mo949getgIAlus(KClass kClass, ArrayList arrayList) {
        Object failure;
        Object obj = ((ClassValueReferences) this.classValue).get(Handshake.Companion.getJavaClass(kClass));
        obj.getClass();
        MutableSoftReference mutableSoftReference = (MutableSoftReference) obj;
        Object obj2 = mutableSoftReference.reference.get();
        if (obj2 == null) {
            synchronized (mutableSoftReference) {
                obj2 = mutableSoftReference.reference.get();
                if (obj2 == null) {
                    obj2 = new ParametrizedCacheEntry();
                    mutableSoftReference.reference = new SoftReference(obj2);
                }
            }
        }
        ParametrizedCacheEntry parametrizedCacheEntry = (ParametrizedCacheEntry) obj2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new KTypeWrapper((KType) it.next()));
        }
        ConcurrentHashMap concurrentHashMap = parametrizedCacheEntry.serializers;
        Object obj3 = concurrentHashMap.get(arrayList2);
        if (obj3 == null) {
            try {
                failure = (KSerializer) ((Function2) this.compute).invoke(kClass, arrayList);
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            Result result = new Result(failure);
            Object putIfAbsent = concurrentHashMap.putIfAbsent(arrayList2, result);
            obj3 = putIfAbsent == null ? result : putIfAbsent;
        }
        return ((Result) obj3).value;
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMaxZoomRatio() {
        Object upper = ((Range) this.classValue).getUpper();
        upper.getClass();
        return ((Number) upper).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public float getMinZoomRatio() {
        Object lower = ((Range) this.classValue).getLower();
        lower.getClass();
        return ((Number) lower).floatValue();
    }

    @Override // androidx.camera.camera2.compat.ZoomCompat
    public Deferred resetAsync(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        useCaseCameraRequestControl.getClass();
        CaptureRequest.Key key = CaptureRequest.CONTROL_ZOOM_RATIO;
        key.getClass();
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(key);
        if (Build.VERSION.SDK_INT >= 34) {
            CaptureRequest.Key key2 = CaptureRequest.CONTROL_SETTINGS_OVERRIDE;
            key2.getClass();
            mutableListOf.add(key2);
        }
        return useCaseCameraRequestControl.removeParametersAsync(mutableListOf);
    }

    public ClassValueCache(Function2 function2) {
        this.compute = function2;
        this.classValue = new ClassValueReferences();
    }

    public ClassValueCache(CameraPipeCameraProperties cameraPipeCameraProperties, Range range) {
        this.compute = cameraPipeCameraProperties;
        this.classValue = range;
    }
}
