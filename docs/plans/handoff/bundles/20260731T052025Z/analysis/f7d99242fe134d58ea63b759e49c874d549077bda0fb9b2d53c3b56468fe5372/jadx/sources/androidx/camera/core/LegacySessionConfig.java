package androidx.camera.core;

import android.content.res.AssetManager;
import android.os.Build;
import android.util.Range;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0;
import androidx.profileinstaller.Encoding;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.sqlite.SQLite;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.jcraft.jzlib.Adler32;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacySessionConfig {
    public final /* synthetic */ int $r8$classId;
    public final Object effects;
    public Object featureSelectionListener;
    public Object featureSelectionListenerExecutor;
    public final Object frameRateRange;
    public boolean isLegacy;
    public final Object preferredFeatureGroup;
    public final Object requiredFeatureGroup;
    public final Object useCases;

    public LegacySessionConfig(ArrayList arrayList, List list) {
        Object obj;
        String concat;
        String str;
        String str2;
        boolean hasDynamicRange;
        this.$r8$classId = 0;
        list.getClass();
        Object obj2 = AutoValue_StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        obj2.getClass();
        this.effects = list;
        this.frameRateRange = obj2;
        this.requiredFeatureGroup = EmptySet.INSTANCE;
        this.preferredFeatureGroup = EmptyList.INSTANCE;
        List list2 = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList));
        this.useCases = list2;
        this.featureSelectionListener = new SessionConfig$$ExternalSyntheticLambda0(0);
        HandlerScheduledExecutorService mainThreadExecutor = Util.mainThreadExecutor();
        mainThreadExecutor.getClass();
        this.featureSelectionListenerExecutor = mainThreadExecutor;
        if (!obj2.equals(obj2)) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((UseCase) it.next()).mUseCaseConfig.hasTargetFrameRate()) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Can't set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig.");
                    throw null;
                }
            }
        }
        List list3 = (List) this.preferredFeatureGroup;
        Set set = (Set) this.requiredFeatureGroup;
        if (!set.isEmpty() || !list3.isEmpty()) {
            Set set2 = set;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
            Iterator it2 = set2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((GroupableFeature) it2.next()).getFeatureTypeInternal());
            }
            for (FeatureTypeInternal featureTypeInternal : CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList2))) {
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : set2) {
                    if (((GroupableFeature) obj3).getFeatureTypeInternal() == featureTypeInternal) {
                        arrayList3.add(obj3);
                    }
                }
                if (arrayList3.size() > 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3(arrayList3, "requiredFeatures has conflicting feature values: ");
                    throw null;
                }
            }
            list3.getClass();
            if (CollectionsKt.toList(CollectionsKt.toMutableSet(list3)).size() != list3.size()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(41, list3, "Duplicate values in preferredFeatures(");
                throw null;
            }
            LinkedHashSet intersect = CollectionsKt.intersect(set2, list3);
            if (!intersect.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3(intersect, "requiredFeatures and preferredFeatures have duplicate values: ");
                throw null;
            }
            for (UseCase useCase : (List) this.useCases) {
                Adler32 adler32 = UseCaseType.Companion;
                adler32.getClass();
                if (Adler32.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                    DBUtil$$ExternalSyntheticBUOutline0.m((Object) useCase, (Object) " is not supported with feature group");
                    throw null;
                }
                String str3 = useCase instanceof Preview ? "Preview" : useCase instanceof ImageCapture ? "ImageCapture" : useCase instanceof ImageAnalysis ? "ImageAnalysis" : SQLite.isVideoCapture(useCase) ? "VideoCapture" : "UseCase";
                Iterator it3 = FeatureTypeInternal.$ENTRIES.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it3.next();
                    adler32.getClass();
                    int ordinal = ((FeatureTypeInternal) obj).ordinal();
                    if (ordinal == 0) {
                        hasDynamicRange = useCase.mUseCaseConfig.hasDynamicRange();
                    } else if (ordinal == 1) {
                        hasDynamicRange = useCase.mUseCaseConfig.hasTargetFrameRate();
                    } else if (ordinal == 2) {
                        hasDynamicRange = useCase.mUseCaseConfig.containsOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE) || useCase.mUseCaseConfig.containsOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE);
                    } else if (ordinal == 3) {
                        hasDynamicRange = useCase.mUseCaseConfig.containsOption(ImageCaptureConfig.OPTION_OUTPUT_FORMAT);
                    } else {
                        if (ordinal != 4) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            throw null;
                        }
                        hasDynamicRange = Intrinsics.areEqual(useCase.mUseCaseConfig.retrieveOption(UseCaseConfig.OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT, Boolean.TRUE), Boolean.FALSE);
                    }
                    if (hasDynamicRange) {
                        break;
                    }
                }
                FeatureTypeInternal featureTypeInternal2 = (FeatureTypeInternal) obj;
                if (featureTypeInternal2 != null) {
                    StringBuilder sb = new StringBuilder("A ");
                    sb.append(featureTypeInternal2.name());
                    sb.append(" value is set to ");
                    sb.append(str3);
                    sb.append(" despite using feature groups. Do not use APIs like ");
                    int ordinal2 = featureTypeInternal2.ordinal();
                    if (ordinal2 == 0) {
                        concat = str3.concat(".Builder.setDynamicRange");
                    } else if (ordinal2 == 1) {
                        concat = str3.concat(".Builder.setTargetFrameRateRange");
                    } else if (ordinal2 == 2) {
                        concat = SQLite.isVideoCapture(useCase) ? str3.concat(".Builder.setVideoStabilizationEnabled") : str3.concat(".Builder.setPreviewStabilizationEnabled");
                    } else if (ordinal2 == 3) {
                        concat = str3.concat(".Builder.setOutputFormat");
                    } else {
                        if (ordinal2 != 4) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            throw null;
                        }
                        concat = "Recorder.Builder.setQualitySelector";
                    }
                    sb.append(concat);
                    sb.append(" while using feature groups. If, for example, ");
                    int ordinal3 = featureTypeInternal2.ordinal();
                    if (ordinal3 == 0) {
                        str = "HDR";
                    } else if (ordinal3 == 1) {
                        str = "60 FPS";
                    } else if (ordinal3 == 2) {
                        str = "stabilization";
                    } else if (ordinal3 == 3) {
                        str = "JPEG_R output format";
                    } else {
                        if (ordinal3 != 4) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            throw null;
                        }
                        str = "UHD recording quality";
                    }
                    sb.append(str);
                    sb.append(" is required, instead set ");
                    int ordinal4 = featureTypeInternal2.ordinal();
                    if (ordinal4 == 0) {
                        str2 = "GroupableFeature.HDR_HLG10";
                    } else if (ordinal4 == 1) {
                        str2 = "GroupableFeature.FPS_60";
                    } else if (ordinal4 == 2) {
                        str2 = "GroupableFeature.PREVIEW_STABILIZATION";
                    } else if (ordinal4 == 3) {
                        str2 = "GroupableFeature.IMAGE_ULTRA_HDR";
                    } else {
                        if (ordinal4 != 4) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            throw null;
                        }
                        str2 = "GroupableFeatures.UHD_RECORDING";
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(sb, str2, " as either a required or preferred feature."));
                    throw null;
                }
            }
        }
        this.isLegacy = true;
    }

    public FileInputStream openStreamFromAssets(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            ((ProfileInstaller$DiagnosticsCallback) this.preferredFeatureGroup).onDiagnosticReceived();
            return null;
        }
    }

    public void result(int i, Serializable serializable) {
        ((Executor) this.effects).execute(new DeviceProfileWriter$$ExternalSyntheticLambda0(i, 0, this, serializable));
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "SessionConfig@" + Integer.toHexString(System.identityHashCode(this)) + " {useCases=" + ((List) this.useCases) + ", frameRateRange=" + ((Range) this.frameRateRange) + ", requiredFeatureGroup=" + ((Set) this.requiredFeatureGroup) + ", preferredFeatureGroup=" + ((List) this.preferredFeatureGroup) + ", effects=" + ((List) this.effects) + ", viewPort=null}";
            default:
                return super.toString();
        }
    }

    public LegacySessionConfig(AssetManager assetManager, Executor executor, ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, String str, File file) {
        this.$r8$classId = 1;
        this.isLegacy = false;
        this.effects = executor;
        this.preferredFeatureGroup = profileInstaller$DiagnosticsCallback;
        this.requiredFeatureGroup = str;
        this.frameRateRange = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i >= 24) {
            if (i >= 31) {
                bArr = Encoding.V015_S;
            } else {
                switch (i) {
                    case 24:
                    case 25:
                        bArr = Encoding.V001_N;
                        break;
                    case 26:
                        bArr = Encoding.V005_O;
                        break;
                    case 27:
                        bArr = Encoding.V009_O_MR1;
                        break;
                    case 28:
                    case 29:
                    case 30:
                        bArr = Encoding.V010_P;
                        break;
                }
            }
        }
        this.useCases = bArr;
    }
}
