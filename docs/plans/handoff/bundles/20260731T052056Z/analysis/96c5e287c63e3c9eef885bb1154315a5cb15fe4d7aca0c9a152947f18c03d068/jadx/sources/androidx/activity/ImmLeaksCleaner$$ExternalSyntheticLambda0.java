package androidx.activity;

import android.view.inputmethod.InputMethodManager;
import androidx.activity.ImmLeaksCleaner;
import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.OverscrollConfiguration;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Field;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.random.Random;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                return UUID.randomUUID().toString();
            case 2:
                return Unit.INSTANCE;
            case 3:
            case 4:
                return null;
            case 5:
                return Integer.valueOf(Random.defaultRandom.getImpl().nextInt(2147418112) + 65536);
            case 6:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = IndicationKt.LocalIndication;
                return DefaultDebugIndication.INSTANCE;
            case 7:
                return new OverscrollConfiguration();
            case 8:
                return new ScrollState(0);
            case 9:
                return Boolean.TRUE;
            case 10:
                return new LazyListState(0, 0);
            case 11:
                return new LazyGridState(0, 0);
            case 12:
                return new LazyStaggeredGridState(new int[]{0}, new int[]{0});
            case IMAGE_VALUE:
                return new SolidColor(ColorKt.Color(1308617531));
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return null;
            case 15:
                return new IntOffset(0L);
            case LAZY_VERTICAL_GRID_VALUE:
                return new IntOffset(0L);
            case VERTICAL_GRID_ITEM_VALUE:
            case RADIO_GROUP_VALUE:
                return null;
            case RADIO_BUTTON_VALUE:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                return DefaultIoScheduler.INSTANCE;
            case RADIO_ROW_VALUE:
                return new SelectionRegistrarImpl(1L);
            case RADIO_COLUMN_VALUE:
                return null;
            case SIZE_BOX_VALUE:
                return DefaultTextSelectionColors_androidKt.DefaultTextSelectionColors;
            case 23:
                PaddingValuesImpl paddingValuesImpl = AlertDialogKt.DialogPadding;
                return DefaultBasicAlertDialogOverride.INSTANCE;
            case 24:
                return new TopAppBarState(-3.4028235E38f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
            case 25:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return DefaultSingleRowTopAppBarOverride.INSTANCE;
            case 26:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = AppBarKt.LocalSingleRowTopAppBarOverride;
                return TextFieldDefaults.INSTANCE$1;
            case 27:
                long j = ColorLightTokens.Primary;
                return new ColorScheme(j, ColorLightTokens.OnPrimary, ColorLightTokens.PrimaryContainer, ColorLightTokens.OnPrimaryContainer, ColorLightTokens.InversePrimary, ColorLightTokens.Secondary, ColorLightTokens.OnSecondary, ColorLightTokens.SecondaryContainer, ColorLightTokens.OnSecondaryContainer, ColorLightTokens.Tertiary, ColorLightTokens.OnTertiary, ColorLightTokens.TertiaryContainer, ColorLightTokens.OnTertiaryContainer, ColorLightTokens.Background, ColorLightTokens.OnBackground, ColorLightTokens.Surface, ColorLightTokens.OnSurface, ColorLightTokens.SurfaceVariant, ColorLightTokens.OnSurfaceVariant, j, ColorLightTokens.InverseSurface, ColorLightTokens.InverseOnSurface, ColorLightTokens.Error, ColorLightTokens.OnError, ColorLightTokens.ErrorContainer, ColorLightTokens.OnErrorContainer, ColorLightTokens.Outline, ColorLightTokens.OutlineVariant, ColorLightTokens.Scrim, ColorLightTokens.SurfaceBright, ColorLightTokens.SurfaceDim, ColorLightTokens.SurfaceContainer, ColorLightTokens.SurfaceContainerHigh, ColorLightTokens.SurfaceContainerHighest, ColorLightTokens.SurfaceContainerLow, ColorLightTokens.SurfaceContainerLowest, ColorLightTokens.PrimaryFixed, ColorLightTokens.PrimaryFixedDim, ColorLightTokens.OnPrimaryFixed, ColorLightTokens.OnPrimaryFixedVariant, ColorLightTokens.SecondaryFixed, ColorLightTokens.SecondaryFixedDim, ColorLightTokens.OnSecondaryFixed, ColorLightTokens.OnSecondaryFixedVariant, ColorLightTokens.TertiaryFixed, ColorLightTokens.TertiaryFixedDim, ColorLightTokens.OnTertiaryFixed, ColorLightTokens.OnTertiaryFixedVariant);
            case 28:
                return Float.valueOf(1.0f);
            default:
                return new Dp(48.0f);
        }
    }
}
