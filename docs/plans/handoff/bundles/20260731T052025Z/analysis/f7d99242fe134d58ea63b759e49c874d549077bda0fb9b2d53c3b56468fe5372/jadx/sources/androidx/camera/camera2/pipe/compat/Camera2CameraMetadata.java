package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CameraMetadata implements CameraMetadata {
    public final Lazy _physicalCameraIds;
    public final Lazy _sessionKeys;
    public final Lazy _supportedExtensions;
    public final Set cacheBlocklist;
    public final String camera;
    public final CameraCharacteristics characteristics;
    public final ArrayMap extensionCache;
    public final Camera2MetadataCache metadataProvider;
    public final ArrayMap values;

    public Camera2CameraMetadata(String str, CameraCharacteristics cameraCharacteristics, Camera2MetadataCache camera2MetadataCache, Set set) {
        str.getClass();
        set.getClass();
        this.camera = str;
        this.characteristics = cameraCharacteristics;
        this.metadataProvider = camera2MetadataCache;
        this.cacheBlocklist = set;
        this.values = new ArrayMap();
        this.extensionCache = new ArrayMap();
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i2) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this._supportedExtensions = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i3 = 2;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i4 = 3;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i5 = 4;
        this._physicalCameraIds = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i6 = 5;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i7 = 6;
        ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
        final int i8 = 7;
        this._sessionKeys = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$$ExternalSyntheticLambda0
            public final /* synthetic */ Camera2CameraMetadata f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i8;
                Collection collection = EmptyList.INSTANCE;
                EmptySet emptySet = EmptySet.INSTANCE;
                Camera2CameraMetadata camera2CameraMetadata = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection("Camera-" + ((Object) CameraId.m35toStringimpl(str2)) + "#supportedExtensions");
                                Camera2MetadataCache camera2MetadataCache2 = camera2CameraMetadata.metadataProvider;
                                str2.getClass();
                                Set set2 = Build.VERSION.SDK_INT >= 31 ? CollectionsKt.toSet(Api31Compat.getSupportedExtensions(camera2MetadataCache2.m64getCameraExtensionCharacteristicsEfqyGwQ(str2))) : emptySet;
                                Trace.endSection();
                                return set2;
                            } finally {
                            }
                        } catch (AssertionError e) {
                            Log.w("CXCP", "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m35toStringimpl(str2)), e);
                            return emptySet;
                        }
                    case 1:
                        String str3 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str3)) + "#keys");
                                Collection keys = camera2CameraMetadata.characteristics.getKeys();
                                if (keys != null) {
                                    collection = keys;
                                }
                                Set set3 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set3;
                            } finally {
                            }
                        } catch (AssertionError e2) {
                            Log.w("CXCP", "Failed to getKeys from " + ((Object) CameraId.m35toStringimpl(str3)) + '}', e2);
                            return emptySet;
                        }
                    case 2:
                        String str4 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str4)) + "#availableCaptureRequestKeys");
                                Collection availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                                if (availableCaptureRequestKeys != null) {
                                    collection = availableCaptureRequestKeys;
                                }
                                Set set4 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set4;
                            } finally {
                            }
                        } catch (AssertionError e3) {
                            Log.w("CXCP", "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m35toStringimpl(str4)), e3);
                            return emptySet;
                        }
                    case 3:
                        String str5 = camera2CameraMetadata.camera;
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str5)) + "#availableCaptureResultKeys");
                                Collection availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                                if (availableCaptureResultKeys != null) {
                                    collection = availableCaptureResultKeys;
                                }
                                Set set5 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set5;
                            } finally {
                            }
                        } catch (AssertionError e4) {
                            Log.w("CXCP", "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m35toStringimpl(str5)), e4);
                            return emptySet;
                        }
                    case 4:
                        String str6 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection(((Object) CameraId.m35toStringimpl(str6)) + "#physicalCameraIds");
                                Set physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                                Log.i("CXCP", "Loaded physicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)) + ": " + physicalCameraIds);
                                Set<String> set6 = physicalCameraIds;
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set6, 10));
                                for (String str7 : set6) {
                                    CameraId.m34constructorimpl(str7);
                                    arrayList.add(new CameraId(str7));
                                }
                                Set set7 = CollectionsKt.toSet(arrayList);
                                Trace.endSection();
                                return set7;
                            } catch (Throwable th) {
                                throw th;
                            }
                        } catch (AssertionError e5) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e5);
                            return emptySet;
                        } catch (NullPointerException e6) {
                            Log.w("CXCP", "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m35toStringimpl(str6)), e6);
                            return emptySet;
                        }
                    case 5:
                        String str8 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str8 + "#availablePhysicalCameraRequestKeys");
                                Collection availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                                if (availablePhysicalCameraRequestKeys != null) {
                                    collection = availablePhysicalCameraRequestKeys;
                                }
                                Set set8 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set8;
                            } finally {
                            }
                        } catch (AssertionError e7) {
                            Log.w("CXCP", "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + str8, e7);
                            return emptySet;
                        }
                    case 6:
                        String str9 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 35) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str9 + "#getAvailableSessionCharacteristicsKeys");
                                Collection availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionCharacteristicsKeys != null) {
                                    collection = availableSessionCharacteristicsKeys;
                                }
                                Set set9 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set9;
                            } finally {
                            }
                        } catch (AssertionError e8) {
                            Log.w("CXCP", "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + str9, e8);
                            return emptySet;
                        }
                    default:
                        String str10 = camera2CameraMetadata.camera;
                        if (Build.VERSION.SDK_INT < 28) {
                            return emptySet;
                        }
                        try {
                            try {
                                Trace.beginSection("Camera-" + str10 + "#availableSessionKeys");
                                Collection availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                                if (availableSessionKeys != null) {
                                    collection = availableSessionKeys;
                                }
                                Set set10 = CollectionsKt.toSet(collection);
                                Trace.endSection();
                                return set10;
                            } finally {
                            }
                        } catch (AssertionError e9) {
                            Log.w("CXCP", "Failed to getAvailableSessionKeys from Camera-" + str10, e9);
                            return emptySet;
                        }
                }
            }
        });
    }

    public final Object get(CameraCharacteristics.Key key) {
        Object obj;
        if (this.cacheBlocklist.contains(key)) {
            try {
                return this.characteristics.get(key);
            } catch (AssertionError unused) {
                DBUtil$$ExternalSyntheticBUOutline0.m$1(key, ": Framework throw an AssertionError", "Failed to get characteristic for ");
                return null;
            }
        }
        synchronized (this.values) {
            obj = this.values.get(key);
        }
        if (obj != null) {
            return obj;
        }
        try {
            Object obj2 = this.characteristics.get(key);
            if (obj2 == null) {
                return obj2;
            }
            synchronized (this.values) {
                this.values.put(key, obj2);
            }
            return obj2;
        } catch (AssertionError unused2) {
            DBUtil$$ExternalSyntheticBUOutline0.m$1(key, ": Framework throw an AssertionError", "Failed to get characteristic for ");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public final Object unwrapAs(ClassReference classReference) {
        if (classReference.equals(Reflection.getOrCreateKotlinClass(CameraCharacteristics.class))) {
            return this.characteristics;
        }
        return null;
    }
}
