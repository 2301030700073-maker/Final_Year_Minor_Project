package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.activity.ImmLeaksCleaner;
import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.OverscrollConfiguration;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MaterialTheme$Values;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.MotionScheme;
import androidx.compose.material3.PrecisionPointer_androidKt;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.TabRowDefaults;
import androidx.compose.material3.Typography;
import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.unit.Dp;
import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.random.AbstractPlatformRandom;
import kotlin.random.Random;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImmLeaksCleaner$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ImmLeaksCleaner$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
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
                AbstractPlatformRandom abstractPlatformRandom = Random.defaultRandom;
                return Integer.valueOf(Random.defaultRandom.getImpl().nextInt(2147418112) + 65536);
            case 2:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = IndicationKt.LocalIndication;
                return DefaultDebugIndication.INSTANCE;
            case 3:
                return new OverscrollConfiguration();
            case 4:
                return new LazyListState(0, 0);
            case 5:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.LocalBackgroundTextMeasurementExecutor;
                return null;
            case 6:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = SelectionRegistrarKt.LocalSelectionRegistrar;
                return null;
            case 7:
                return DefaultTextSelectionColors_androidKt.DefaultTextSelectionColors;
            case 8:
                PaddingValuesImpl paddingValuesImpl = AlertDialogKt.DialogPadding;
                return DefaultBasicAlertDialogOverride.INSTANCE;
            case 9:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return DefaultSingleRowTopAppBarOverride.INSTANCE;
            case 10:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return TabRowDefaults.INSTANCE$1;
            case 11:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalTonalElevationEnabled;
                return Boolean.TRUE;
            case 12:
                return Float.valueOf(1.0f);
            case 13:
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                return Boolean.TRUE;
            case 14:
                return new Dp(48.0f);
            case 15:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = MaterialThemeKt.LocalUsingExpressiveTheme;
                return Boolean.FALSE;
            case 16:
                return new MaterialTheme$Values(ColorSchemeKt.m140lightColorScheme_VG5OTI$default(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -1, 65535), new Typography(), new Shapes(), MotionScheme.StandardMotionSchemeImpl.INSTANCE);
            case 17:
                int i = PrecisionPointer_androidKt.$r8$clinit;
                return Boolean.FALSE;
            case 18:
                return new RippleConfiguration();
            case 19:
                return new Shapes();
            case 20:
                return new Dp(0.0f);
            case 21:
                return TypographyTokensKt.DefaultTextStyle;
            case 22:
                return new Typography();
            case 23:
                ComposerKt.composeRuntimeError("Unexpected call to default provider");
                throw new SerializationException();
            case 24:
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 25:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LocalRetainedValuesStoreKt.LocalRetainedValuesStore;
                return ForgetfulRetainedValuesStore.INSTANCE;
            case 26:
                return new SaveableStateHolderImpl(new LinkedHashMap());
            case 27:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                return null;
            case 28:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = CompositionErrorContextKt.LocalCompositionErrorContext;
                return null;
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = InspectionTablesKt.LocalInspectionTables;
                return null;
        }
    }
}
