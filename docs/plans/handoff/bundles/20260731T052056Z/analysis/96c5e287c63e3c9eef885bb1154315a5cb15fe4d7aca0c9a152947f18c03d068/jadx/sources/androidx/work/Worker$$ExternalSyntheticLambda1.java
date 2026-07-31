package androidx.work;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.material3.MotionScheme$StandardMotionSchemeImpl;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.Typography;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.work.impl.AutoMigration_14_15;
import coil3.compose.AsyncImageModelEqualityDelegate$Companion$Default$1;
import coil3.compose.AsyncImagePreviewHandler$Companion$Default$1;
import coil3.network.HttpException;
import coil3.network.NetworkHeaders;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Worker$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Worker$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Class<?> returnType;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        Object obj = null;
        switch (i) {
            case 0:
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
            case 1:
                return Boolean.FALSE;
            case 2:
                return MotionScheme$StandardMotionSchemeImpl.INSTANCE;
            case 3:
                return new RippleConfiguration(0L, 3);
            case 4:
                return new Shapes();
            case 5:
                return new Dp(RecyclerView.DECELERATION_RATE);
            case 6:
                return TypographyTokensKt.DefaultTextStyle;
            case 7:
                return new Typography();
            case 8:
                return new PullToRefreshStateImpl(new Animatable(Float.valueOf(RecyclerView.DECELERATION_RATE), ArcSplineKt.FloatToVector, obj, 12));
            case 9:
                ComposerKt.composeRuntimeError("Unexpected call to default provider");
                throw new HttpException();
            case 10:
                throw new IllegalStateException("CompositionLocal LocalHostDefaultProvider not present");
            case 11:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalRetainedValuesStoreKt.LocalRetainedValuesStore;
                return ForgetfulRetainedValuesStore.INSTANCE;
            case 12:
                return new SaveableStateHolderImpl(new LinkedHashMap());
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case 15:
                return null;
            case LAZY_VERTICAL_GRID_VALUE:
                return SpanStyleKt.DefaultColorForegroundStyle;
            case VERTICAL_GRID_ITEM_VALUE:
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
            case RADIO_GROUP_VALUE:
                return new SavedStateViewModelFactory();
            case RADIO_BUTTON_VALUE:
                NetworkHeaders.Builder builder = new NetworkHeaders.Builder(3);
                builder.addInitializer(Reflection.factory.getOrCreateKotlinClass(NavBackStackEntryImpl.SavedStateViewModel.class), new PagingSource$$ExternalSyntheticLambda0(26));
                return builder.build();
            case RADIO_ROW_VALUE:
                return null;
            case RADIO_COLUMN_VALUE:
                return new Handler(Looper.getMainLooper());
            case SIZE_BOX_VALUE:
            case 23:
                return unit;
            case 24:
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
            case 25:
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused) {
                    return null;
                }
            case 26:
                try {
                    Method method = (Method) FrameworkSQLiteDatabase.getThreadSessionMethod$delegate.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class<?> cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused2) {
                    return null;
                }
            case 27:
                return new AutoMigration_14_15(i2);
            case 28:
                return AsyncImageModelEqualityDelegate$Companion$Default$1.Default;
            default:
                return AsyncImagePreviewHandler$Companion$Default$1.INSTANCE;
        }
    }
}
