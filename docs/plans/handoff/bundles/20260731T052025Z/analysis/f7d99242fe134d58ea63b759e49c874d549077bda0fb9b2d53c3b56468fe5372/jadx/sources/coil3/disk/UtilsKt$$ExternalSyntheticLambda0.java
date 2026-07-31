package coil3.disk;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Updater;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi1;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi2;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi6;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi9;
import androidx.work.impl.WorkDatabase_Impl;
import app.k9mail.feature.widget.unread.UnreadWidgetConfigurationActivity;
import coil3.Image;
import coil3.ImageLoader;
import coil3.RealImageLoaderKt;
import coil3.decode.BlackholeDecoder;
import coil3.network.CacheStrategy;
import coil3.network.ConcurrentRequestStrategy;
import coil3.network.NetworkClient;
import coil3.network.okhttp.OkHttpNetworkFetcher;
import com.mikepenz.fastadapter.VerboseLogger;
import java.lang.reflect.Method;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(WorkDatabase_Impl workDatabase_Impl) {
        this.$r8$classId = 4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        WindowLayoutComponent windowLayoutComponent;
        Class<?> returnType;
        DiskCache instance_delegate$lambda$0;
        MainCoroutineDispatcher build$lambda$0;
        DiskCache singletonDiskCache;
        List addServiceLoaderComponents$lambda$0;
        List addServiceLoaderComponents$lambda$1;
        Image image;
        ConcurrentRequestStrategy concurrentRequestStrategy;
        CacheStrategy cacheStrategy;
        ConcurrentRequestStrategy concurrentRequestStrategy2;
        CacheStrategy cacheStrategy2;
        NetworkClient OkHttpNetworkFetcherFactory$lambda$0;
        switch (this.$r8$classId) {
            case 0:
                instance_delegate$lambda$0 = UtilsKt.instance_delegate$lambda$0();
                return instance_delegate$lambda$0;
            case 1:
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused) {
                    return null;
                }
            case 2:
                try {
                    String[] strArr = FrameworkSQLiteDatabase.CONFLICT_VALUES;
                    Method method = (Method) FrameworkSQLiteDatabase.getThreadSessionMethod$delegate.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class<?> cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused2) {
                    return null;
                }
            case 3:
                try {
                    ClassLoader classLoader = WindowInfoTracker.class.getClassLoader();
                    SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = classLoader != null ? new SafeWindowLayoutComponentProvider(classLoader, new ConsumerAdapter(classLoader, 0)) : null;
                    if (safeWindowLayoutComponentProvider == null || (windowLayoutComponent = safeWindowLayoutComponentProvider.getWindowLayoutComponent()) == null) {
                        return null;
                    }
                    ConsumerAdapter consumerAdapter = new ConsumerAdapter(classLoader, 0);
                    int safeVendorApiLevel = ExtensionsUtil.getSafeVendorApiLevel();
                    return safeVendorApiLevel >= 9 ? new ExtensionWindowBackendApi9(windowLayoutComponent, consumerAdapter) : safeVendorApiLevel >= 6 ? new ExtensionWindowBackendApi6(windowLayoutComponent, consumerAdapter) : safeVendorApiLevel >= 2 ? new ExtensionWindowBackendApi2(windowLayoutComponent, consumerAdapter) : safeVendorApiLevel == 1 ? new ExtensionWindowBackendApi1(windowLayoutComponent, consumerAdapter) : new ExtensionWindowBackendApi0();
                } catch (Throwable unused3) {
                    return null;
                }
            case 4:
                return new VerboseLogger();
            case 5:
                return "Stopping observation";
            case 6:
                return "Cleaning up";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "Starting to observe window layout info";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 9:
                return "Failed to launch custom tabs. Browser is not available.";
            case 10:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 11:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case BasicTextKt.ShiftMeta /* 12 */:
                String uuid = UUID.randomUUID().toString();
                uuid.getClass();
                return uuid;
            case 13:
                return Updater.mutableStateOf$default(Boolean.FALSE);
            case 14:
                return Updater.mutableStateOf$default(null);
            case OffsetKt.Horizontal /* 15 */:
                return "No browser found to start OAuth login flow.";
            case 16:
                return "Error importing settings";
            case 17:
                return "Error reading settings file";
            case 18:
                int i = UnreadWidgetConfigurationActivity.$r8$clinit;
                return "Received an invalid widget ID";
            case 19:
                return "Error while updating unread widget(s)";
            case 20:
                build$lambda$0 = ImageLoader.Builder.build$lambda$0();
                return build$lambda$0;
            case 21:
                singletonDiskCache = UtilsKt.singletonDiskCache();
                return singletonDiskCache;
            case 22:
                addServiceLoaderComponents$lambda$0 = RealImageLoaderKt.addServiceLoaderComponents$lambda$0();
                return addServiceLoaderComponents$lambda$0;
            case 23:
                addServiceLoaderComponents$lambda$1 = RealImageLoaderKt.addServiceLoaderComponents$lambda$1();
                return addServiceLoaderComponents$lambda$1;
            case 24:
                image = BlackholeDecoder.Factory.EMPTY_IMAGE;
                return image;
            case 25:
                concurrentRequestStrategy = ConcurrentRequestStrategy.UNCOORDINATED;
                return concurrentRequestStrategy;
            case 26:
                cacheStrategy = CacheStrategy.DEFAULT;
                return cacheStrategy;
            case 27:
                concurrentRequestStrategy2 = ConcurrentRequestStrategy.UNCOORDINATED;
                return concurrentRequestStrategy2;
            case 28:
                cacheStrategy2 = CacheStrategy.DEFAULT;
                return cacheStrategy2;
            default:
                OkHttpNetworkFetcherFactory$lambda$0 = OkHttpNetworkFetcher.OkHttpNetworkFetcherFactory$lambda$0();
                return OkHttpNetworkFetcherFactory$lambda$0;
        }
    }

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }
}
