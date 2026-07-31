package androidx.work;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.view.ViewParent;
import androidx.activity.OnBackPressedDispatcher;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.preference.PreferenceManager;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.utils.EnqueueRunnable;
import coil3.RealImageLoader;
import coil3.decode.BitmapFactoryDecoder;
import coil3.disk.RealDiskCache;
import coil3.memory.MemoryCacheService;
import coil3.memory.RealMemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.grack.nanojson.JsonBuilder;
import java.io.File;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda1;
import kotlinx.serialization.descriptors.ContextDescriptor;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.PriorityQueue;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Worker$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Worker$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        char c;
        char c2;
        int i;
        FrameworkSQLiteOpenHelper.OpenHelper openHelper;
        int i2;
        boolean z = true;
        char c3 = 7;
        int i3 = 0;
        switch (this.$r8$classId) {
            case 0:
                return ((Worker) this.f$0).doWork();
            case 1:
                return new OnBackPressedDispatcher.OnBackPressedEventInput((OnBackPressedDispatcher) this.f$0);
            case 2:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) this.f$0;
                Transition transition = seekableTransitionState.transition;
                seekableTransitionState.totalDurationNanos = transition != null ? ((Number) transition.totalDurationNanos$delegate.getValue()).longValue() : 0L;
                return Unit.INSTANCE;
            case 3:
                return Integer.valueOf(((LazyListState) this.f$0).getLayoutInfo().totalItemsCount);
            case 4:
                TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) this.f$0;
                textStringSimpleNode.textSubstitution = null;
                HitTestResultKt.invalidateSemantics(textStringSimpleNode);
                HitTestResultKt.invalidateMeasurement(textStringSimpleNode);
                HitTestResultKt.invalidateDraw(textStringSimpleNode);
                return Boolean.TRUE;
            case 5:
                HitTestResultKt.invalidateDraw((AndroidRippleNode) this.f$0);
                return Unit.INSTANCE;
            case 6:
                SaveableHolder saveableHolder = (SaveableHolder) this.f$0;
                Saver saver = saveableHolder.saver;
                Object obj = saveableHolder.value;
                if (obj != null) {
                    return saver.save(saveableHolder, obj);
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Value should be initialized");
                return null;
            case 7:
                SavedStateRegistryController savedStateRegistryController = ((SaveableStateRegistryWrapper) this.f$0)._controller;
                if (savedStateRegistryController == null) {
                    return null;
                }
                Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                savedStateRegistryController.performSave(bundleOf);
                if (bundleOf.isEmpty()) {
                    return null;
                }
                return bundleOf;
            case 8:
                PreferenceManager preferenceManager = (PreferenceManager) this.f$0;
                while (true) {
                    synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
                        try {
                            if (preferenceManager.mNoCommit) {
                                c = c3;
                            } else {
                                preferenceManager.mNoCommit = z;
                                try {
                                    MutableVector mutableVector = (MutableVector) preferenceManager.mPreferenceScreen;
                                    Object[] objArr = mutableVector.content;
                                    int i4 = mutableVector.size;
                                    int i5 = i3;
                                    while (i5 < i4) {
                                        SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) objArr[i5];
                                        MutableScatterSet mutableScatterSet = snapshotStateObserver$ObservedScopeMap.invalidated;
                                        Function1 function1 = snapshotStateObserver$ObservedScopeMap.onChanged;
                                        Object[] objArr2 = mutableScatterSet.elements;
                                        long[] jArr = mutableScatterSet.metadata;
                                        int length = jArr.length - 2;
                                        if (length >= 0) {
                                            int i6 = i3;
                                            while (true) {
                                                long j = jArr[i6];
                                                c2 = c3;
                                                if ((((~j) << c2) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i7 = 8;
                                                    int i8 = 8 - ((~(i6 - length)) >>> 31);
                                                    while (i3 < i8) {
                                                        if ((j & 255) < 128) {
                                                            i = i7;
                                                            function1.invoke(objArr2[(i6 << 3) + i3]);
                                                        } else {
                                                            i = i7;
                                                        }
                                                        j >>= i;
                                                        i3++;
                                                        i7 = i;
                                                    }
                                                    if (i8 != i7) {
                                                    }
                                                }
                                                if (i6 != length) {
                                                    i6++;
                                                    c3 = c2;
                                                    i3 = 0;
                                                }
                                            }
                                        } else {
                                            c2 = c3;
                                        }
                                        mutableScatterSet.clear();
                                        i5++;
                                        c3 = c2;
                                        i3 = 0;
                                    }
                                    c = c3;
                                    preferenceManager.mNoCommit = i3;
                                } catch (Throwable th) {
                                    preferenceManager.mNoCommit = false;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (!preferenceManager.drainChanges()) {
                        return Unit.INSTANCE;
                    }
                    c3 = c;
                    z = true;
                    i3 = 0;
                }
            case 9:
                ShaderBrushSpan shaderBrushSpan = (ShaderBrushSpan) this.f$0;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = shaderBrushSpan.size$delegate;
                if (((Size) parcelableSnapshotMutableState.getValue()).packedValue == 9205357640488583168L || Size.m208isEmptyimpl(((Size) parcelableSnapshotMutableState.getValue()).packedValue)) {
                    return null;
                }
                return shaderBrushSpan.shaderBrush.mo251createShaderuvyYCjk(((Size) parcelableSnapshotMutableState.getValue()).packedValue);
            case 10:
                return (TextForegroundStyle) this.f$0;
            case 11:
                return ViewModelKt.getSavedStateHandlesVM((ViewModelStoreOwner) this.f$0);
            case 12:
                ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) this.f$0;
                ViewModelStore viewModelStore = viewModelStoreProvider.parentStore;
                if (viewModelStore == null) {
                    return new ViewModelStoreProvider.StateHolder();
                }
                Long l = viewModelStoreProvider.parentKey;
                LinkedHashMap linkedHashMap = viewModelStore.map;
                Object obj2 = linkedHashMap.get(l);
                if (obj2 == null) {
                    obj2 = new ViewModelStoreProvider.StateHolder();
                    linkedHashMap.put(l, obj2);
                }
                return (ViewModelStoreProvider.StateHolder) ((ViewModel) obj2);
            case 13:
                RoomDatabase roomDatabase = ((InvalidationTracker) this.f$0).database;
                if (roomDatabase.inCompatibilityMode() && !roomDatabase.isOpenInternal$room_runtime()) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 14:
                return ((Callable) this.f$0).call();
            case 15:
                ((Runnable) this.f$0).run();
                return Unit.INSTANCE;
            case 16:
                return ((JsonBuilder) this.f$0).open(":memory:");
            case 17:
                PassthroughConnectionPool passthroughConnectionPool = (PassthroughConnectionPool) this.f$0;
                return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
            case 18:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) this.f$0;
                savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(savedStateRegistryOwner, i3));
                return Unit.INSTANCE;
            case 19:
                FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper = (FrameworkSQLiteOpenHelper) this.f$0;
                String str = frameworkSQLiteOpenHelper.name;
                if (str == null || !frameworkSQLiteOpenHelper.useNoBackupDirectory) {
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.context, frameworkSQLiteOpenHelper.name, new MemoryCacheService(25), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                } else {
                    Context context = frameworkSQLiteOpenHelper.context;
                    context.getClass();
                    File noBackupFilesDir = context.getNoBackupFilesDir();
                    noBackupFilesDir.getClass();
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.context, new File(noBackupFilesDir, str).getAbsolutePath(), new MemoryCacheService(25), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                }
                openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.writeAheadLoggingEnabled);
                return openHelper;
            case 20:
                EnqueueRunnable.enqueue((WorkContinuationImpl) this.f$0);
                return Unit.INSTANCE;
            case 21:
                return Jsoup.listOf((Pair) this.f$0);
            case 22:
                Context context2 = (Context) ((Dispatcher) this.f$0).executorServiceOrNull;
                double d = 0.2d;
                try {
                    Object systemService = context2.getSystemService((Class<Object>) ActivityManager.class);
                    systemService.getClass();
                    if (((ActivityManager) systemService).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                if (0.0d > d || d > 1.0d) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("percent must be in the range [0.0, 1.0].");
                    return null;
                }
                PriorityQueue priorityQueue = new PriorityQueue(7, (byte) 0);
                try {
                    Object systemService2 = context2.getSystemService((Class<Object>) ActivityManager.class);
                    systemService2.getClass();
                    ActivityManager activityManager = (ActivityManager) systemService2;
                    i2 = (context2.getApplicationInfo().flags & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
                } catch (Exception unused2) {
                    i2 = 256;
                }
                return new RealMemoryCache(new RealStrongMemoryCache((long) (d * i2 * 1048576), priorityQueue), priorityQueue);
            case 23:
                return BitmapFactoryDecoder.$r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc((BitmapFactoryDecoder) this.f$0);
            case 24:
                return (RealDiskCache) ((RealImageLoader) this.f$0).options.diskCacheLazy.getValue();
            case 25:
                return new CallFactoryNetworkClient((OkHttpClient) this.f$0);
            case 26:
                return Intrinsics.iterator((Object[]) this.f$0);
            case 27:
                return (ViewParent) this.f$0;
            case 28:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) this.f$0;
                return new ContextDescriptor(OperationKt.buildSerialDescriptor("kotlinx.serialization.Polymorphic", PolymorphicKind$OPEN.INSTANCE, new SerialDescriptor[0], new RxAwaitKt$$ExternalSyntheticLambda0(polymorphicSerializer, 4)), polymorphicSerializer.baseClass);
            default:
                return OperationKt.buildSerialDescriptor("net.newpipe.app.navigation.Destination", PolymorphicKind$OPEN.INSTANCE$1, new SerialDescriptor[0], new SealedClassSerializer$$ExternalSyntheticLambda1((SealedClassSerializer) this.f$0, i3));
        }
    }
}
