package coil3.disk;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.os.StatFs;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.navigation3.scene.SharedEntryInSceneNavEntryDecoratorKt;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.transition.Transition;
import coil3.network.CacheStrategy;
import coil3.network.UncoordinatedConcurrentRequestStrategy;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import coil3.network.okhttp.internal.OkHttpNetworkFetcherServiceLoaderTarget;
import coil3.util.DecoderServiceLoaderTarget;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.ServiceConfigurationError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonLiteralSerializer;
import kotlinx.serialization.json.JsonNullSerializer;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitiveSerializer;
import net.newpipe.app.model.Developer$$serializer;
import net.newpipe.app.model.Library$$serializer;
import okhttp3.OkHttpClient;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Class<?> returnType;
        ServiceConfigurationError serviceConfigurationError;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        switch (i) {
            case 0:
                JvmSystemFileSystem jvmSystemFileSystem = FileSystem.SYSTEM;
                Path resolve = FileSystem.SYSTEM_TEMPORARY_DIRECTORY.resolve("coil3_disk_cache");
                long j = 10485760;
                try {
                    File file = resolve.toFile();
                    file.mkdir();
                    StatFs statFs = new StatFs(file.getAbsolutePath());
                    j = RangesKt.coerceIn((long) (0.02d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), 10485760L, 262144000L);
                } catch (Exception unused) {
                }
                return new RealDiskCache(j, jvmSystemFileSystem, resolve);
            case 1:
                return SpanStyleKt.DefaultColorForegroundStyle;
            case 2:
                throw new IllegalStateException("CompositionLocal LocalLifecycleOwner not present");
            case 3:
                return new HashSet();
            case 4:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SharedEntryInSceneNavEntryDecoratorKt.LocalCurrentScene;
                return null;
            case 5:
                throw new IllegalStateException("Unexpected access to LocalNavAnimatedContentScope. You should only access LocalNavAnimatedContentScope inside a NavEntry passed to NavDisplay. AnimatedContentScope in OverlayScenes are no-op.");
            case 6:
                return unit;
            case 7:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = LocalNavigationEventDispatcherOwner.LocalNavigationEventDispatcherOwner;
                return null;
            case 8:
            case 9:
                return unit;
            case 10:
                return Boolean.TRUE;
            case 11:
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
            case 12:
                return new ArrayListSerializer(IntSerializer.INSTANCE);
            case 13:
                try {
                    Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
                    declaredMethod.setAccessible(true);
                    return declaredMethod;
                } catch (Throwable unused2) {
                    return null;
                }
            case 14:
                try {
                    String[] strArr = FrameworkSQLiteDatabase.CONFLICT_VALUES;
                    Method method = (Method) FrameworkSQLiteDatabase.getThreadSessionMethod$delegate.getValue();
                    if (method == null || (returnType = method.getReturnType()) == null) {
                        return null;
                    }
                    Class<?> cls = Integer.TYPE;
                    return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
                } catch (Throwable unused3) {
                    return null;
                }
            case 15:
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
            case 16:
                return new Transition.AnonymousClass1(i2);
            case 17:
                return CacheStrategy.DEFAULT;
            case 18:
                return UncoordinatedConcurrentRequestStrategy.UNCOORDINATED;
            case 19:
                return new CallFactoryNetworkClient(new OkHttpClient(new OkHttpClient.Builder()));
            case 20:
                try {
                    return coil3.util.UtilsKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new OkHttpNetworkFetcherServiceLoaderTarget()).iterator())));
                } finally {
                }
            case 21:
                try {
                    return coil3.util.UtilsKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new DecoderServiceLoaderTarget[0]).iterator())));
                } finally {
                }
            case 22:
                return JsonPrimitiveSerializer.descriptor;
            case 23:
                return JsonNullSerializer.descriptor;
            case 24:
                return JsonLiteralSerializer.descriptor;
            case 25:
                return JsonObjectSerializer.descriptor;
            case 26:
                return JsonArraySerializer.descriptor;
            case 27:
                return new ArrayListSerializer(Library$$serializer.INSTANCE);
            case 28:
                return new ArrayListSerializer(Developer$$serializer.INSTANCE);
            default:
                return new ArrayListSerializer(StringSerializer.INSTANCE);
        }
    }

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
    }
}
