package androidx.camera.camera2.pipe.graph;

import android.util.Size;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.MetadataTransform;
import androidx.camera.camera2.pipe.OutputStream$DynamicRangeProfile;
import androidx.camera.camera2.pipe.OutputStream$MirrorMode;
import androidx.camera.camera2.pipe.OutputStream$StreamUseCase;
import androidx.camera.camera2.pipe.OutputStream$StreamUseHint;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.ImageReaderImageSource;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StreamGraphImpl implements AutoCloseable {
    public static final StreamGraphImpl$special$$inlined$compareBy$1 previewFormatComparator;
    public static final StreamGraphImpl$special$$inlined$compareBy$1 previewOutputTypesComparator;
    public final LinkedHashMap _streamMap;
    public final CameraGraph$Config graphConfig;
    public final MapBuilder imageSourceMap;
    public final List inputs;
    public final LinkedHashMap outputConfigMap;
    public final List outputConfigs;
    public final ArrayList outputs;
    public final ArrayList streams;
    public static final AtomicInt streamIds = AtomicFU.atomic(0);
    public static final AtomicInt outputIds = AtomicFU.atomic(0);
    public static final AtomicInt inputIds = AtomicFU.atomic(0);
    public static final AtomicInt configIds = AtomicFU.atomic(0);
    public static final AtomicInt groupIds = AtomicFU.atomic(0);
    public static final List previewOutputTypes = IntOffsetKt.listOf((Object[]) new MetadataTransform.AnonymousClass1[]{MetadataTransform.AnonymousClass1.SURFACE_VIEW, MetadataTransform.AnonymousClass1.SURFACE_TEXTURE});
    public static final List previewFormats = IntOffsetKt.listOf((Object[]) new StreamFormat[]{new StreamFormat(0), new StreamFormat(34)});

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InputStreamImpl {
        public final int format;
        public final int id;

        public InputStreamImpl(int i, int i2) {
            this.id = i;
            this.format = i2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutputConfig {
        public final String camera;
        public final MetadataTransform.AnonymousClass1 deferredOutputType;
        public final OutputStream$DynamicRangeProfile dynamicRangeProfile;
        public final int format;
        public final Integer groupNumber;
        public final int id;
        public final OutputStream$MirrorMode mirrorMode;
        public final List sensorPixelModes;
        public final Size size;
        public final ArrayList streamBuilder;
        public final OutputStream$StreamUseCase streamUseCase;
        public final OutputStream$StreamUseHint streamUseHint;

        public OutputConfig(int i, Size size, int i2, String str, Integer num, MetadataTransform.AnonymousClass1 anonymousClass1, OutputStream$MirrorMode outputStream$MirrorMode, OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile, OutputStream$StreamUseCase outputStream$StreamUseCase, OutputStream$StreamUseHint outputStream$StreamUseHint, List list) {
            size.getClass();
            str.getClass();
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.groupNumber = num;
            this.deferredOutputType = anonymousClass1;
            this.mirrorMode = outputStream$MirrorMode;
            this.dynamicRangeProfile = outputStream$DynamicRangeProfile;
            this.streamUseCase = outputStream$StreamUseCase;
            this.streamUseHint = outputStream$StreamUseHint;
            this.sensorPixelModes = list;
            this.streamBuilder = new ArrayList();
        }

        public final String toString() {
            return CameraDevices$CC.m("OutputConfig-", this.id);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutputStreamImpl {
        public final String camera;
        public final OutputStream$DynamicRangeProfile dynamicRangeProfile;
        public final int format;
        public final int id;
        public final OutputStream$MirrorMode mirrorMode;
        public final MetadataTransform.AnonymousClass1 outputType;
        public final Size size;
        public CameraStream stream;
        public final OutputStream$StreamUseCase streamUseCase;
        public final OutputStream$StreamUseHint streamUseHint;

        public OutputStreamImpl(int i, int i2, Size size, MetadataTransform.AnonymousClass1 anonymousClass1, OutputStream$DynamicRangeProfile outputStream$DynamicRangeProfile, OutputStream$MirrorMode outputStream$MirrorMode, OutputStream$StreamUseCase outputStream$StreamUseCase, OutputStream$StreamUseHint outputStream$StreamUseHint, String str) {
            size.getClass();
            str.getClass();
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.mirrorMode = outputStream$MirrorMode;
            this.dynamicRangeProfile = outputStream$DynamicRangeProfile;
            this.streamUseCase = outputStream$StreamUseCase;
            this.outputType = anonymousClass1;
            this.streamUseHint = outputStream$StreamUseHint;
        }

        public final boolean isValidForHighSpeedOperatingMode() {
            OutputStream$StreamUseHint outputStream$StreamUseHint;
            OutputStream$StreamUseCase outputStream$StreamUseCase = this.streamUseCase;
            if (outputStream$StreamUseCase == null) {
                return true;
            }
            long j = outputStream$StreamUseCase.value;
            if (OutputStream$StreamUseCase.m40equalsimpl0(j, 0L) || OutputStream$StreamUseCase.m40equalsimpl0(j, 1L) || OutputStream$StreamUseCase.m40equalsimpl0(j, 3L) || (outputStream$StreamUseHint = this.streamUseHint) == null) {
                return true;
            }
            long j2 = outputStream$StreamUseHint.value;
            return OutputStream$StreamUseHint.m41equalsimpl0(j2, 0L) || OutputStream$StreamUseHint.m41equalsimpl0(j2, 1L);
        }

        public final String toString() {
            return CameraDevices$CC.m("Output-", this.id);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1] */
    static {
        final int i = 0;
        final int i2 = 1;
        previewOutputTypesComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        Iterator it = ((CameraStream) obj).outputs.iterator();
                        if (it.hasNext()) {
                            StreamGraphImpl.OutputStreamImpl outputStreamImpl = (StreamGraphImpl.OutputStreamImpl) it.next();
                            List list = StreamGraphImpl.previewOutputTypes;
                            MetadataTransform.AnonymousClass1 anonymousClass1 = outputStreamImpl.outputType;
                            list.getClass();
                            Integer valueOf = Integer.valueOf(list.indexOf(anonymousClass1));
                            while (it.hasNext()) {
                                StreamGraphImpl.OutputStreamImpl outputStreamImpl2 = (StreamGraphImpl.OutputStreamImpl) it.next();
                                List list2 = StreamGraphImpl.previewOutputTypes;
                                MetadataTransform.AnonymousClass1 anonymousClass12 = outputStreamImpl2.outputType;
                                list2.getClass();
                                Integer valueOf2 = Integer.valueOf(list2.indexOf(anonymousClass12));
                                if (valueOf.compareTo(valueOf2) < 0) {
                                    valueOf = valueOf2;
                                }
                            }
                            Iterator it2 = ((CameraStream) obj2).outputs.iterator();
                            if (it2.hasNext()) {
                                StreamGraphImpl.OutputStreamImpl outputStreamImpl3 = (StreamGraphImpl.OutputStreamImpl) it2.next();
                                List list3 = StreamGraphImpl.previewOutputTypes;
                                MetadataTransform.AnonymousClass1 anonymousClass13 = outputStreamImpl3.outputType;
                                list3.getClass();
                                Integer valueOf3 = Integer.valueOf(list3.indexOf(anonymousClass13));
                                while (it2.hasNext()) {
                                    StreamGraphImpl.OutputStreamImpl outputStreamImpl4 = (StreamGraphImpl.OutputStreamImpl) it2.next();
                                    List list4 = StreamGraphImpl.previewOutputTypes;
                                    MetadataTransform.AnonymousClass1 anonymousClass14 = outputStreamImpl4.outputType;
                                    list4.getClass();
                                    Integer valueOf4 = Integer.valueOf(list4.indexOf(anonymousClass14));
                                    if (valueOf3.compareTo(valueOf4) < 0) {
                                        valueOf3 = valueOf4;
                                    }
                                }
                                break;
                            }
                        }
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        break;
                    default:
                        Iterator it3 = ((CameraStream) obj).outputs.iterator();
                        if (it3.hasNext()) {
                            Integer valueOf5 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it3.next()).format)));
                            while (it3.hasNext()) {
                                Integer valueOf6 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it3.next()).format)));
                                if (valueOf5.compareTo(valueOf6) < 0) {
                                    valueOf5 = valueOf6;
                                }
                            }
                            Iterator it4 = ((CameraStream) obj2).outputs.iterator();
                            if (it4.hasNext()) {
                                Integer valueOf7 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it4.next()).format)));
                                while (it4.hasNext()) {
                                    Integer valueOf8 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it4.next()).format)));
                                    if (valueOf7.compareTo(valueOf8) < 0) {
                                        valueOf7 = valueOf8;
                                    }
                                }
                                break;
                            }
                        }
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        break;
                }
                return 0;
            }
        };
        previewFormatComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        Iterator it = ((CameraStream) obj).outputs.iterator();
                        if (it.hasNext()) {
                            StreamGraphImpl.OutputStreamImpl outputStreamImpl = (StreamGraphImpl.OutputStreamImpl) it.next();
                            List list = StreamGraphImpl.previewOutputTypes;
                            MetadataTransform.AnonymousClass1 anonymousClass1 = outputStreamImpl.outputType;
                            list.getClass();
                            Integer valueOf = Integer.valueOf(list.indexOf(anonymousClass1));
                            while (it.hasNext()) {
                                StreamGraphImpl.OutputStreamImpl outputStreamImpl2 = (StreamGraphImpl.OutputStreamImpl) it.next();
                                List list2 = StreamGraphImpl.previewOutputTypes;
                                MetadataTransform.AnonymousClass1 anonymousClass12 = outputStreamImpl2.outputType;
                                list2.getClass();
                                Integer valueOf2 = Integer.valueOf(list2.indexOf(anonymousClass12));
                                if (valueOf.compareTo(valueOf2) < 0) {
                                    valueOf = valueOf2;
                                }
                            }
                            Iterator it2 = ((CameraStream) obj2).outputs.iterator();
                            if (it2.hasNext()) {
                                StreamGraphImpl.OutputStreamImpl outputStreamImpl3 = (StreamGraphImpl.OutputStreamImpl) it2.next();
                                List list3 = StreamGraphImpl.previewOutputTypes;
                                MetadataTransform.AnonymousClass1 anonymousClass13 = outputStreamImpl3.outputType;
                                list3.getClass();
                                Integer valueOf3 = Integer.valueOf(list3.indexOf(anonymousClass13));
                                while (it2.hasNext()) {
                                    StreamGraphImpl.OutputStreamImpl outputStreamImpl4 = (StreamGraphImpl.OutputStreamImpl) it2.next();
                                    List list4 = StreamGraphImpl.previewOutputTypes;
                                    MetadataTransform.AnonymousClass1 anonymousClass14 = outputStreamImpl4.outputType;
                                    list4.getClass();
                                    Integer valueOf4 = Integer.valueOf(list4.indexOf(anonymousClass14));
                                    if (valueOf3.compareTo(valueOf4) < 0) {
                                        valueOf3 = valueOf4;
                                    }
                                }
                                break;
                            }
                        }
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        break;
                    default:
                        Iterator it3 = ((CameraStream) obj).outputs.iterator();
                        if (it3.hasNext()) {
                            Integer valueOf5 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it3.next()).format)));
                            while (it3.hasNext()) {
                                Integer valueOf6 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it3.next()).format)));
                                if (valueOf5.compareTo(valueOf6) < 0) {
                                    valueOf5 = valueOf6;
                                }
                            }
                            Iterator it4 = ((CameraStream) obj2).outputs.iterator();
                            if (it4.hasNext()) {
                                Integer valueOf7 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it4.next()).format)));
                                while (it4.hasNext()) {
                                    Integer valueOf8 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(new StreamFormat(((StreamGraphImpl.OutputStreamImpl) it4.next()).format)));
                                    if (valueOf7.compareTo(valueOf8) < 0) {
                                        valueOf7 = valueOf8;
                                    }
                                }
                                break;
                            }
                        }
                        Regex$$ExternalSyntheticBUOutline0.m990m();
                        break;
                }
                return 0;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StreamGraphImpl(androidx.camera.camera2.pipe.CameraMetadata r29, androidx.camera.camera2.pipe.CameraGraph$Config r30, com.bumptech.glide.load.Option.AnonymousClass1 r31, okhttp3.ConnectionPool r32) {
        /*
            Method dump skipped, instructions count: 1267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.StreamGraphImpl.<init>(androidx.camera.camera2.pipe.CameraMetadata, androidx.camera.camera2.pipe.CameraGraph$Config, com.bumptech.glide.load.Option$1, okhttp3.ConnectionPool):void");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Iterator it = ((MapBuilderValues) this.imageSourceMap.values()).iterator();
        while (it.hasNext()) {
            AutoCloseable autoCloseable = (ImageReaderImageSource) it.next();
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else {
                if (!(autoCloseable instanceof ExecutorService)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
            }
        }
    }

    /* renamed from: get-aKI5c8E, reason: not valid java name */
    public final CameraStream m82getaKI5c8E(int i) {
        Object obj;
        Iterator it = this.streams.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((CameraStream) obj).id == i) {
                break;
            }
        }
        return (CameraStream) obj;
    }

    /* renamed from: getCameraStreamConfig-aKI5c8E, reason: not valid java name */
    public final CameraStream.Config m83getCameraStreamConfigaKI5c8E(int i) {
        Object obj;
        Iterator it = this._streamMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((CameraStream) ((Map.Entry) obj).getValue()).id == i) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry != null) {
            return (CameraStream.Config) entry.getKey();
        }
        return null;
    }

    public final String toString() {
        return "StreamGraph(" + this._streamMap + ')';
    }
}
