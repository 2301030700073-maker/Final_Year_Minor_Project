package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.activity.ImmLeaksCleaner;
import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil;
import androidx.camera.camera2.impl.RejectOperationCameraCaptureSession;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.internal.compat.quirk.BackportedFixQuirk;
import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.OverscrollConfiguration;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.IntOffset;
import androidx.core.backported.fixes.BackportedFixManager;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.mikepenz.fastadapter.VerboseLogger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.UUID;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.random.AbstractPlatformRandom;
import kotlin.random.Random;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImmLeaksCleaner$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ImmLeaksCleaner$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        long j = 0;
        switch (i) {
            case 0:
                try {
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                    declaredField2.setAccessible(true);
                    Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                    declaredField3.setAccessible(true);
                    return new ImmLeaksCleaner.ValidCleaner(declaredField3, declaredField, declaredField2);
                } catch (NoSuchFieldException unused) {
                    return ImmLeaksCleaner.FailedInitialization.INSTANCE;
                }
            case 1:
                return UUID.randomUUID().toString();
            case 2:
                return Unit.INSTANCE;
            case 3:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalActivityResultRegistryOwner.LocalComposition;
                return null;
            case 4:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = LocalOnBackPressedDispatcherOwner.LocalOnBackPressedDispatcherOwner;
                return null;
            case 5:
                AbstractPlatformRandom abstractPlatformRandom = Random.defaultRandom;
                return Integer.valueOf(Random.defaultRandom.getImpl().nextInt(2147418112) + 65536);
            case 6:
                SynchronizedLazyImpl synchronizedLazyImpl = GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS$delegate;
                ArrayList arrayList = new ArrayList();
                SurfaceCombination surfaceCombination = new SurfaceCombination();
                StreamUseCase streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
                StreamUseCase streamUseCase2 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                surfaceCombination.addSurfaceConfig(VerboseLogger.create(configType, configSize, streamUseCase2));
                arrayList.add(surfaceCombination);
                SurfaceCombination surfaceCombination2 = new SurfaceCombination();
                SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
                surfaceCombination2.addSurfaceConfig(VerboseLogger.create(configType, configSize2, streamUseCase2));
                arrayList.add(surfaceCombination2);
                SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM_16_9;
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize, configSize3));
                SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.UHD;
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize, configSize4));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize, SurfaceConfig.ConfigSize.S1440P_16_9));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize, configSize));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize2, configSize3));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize2, configSize4));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize2, configSize));
                SurfaceConfig.ConfigSize configSize5 = SurfaceConfig.ConfigSize.X_VGA;
                SurfaceConfig.ConfigSize configSize6 = SurfaceConfig.ConfigSize.MAXIMUM_4_3;
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(configSize5, configSize6));
                arrayList.addAll(GuaranteedConfigurationsUtil.createPrivJpegXCombinations(SurfaceConfig.ConfigSize.S1080P_4_3, configSize6));
                return arrayList;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ArrayList arrayList2 = new ArrayList();
                SurfaceCombination surfaceCombination3 = new SurfaceCombination();
                StreamUseCase streamUseCase3 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                SurfaceConfig.ConfigSize configSize7 = SurfaceConfig.ConfigSize.S1080P_16_9;
                StreamUseCase streamUseCase4 = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
                CameraDevices$CC.m(surfaceCombination3, VerboseLogger.create(configType, configSize7, streamUseCase4), configType, configSize7, streamUseCase4);
                SurfaceCombination m = CameraDevices$CC.m(arrayList2, surfaceCombination3);
                m.addSurfaceConfig(VerboseLogger.create(configType, configSize7, streamUseCase4));
                m.addSurfaceConfig(VerboseLogger.create(configType, SurfaceConfig.ConfigSize.S1440P_16_9, streamUseCase4));
                arrayList2.add(m);
                SurfaceCombination surfaceCombination4 = new SurfaceCombination();
                surfaceCombination4.addSurfaceConfig(VerboseLogger.create(configType, configSize7, streamUseCase4));
                surfaceCombination4.addSurfaceConfig(VerboseLogger.create(configType, SurfaceConfig.ConfigSize.UHD, streamUseCase4));
                arrayList2.add(surfaceCombination4);
                SurfaceCombination surfaceCombination5 = new SurfaceCombination();
                surfaceCombination5.addSurfaceConfig(VerboseLogger.create(configType, configSize7, streamUseCase4));
                CameraDevices$CC.m(surfaceCombination5, VerboseLogger.create(SurfaceConfig.ConfigType.YUV, configSize7, streamUseCase4), configType, configSize7, streamUseCase4);
                arrayList2.add(surfaceCombination5);
                return arrayList2;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new RejectOperationCameraCaptureSession();
            case 9:
                SynchronizedLazyImpl synchronizedLazyImpl2 = BackportedFixQuirk.backportedFixManager$delegate;
                return new BackportedFixManager();
            case 10:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = IndicationKt.LocalIndication;
                return DefaultDebugIndication.INSTANCE;
            case 11:
                return new OverscrollConfiguration();
            case BasicTextKt.ShiftMeta /* 12 */:
                return new ScrollState(0);
            case 13:
                float f = DragGestureDetectorKt.mouseToTouchSlopRatio;
                return Boolean.TRUE;
            case 14:
                return new LazyListState(0, 0);
            case OffsetKt.Horizontal /* 15 */:
                return new LazyGridState(0, 0);
            case 16:
                return new SolidColor(ColorKt.Color(1308617531));
            case 17:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.LocalBackgroundTextMeasurementExecutor;
                return null;
            case 18:
                return new IntOffset(j);
            case 19:
                return new IntOffset(j);
            case 20:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider;
                return null;
            case 21:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                return DefaultIoScheduler.INSTANCE;
            case 22:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal5 = SelectionRegistrarKt.LocalSelectionRegistrar;
                return null;
            case 23:
                return DefaultTextSelectionColors_androidKt.DefaultTextSelectionColors;
            case 24:
                PaddingValuesImpl paddingValuesImpl = AlertDialogKt.DialogPadding;
                return DefaultBasicAlertDialogOverride.INSTANCE;
            case 25:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal6 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return DefaultSingleRowTopAppBarOverride.INSTANCE;
            case 26:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal7 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return OutlinedTextFieldDefaults.INSTANCE$1;
            case 27:
                long j2 = ColorLightTokens.Primary;
                return new ColorScheme(j2, ColorLightTokens.OnPrimary, ColorLightTokens.PrimaryContainer, ColorLightTokens.OnPrimaryContainer, ColorLightTokens.InversePrimary, ColorLightTokens.Secondary, ColorLightTokens.OnSecondary, ColorLightTokens.SecondaryContainer, ColorLightTokens.OnSecondaryContainer, ColorLightTokens.Tertiary, ColorLightTokens.OnTertiary, ColorLightTokens.TertiaryContainer, ColorLightTokens.OnTertiaryContainer, ColorLightTokens.Background, ColorLightTokens.OnBackground, ColorLightTokens.Surface, ColorLightTokens.OnSurface, ColorLightTokens.SurfaceVariant, ColorLightTokens.OnSurfaceVariant, j2, ColorLightTokens.InverseSurface, ColorLightTokens.InverseOnSurface, ColorLightTokens.Error, ColorLightTokens.OnError, ColorLightTokens.ErrorContainer, ColorLightTokens.OnErrorContainer, ColorLightTokens.Outline, ColorLightTokens.OutlineVariant, ColorLightTokens.Scrim, ColorLightTokens.SurfaceBright, ColorLightTokens.SurfaceDim, ColorLightTokens.SurfaceContainer, ColorLightTokens.SurfaceContainerHigh, ColorLightTokens.SurfaceContainerHighest, ColorLightTokens.SurfaceContainerLow, ColorLightTokens.SurfaceContainerLowest, ColorLightTokens.PrimaryFixed, ColorLightTokens.PrimaryFixedDim, ColorLightTokens.OnPrimaryFixed, ColorLightTokens.OnPrimaryFixedVariant, ColorLightTokens.SecondaryFixed, ColorLightTokens.SecondaryFixedDim, ColorLightTokens.OnSecondaryFixed, ColorLightTokens.OnSecondaryFixedVariant, ColorLightTokens.TertiaryFixed, ColorLightTokens.TertiaryFixedDim, ColorLightTokens.OnTertiaryFixed, ColorLightTokens.OnTertiaryFixedVariant);
            case 28:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
                return Boolean.TRUE;
            default:
                return Float.valueOf(1.0f);
        }
    }
}
