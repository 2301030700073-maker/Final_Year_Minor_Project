package coil3;

import android.content.Context;
import android.os.Bundle;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;
import androidx.compose.material3.FadeInFadeOutState;
import androidx.compose.material3.ModalBottomSheetDialogWrapper;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SnackbarHostState$SnackbarDataImpl;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.Dp;
import androidx.datastore.core.FileStorage;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda6;
import androidx.lifecycle.AtomicReference;
import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.NavInflater;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.fragment.NavHostFragment;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.InvalidationTracker;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.Version;
import androidx.work.Configuration;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import app.k9mail.feature.settings.p000import.ui.AppVersion;
import app.k9mail.feature.settings.p000import.ui.ImportAppFetcher;
import coil3.ImageLoader;
import coil3.memory.MemoryCache;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Option;
import com.fsck.k9.R;
import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageLoader$Builder$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ImageLoader$Builder$$ExternalSyntheticLambda1(ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2, SoftwareKeyboardController softwareKeyboardController) {
        this.$r8$classId = 1;
        this.f$0 = exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;
    }

    private final Object invoke$androidx$datastore$core$FileStorage$$ExternalSyntheticLambda1() {
        File file = (File) this.f$0;
        synchronized (FileStorage.activeFilesLock) {
            FileStorage.activeFiles.remove(file.getAbsolutePath());
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.compose.material3.SnackbarHostState$SnackbarDataImpl] */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v6 */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        MemoryCache build$lambda$1;
        RecomposeScopeOwner recomposeScopeOwner;
        ?? r3;
        int i;
        FrameworkSQLiteOpenHelper.OpenHelper openHelper;
        CoroutineContext mainCoroutineContext$lambda$0;
        int i2 = 4;
        ?? r5 = 0;
        switch (this.$r8$classId) {
            case 0:
                build$lambda$1 = ImageLoader.Builder.build$lambda$1((ImageLoader.Builder) this.f$0);
                return build$lambda$1;
            case 1:
                ((ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2) this.f$0).invoke();
                return Boolean.TRUE;
            case 2:
                ((ModalBottomSheetDialogWrapper) this.f$0).onDismissRequest.invoke();
                return Unit.INSTANCE;
            case 3:
                return new Dp(DBUtil.lerp(24.0f, 16.0f, ((TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0) this.f$0).invoke()));
            case 4:
                return ((SheetState) this.f$0).anchoredDraggableMotionSpec;
            case 5:
                FadeInFadeOutState fadeInFadeOutState = (FadeInFadeOutState) this.f$0;
                if (!Intrinsics.areEqual(null, fadeInFadeOutState.current)) {
                    CollectionsKt.removeAll(fadeInFadeOutState.items, new TextKt$$ExternalSyntheticLambda1((SnackbarHostState$SnackbarDataImpl) r5));
                    RecomposeScopeImpl recomposeScopeImpl = fadeInFadeOutState.scope;
                    if (recomposeScopeImpl != null && (recomposeScopeOwner = recomposeScopeImpl.owner) != null) {
                        recomposeScopeOwner.invalidate(recomposeScopeImpl, null);
                    }
                }
                return Unit.INSTANCE;
            case 6:
                return Float.valueOf(((FloatProducer) this.f$0).invoke() < 1.0f ? 0.3f : 1.0f);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SaveableHolder saveableHolder = (SaveableHolder) this.f$0;
                Saver saver = saveableHolder.saver;
                Object obj = saveableHolder.value;
                if (obj != null) {
                    return saver.save(saveableHolder, obj);
                }
                UriKt$$ExternalSyntheticBUOutline0.m("Value should be initialized");
                return null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Base64Util base64Util = ((SaveableStateRegistryWrapper) this.f$0)._controller;
                if (base64Util == null) {
                    return null;
                }
                Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                base64Util.performSave(bundleOf);
                if (bundleOf.isEmpty()) {
                    return null;
                }
                return bundleOf;
            case 9:
                SnapshotStateObserver snapshotStateObserver = (SnapshotStateObserver) this.f$0;
                while (true) {
                    synchronized (snapshotStateObserver.observedScopeMapsLock) {
                        try {
                            if (!snapshotStateObserver.sendingNotifications) {
                                snapshotStateObserver.sendingNotifications = r3;
                                try {
                                    MutableVector mutableVector = snapshotStateObserver.observedScopeMaps;
                                    Object[] objArr = mutableVector.content;
                                    int i3 = mutableVector.size;
                                    int i4 = r4;
                                    while (i4 < i3) {
                                        try {
                                            SnapshotStateObserver.ObservedScopeMap observedScopeMap = (SnapshotStateObserver.ObservedScopeMap) objArr[i4];
                                            MutableScatterSet mutableScatterSet = observedScopeMap.invalidated;
                                            Function1 function1 = observedScopeMap.onChanged;
                                            Object[] objArr2 = mutableScatterSet.elements;
                                            long[] jArr = mutableScatterSet.metadata;
                                            int length = jArr.length - 2;
                                            if (length >= 0) {
                                                int i5 = r4;
                                                while (true) {
                                                    long j = jArr[i5];
                                                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i6 = 8;
                                                        int i7 = 8 - ((~(i5 - length)) >>> 31);
                                                        int i8 = 0;
                                                        while (i8 < i7) {
                                                            if ((j & 255) < 128) {
                                                                i = i6;
                                                                function1.invoke(objArr2[(i5 << 3) + i8]);
                                                            } else {
                                                                i = i6;
                                                            }
                                                            j >>= i;
                                                            i8++;
                                                            i6 = i;
                                                        }
                                                        if (i7 != i6) {
                                                        }
                                                    }
                                                    if (i5 != length) {
                                                        i5++;
                                                    }
                                                }
                                            }
                                            mutableScatterSet.clear();
                                            i4++;
                                            r4 = 0;
                                        } catch (Throwable th) {
                                            th = th;
                                            r3 = 0;
                                            snapshotStateObserver.sendingNotifications = r3;
                                            throw th;
                                        }
                                    }
                                    snapshotStateObserver.sendingNotifications = r4;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r3 = r4;
                                }
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    if (!snapshotStateObserver.drainChanges()) {
                        return Unit.INSTANCE;
                    }
                    r3 = true;
                    r4 = 0;
                }
            case 10:
                ShaderBrushSpan shaderBrushSpan = (ShaderBrushSpan) this.f$0;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = shaderBrushSpan.size$delegate;
                if (((Size) parcelableSnapshotMutableState.getValue()).packedValue == 9205357640488583168L || Size.m451isEmptyimpl(((Size) parcelableSnapshotMutableState.getValue()).packedValue)) {
                    return null;
                }
                return shaderBrushSpan.shaderBrush.mo476createShaderuvyYCjk(((Size) parcelableSnapshotMutableState.getValue()).packedValue);
            case 11:
                return (TextForegroundStyle) this.f$0;
            case BasicTextKt.ShiftMeta /* 12 */:
                return invoke$androidx$datastore$core$FileStorage$$ExternalSyntheticLambda1();
            case 13:
                File file = (File) ((Recomposer$$ExternalSyntheticLambda6) this.f$0).invoke();
                String name = file.getName();
                name.getClass();
                if (!StringsKt.substringAfterLast('.', name, "").equals("preferences_pb")) {
                    UriKt$$ExternalSyntheticBUOutline0.m(file, " does not match required extension for Preferences file: preferences_pb", "File extension for file: ");
                    return null;
                }
                File absoluteFile = file.getAbsoluteFile();
                absoluteFile.getClass();
                return absoluteFile;
            case 14:
                ((CoroutineLiveData) this.f$0).blockRunner = null;
                return Unit.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                return ViewModelKt.getSavedStateHandlesVM((ViewModelStoreOwner) this.f$0);
            case 16:
                NavBackStackEntryImpl navBackStackEntryImpl = ((NavBackStackEntry) this.f$0).impl;
                if (!navBackStackEntryImpl.savedStateRegistryAttached) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
                    return null;
                }
                if (navBackStackEntryImpl.lifecycle.state == Lifecycle.State.DESTROYED) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
                    return null;
                }
                AtomicReference create$default = Option.AnonymousClass1.create$default(navBackStackEntryImpl.entry, (ViewModelProvider$Factory) navBackStackEntryImpl.navResultSavedStateFactory$delegate.getValue(), 4);
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NavBackStackEntryImpl.SavedStateViewModel.class);
                Dispatcher dispatcher = (Dispatcher) create$default.base;
                String qualifiedName = orCreateKotlinClass.getQualifiedName();
                if (qualifiedName != null) {
                    r5 = dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
                }
                return ((NavBackStackEntryImpl.SavedStateViewModel) r5).handle;
            case 17:
                NavHostFragment navHostFragment = (NavHostFragment) this.f$0;
                Context context = navHostFragment.getContext();
                if (context == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("NavController cannot be created before the fragment is attached");
                    return null;
                }
                NavHostController navHostController = new NavHostController(context);
                SynchronizedLazyImpl synchronizedLazyImpl = navHostController.navInflater$delegate;
                NavControllerImpl navControllerImpl = navHostController.impl;
                navHostController.setLifecycleOwner(navHostFragment);
                navHostController.setViewModelStore(navHostFragment.getViewModelStore());
                NavigatorProvider navigatorProvider = navControllerImpl._navigatorProvider;
                Context requireContext = navHostFragment.requireContext();
                FragmentManager childFragmentManager = navHostFragment.getChildFragmentManager();
                childFragmentManager.getClass();
                navigatorProvider.addNavigator(new DialogFragmentNavigator(requireContext, childFragmentManager));
                NavigatorProvider navigatorProvider2 = navControllerImpl._navigatorProvider;
                Context requireContext2 = navHostFragment.requireContext();
                FragmentManager childFragmentManager2 = navHostFragment.getChildFragmentManager();
                childFragmentManager2.getClass();
                int i9 = navHostFragment.mFragmentId;
                if (i9 == 0 || i9 == -1) {
                    i9 = R.id.nav_host_fragment_container;
                }
                navigatorProvider2.addNavigator(new FragmentNavigator(requireContext2, childFragmentManager2, i9));
                Bundle consumeRestoredStateForKey = ((Base64Util) navHostFragment.mSavedStateRegistryController.inverseAlphabet).consumeRestoredStateForKey("android-support-nav:fragment:navControllerState");
                if (consumeRestoredStateForKey != null) {
                    navHostController.restoreState(consumeRestoredStateForKey);
                }
                ((Base64Util) navHostFragment.mSavedStateRegistryController.inverseAlphabet).registerSavedStateProvider("android-support-nav:fragment:navControllerState", new FragmentManager$$ExternalSyntheticLambda6(3, navHostController));
                Bundle consumeRestoredStateForKey2 = ((Base64Util) navHostFragment.mSavedStateRegistryController.inverseAlphabet).consumeRestoredStateForKey("android-support-nav:fragment:graphId");
                if (consumeRestoredStateForKey2 != null) {
                    navHostFragment.graphId = consumeRestoredStateForKey2.getInt("android-support-nav:fragment:graphId");
                }
                ((Base64Util) navHostFragment.mSavedStateRegistryController.inverseAlphabet).registerSavedStateProvider("android-support-nav:fragment:graphId", new FragmentManager$$ExternalSyntheticLambda6(i2, navHostFragment));
                int i10 = navHostFragment.graphId;
                if (i10 != 0) {
                    navControllerImpl.setGraph$navigation_runtime_release(((NavInflater) synchronizedLazyImpl.getValue()).inflate(i10), null);
                } else {
                    Bundle bundle = navHostFragment.mArguments;
                    r4 = bundle != null ? bundle.getInt("android-support-nav:fragment:graphId") : 0;
                    Bundle bundle2 = bundle != null ? bundle.getBundle("android-support-nav:fragment:startDestinationArgs") : null;
                    if (r4 != 0) {
                        navControllerImpl.setGraph$navigation_runtime_release(((NavInflater) synchronizedLazyImpl.getValue()).inflate(r4), bundle2);
                    }
                }
                return navHostController;
            case 18:
                WorkDatabase_Impl workDatabase_Impl = ((InvalidationTracker) this.f$0).database;
                if (workDatabase_Impl.inCompatibilityMode$room_runtime_release() && !workDatabase_Impl.isOpenInternal()) {
                    r3 = false;
                }
                return Boolean.valueOf(r3);
            case 19:
                return ((WeakCache) this.f$0).open(":memory:");
            case 20:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) this.f$0;
                savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(r4, savedStateRegistryOwner));
                return Unit.INSTANCE;
            case 21:
                FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper = (FrameworkSQLiteOpenHelper) this.f$0;
                String str = frameworkSQLiteOpenHelper.name;
                if (str == null || !frameworkSQLiteOpenHelper.useNoBackupDirectory) {
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.context, frameworkSQLiteOpenHelper.name, new Fragment.AnonymousClass7(26), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                } else {
                    Context context2 = frameworkSQLiteOpenHelper.context;
                    context2.getClass();
                    File noBackupFilesDir = context2.getNoBackupFilesDir();
                    noBackupFilesDir.getClass();
                    openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(frameworkSQLiteOpenHelper.context, new File(noBackupFilesDir, str).getAbsolutePath(), new Fragment.AnonymousClass7(26), frameworkSQLiteOpenHelper.callback, frameworkSQLiteOpenHelper.allowDataLossOnRecovery);
                }
                openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.writeAheadLoggingEnabled);
                return openHelper;
            case 22:
                ConsumerAdapter consumerAdapter = (ConsumerAdapter) this.f$0;
                Class<?> loadClass = consumerAdapter.loader.loadClass("androidx.window.extensions.WindowExtensionsProvider");
                loadClass.getClass();
                Method declaredMethod = loadClass.getDeclaredMethod("getWindowExtensions", null);
                Class<?> loadClass2 = consumerAdapter.loader.loadClass("androidx.window.extensions.WindowExtensions");
                loadClass2.getClass();
                declaredMethod.getClass();
                return Boolean.valueOf(declaredMethod.getReturnType().equals(loadClass2) && Modifier.isPublic(declaredMethod.getModifiers()));
            case 23:
                Version version = (Version) this.f$0;
                return BigInteger.valueOf(version.major).shiftLeft(32).or(BigInteger.valueOf(version.minor)).shiftLeft(32).or(BigInteger.valueOf(version.patch));
            case 24:
                WorkContinuationImpl workContinuationImpl = (WorkContinuationImpl) this.f$0;
                String str2 = EnqueueRunnable.TAG;
                WorkManagerImpl workManagerImpl = workContinuationImpl.mWorkManagerImpl;
                HashSet hashSet = new HashSet();
                hashSet.addAll(workContinuationImpl.mIds);
                HashSet prerequisitesFor = WorkContinuationImpl.prerequisitesFor(workContinuationImpl);
                Iterator it = hashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        hashSet.removeAll(workContinuationImpl.mIds);
                        r3 = false;
                    } else if (prerequisitesFor.contains((String) it.next())) {
                    }
                }
                if (r3) {
                    DBUtil$$ExternalSyntheticBUOutline0.m$1(workContinuationImpl, ")", "WorkContinuation has cycles (");
                    return null;
                }
                WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
                Configuration configuration = workManagerImpl.mConfiguration;
                workDatabase.beginTransaction();
                try {
                    EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, configuration, workContinuationImpl);
                    boolean processContinuation = EnqueueRunnable.processContinuation(workContinuationImpl);
                    workDatabase.setTransactionSuccessful();
                    if (processContinuation) {
                        Schedulers.schedule(configuration, workManagerImpl.mWorkDatabase, workManagerImpl.mSchedulers);
                    }
                    return Unit.INSTANCE;
                } finally {
                    workDatabase.internalEndTransaction();
                }
            case 25:
                AutoDiscoveryResult.Settings settings = (AutoDiscoveryResult.Settings) this.f$0;
                return Updater.mutableStateOf$default(Boolean.valueOf((settings == null || settings.isTrusted) ? false : true));
            case 26:
                ((FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) this.f$0).invoke(OnboardingRoute.ThundermailSignIn.INSTANCE);
                return Unit.INSTANCE;
            case 27:
                return ((ImportAppFetcher) this.f$0).context.getPackageManager();
            case 28:
                return CameraDevices$CC.m("Failed to load app info for package ", ((AppVersion) this.f$0).packageName, ".");
            default:
                mainCoroutineContext$lambda$0 = ImageLoader.Builder.mainCoroutineContext$lambda$0((CoroutineContext) this.f$0);
                return mainCoroutineContext$lambda$0;
        }
    }

    public /* synthetic */ ImageLoader$Builder$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    public /* synthetic */ ImageLoader$Builder$$ExternalSyntheticLambda1(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, FadeInFadeOutState fadeInFadeOutState) {
        this.$r8$classId = 5;
        this.f$0 = fadeInFadeOutState;
    }
}
