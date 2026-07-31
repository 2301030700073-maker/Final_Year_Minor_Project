package coil3.memory;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteStatement;
import androidx.transition.Transition;
import androidx.viewpager2.widget.ViewPager2;
import coil3.EventListener$Companion$NONE$1;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.disk.DiskLruCache;
import coil3.disk.RealDiskCache;
import coil3.intercept.EngineInterceptor;
import coil3.key.UriKeyer;
import coil3.request.CachePolicy;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import com.fasterxml.jackson.databind.util.Annotations;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.UnsafeAllocator;
import com.google.gson.internal.reflect.ReflectionHelper;
import j$.util.Objects;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ActivityTabOnboardingActivity;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.main.MainFragment;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda0;
import org.wikipedia.navtab.MenuNavTabDialog;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.navtab.NavTabLayout;
import org.wikipedia.settings.Prefs;
import org.wikipedia.widgets.SearchWidgetInstallDialog;
import org.wikipedia.widgets.WidgetProviderSearch;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemoryCacheService implements ListUpdateCallback, StableIdStorage, SQLiteDriver, SupportSQLiteQuery, Disposable, Annotations, OnApplyWindowInsetsListener, AccessibilityViewCommand, MaterialButton.OnPressedChangeListener, MaterialCheckable.OnCheckedChangeListener, MenuBuilder.Callback, ObjectConstructor {
    public final /* synthetic */ int $r8$classId;
    public Object imageLoader;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Precision.values().length];
            try {
                iArr2[Precision.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Precision.INEXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public MemoryCacheService(int i, byte b) {
        this.$r8$classId = i;
        switch (i) {
            case 4:
                this.imageLoader = new Transition.AnonymousClass1(18, false);
                break;
            case 6:
                this.imageLoader = null;
                break;
            case 11:
                this.imageLoader = DpKt.createAsync(Looper.getMainLooper());
                break;
            default:
                this.imageLoader = new Lock(17);
                break;
        }
    }

    public static void dispatchPostEvents(List list) {
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
    }

    public static MemoryCacheService merge(MemoryCacheService memoryCacheService, MemoryCacheService memoryCacheService2) {
        HashMap hashMap;
        HashMap hashMap2;
        if (memoryCacheService == null || (hashMap = (HashMap) memoryCacheService.imageLoader) == null || hashMap.isEmpty()) {
            return memoryCacheService2;
        }
        if (memoryCacheService2 == null || (hashMap2 = (HashMap) memoryCacheService2.imageLoader) == null || hashMap2.isEmpty()) {
            return memoryCacheService;
        }
        HashMap hashMap3 = new HashMap();
        for (Annotation annotation : ((HashMap) memoryCacheService2.imageLoader).values()) {
            hashMap3.put(annotation.annotationType(), annotation);
        }
        for (Annotation annotation2 : ((HashMap) memoryCacheService.imageLoader).values()) {
            hashMap3.put(annotation2.annotationType(), annotation2);
        }
        return new MemoryCacheService(16, hashMap3);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        SupportSQLiteStatement.RowSQLiteStatement rowSQLiteStatement = (SupportSQLiteStatement.RowSQLiteStatement) this.imageLoader;
        int length = rowSQLiteStatement.bindingTypes.length;
        for (int i = 1; i < length; i++) {
            int i2 = rowSQLiteStatement.bindingTypes[i];
            if (i2 == 1) {
                supportSQLiteProgram.bindLong(rowSQLiteStatement.longBindings[i], i);
            } else if (i2 == 2) {
                supportSQLiteProgram.bindDouble(rowSQLiteStatement.doubleBindings[i], i);
            } else if (i2 == 3) {
                String str = rowSQLiteStatement.stringBindings[i];
                str.getClass();
                supportSQLiteProgram.bindString(i, str);
            } else if (i2 == 4) {
                byte[] bArr = rowSQLiteStatement.blobBindings[i];
                bArr.getClass();
                supportSQLiteProgram.bindBlob(i, bArr);
            } else if (i2 == 5) {
                supportSQLiteProgram.bindNull(i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.coroutines.intrinsics.CoroutineSingletons collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.room.ObservedTableVersions$collect$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.ObservedTableVersions$collect$1 r0 = (androidx.room.ObservedTableVersions$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.ObservedTableVersions$collect$1 r0 = new androidx.room.ObservedTableVersions$collect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3e
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r5 = r5.imageLoader
            kotlinx.coroutines.flow.StateFlowImpl r5 = (kotlinx.coroutines.flow.StateFlowImpl) r5
            r0.label = r4
            java.lang.Object r5 = r5.collect(r6, r0)
            if (r5 != r1) goto L3e
            return r1
        L3e:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.memory.MemoryCacheService.collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    public RealDiskCache.RealSnapshot commitAndOpenSnapshot$1() {
        DiskLruCache.Snapshot snapshot;
        Latch latch = (Latch) this.imageLoader;
        DiskLruCache diskLruCache = (DiskLruCache) latch.spareList;
        synchronized (diskLruCache.lock) {
            latch.complete(true);
            snapshot = diskLruCache.get(((DiskLruCache.Entry) latch.lock).key);
        }
        if (snapshot != null) {
            return new RealDiskCache.RealSnapshot(snapshot);
        }
        return null;
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.$r8$classId) {
            case 28:
                Class cls = (Class) this.imageLoader;
                try {
                    return UnsafeAllocator.INSTANCE.newInstance(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
                }
            default:
                Constructor constructor = (Constructor) this.imageLoader;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e2) {
                    UtilsKt utilsKt = ReflectionHelper.RECORD_HELPER;
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", (Throwable) e2);
                    return null;
                } catch (InstantiationException e3) {
                    throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with no args", e3);
                } catch (InvocationTargetException e4) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Failed to invoke constructor '" + ReflectionHelper.constructorToString(constructor) + "' with no args", e4.getCause());
                    return null;
                }
        }
    }

    @Override // androidx.recyclerview.widget.StableIdStorage
    public StableIdStorage.StableIdLookup createStableIdLookup() {
        switch (this.$r8$classId) {
            case 3:
                return (Lock) this.imageLoader;
            default:
                return (Transition.AnonymousClass1) this.imageLoader;
        }
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public Annotation get(Class cls) {
        HashMap hashMap = (HashMap) this.imageLoader;
        if (hashMap == null) {
            return null;
        }
        return (Annotation) hashMap.get(cls);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c7, code lost:
    
        if (r1.equals(r18.toString()) != false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public coil3.memory.MemoryCache$Value getCacheValue(coil3.request.ImageRequest r16, coil3.memory.MemoryCache$Key r17, coil3.size.Size r18, coil3.size.Scale r19) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.memory.MemoryCacheService.getCacheValue(coil3.request.ImageRequest, coil3.memory.MemoryCache$Key, coil3.size.Size, coil3.size.Scale):coil3.memory.MemoryCache$Value");
    }

    @Override // coil3.request.Disposable
    public Deferred getJob() {
        return (DeferredCoroutine) this.imageLoader;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return ((SupportSQLiteStatement.RowSQLiteStatement) this.imageLoader).sql;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    public MemoryCache$Key newCacheKey(ImageRequest imageRequest, Object obj, Options options, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1) {
        String str;
        String filePath;
        CachePolicy cachePolicy = imageRequest.memoryCachePolicy;
        Map map = imageRequest.memoryCacheKeyExtras;
        if (cachePolicy != CachePolicy.DISABLED) {
            List list = ((RealImageLoader) this.imageLoader).components.keyers;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    Pair pair = (Pair) list.get(i);
                    UriKeyer uriKeyer = (UriKeyer) pair.first;
                    if (((KClass) pair.second).isInstance(obj)) {
                        uriKeyer.getClass();
                        switch (uriKeyer.$r8$classId) {
                            case 0:
                                str = ((Uri) obj).data;
                                break;
                            case 1:
                                Uri uri = (Uri) obj;
                                if (Intrinsics.areEqual(uri.scheme, "android.resource")) {
                                    Configuration configuration = options.context.getResources().getConfiguration();
                                    Bitmap.Config[] configArr = Utils_androidKt.VALID_TRANSFORMATION_CONFIGS;
                                    str = uri + ":" + (configuration.uiMode & 48);
                                    break;
                                }
                                str = null;
                                break;
                            default:
                                Uri uri2 = (Uri) obj;
                                String str2 = uri2.scheme;
                                if ((str2 == null || str2.equals("file")) && uri2.path != null) {
                                    Bitmap.Config[] configArr2 = Utils_androidKt.VALID_TRANSFORMATION_CONFIGS;
                                    if ((!Intrinsics.areEqual(uri2.scheme, "file") || !Intrinsics.areEqual(CollectionsKt.firstOrNull(UriKt.getPathSegments(uri2)), "android_asset")) && ((Boolean) UriKt.getExtra(options, ImageRequestsKt.addLastModifiedToFileCacheKeyKey)).booleanValue() && (filePath = UriKt.getFilePath(uri2)) != null) {
                                        FileSystem fileSystem = options.fileSystem;
                                        String str3 = Path.DIRECTORY_SEPARATOR;
                                        str = uri2 + "-" + ((Long) fileSystem.metadata(Path.Companion.get(filePath)).lastModifiedAtMillis);
                                        break;
                                    }
                                }
                                str = null;
                                break;
                        }
                        if (str != null) {
                        }
                    }
                    i++;
                } else {
                    str = null;
                }
            }
            if (str != null) {
                if (((List) UriKt.getExtra(imageRequest, ImageRequestsKt.transformationsKey)).isEmpty()) {
                    return new MemoryCache$Key(str, map);
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.put("coil#size", options.size.toString());
                return new MemoryCache$Key(str, linkedHashMap);
            }
        }
        return null;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        switch (this.$r8$classId) {
            case VERTICAL_GRID_ITEM_VALUE:
                AppBarLayout appBarLayout = (AppBarLayout) this.imageLoader;
                windowInsetsCompat2 = appBarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
                if (!Objects.equals(appBarLayout.lastInsets, windowInsetsCompat2)) {
                    appBarLayout.lastInsets = windowInsetsCompat2;
                    appBarLayout.setWillNotDraw(!(appBarLayout.statusBarForeground != null && appBarLayout.getTopInset() > 0));
                    appBarLayout.requestLayout();
                }
                return windowInsetsCompat;
            case RADIO_GROUP_VALUE:
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) this.imageLoader;
                windowInsetsCompat2 = collapsingToolbarLayout.getFitsSystemWindows() ? windowInsetsCompat : null;
                if (!Objects.equals(collapsingToolbarLayout.lastInsets, windowInsetsCompat2)) {
                    collapsingToolbarLayout.lastInsets = windowInsetsCompat2;
                    collapsingToolbarLayout.requestLayout();
                }
                return windowInsetsCompat.mImpl.consumeSystemWindowInsets();
            default:
                BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) this.imageLoader;
                BottomSheetDialog.EdgeToEdgeCallback edgeToEdgeCallback = bottomSheetDialog.edgeToEdgeCallback;
                if (edgeToEdgeCallback != null) {
                    bottomSheetDialog.behavior.callbacks.remove(edgeToEdgeCallback);
                }
                BottomSheetDialog.EdgeToEdgeCallback edgeToEdgeCallback2 = new BottomSheetDialog.EdgeToEdgeCallback(bottomSheetDialog.bottomSheet, windowInsetsCompat);
                bottomSheetDialog.edgeToEdgeCallback = edgeToEdgeCallback2;
                edgeToEdgeCallback2.setWindow(bottomSheetDialog.getWindow());
                BottomSheetBehavior bottomSheetBehavior = bottomSheetDialog.behavior;
                BottomSheetDialog.EdgeToEdgeCallback edgeToEdgeCallback3 = bottomSheetDialog.edgeToEdgeCallback;
                ArrayList arrayList = bottomSheetBehavior.callbacks;
                if (!arrayList.contains(edgeToEdgeCallback3)) {
                    arrayList.add(edgeToEdgeCallback3);
                }
                return windowInsetsCompat;
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i, int i2, Object obj) {
        ((RecyclerView.Adapter) this.imageLoader).mObservable.notifyItemRangeChanged(i, i2, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i, int i2) {
        ((RecyclerView.Adapter) this.imageLoader).notifyItemRangeInserted(i, i2);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        int[] iArr;
        NavigationBarView.OnItemSelectedListener onItemSelectedListener = ((BottomNavigationView) this.imageLoader).selectedListener;
        if (onItemSelectedListener != null) {
            MainFragment mainFragment = ((MainFragment$$ExternalSyntheticLambda0) onItemSelectedListener).f$0;
            menuItem.getClass();
            mainFragment.navTabBackStack.clear();
            int order = menuItem.getOrder();
            NavTab navTab = NavTab.EDITS;
            if (order == navTab.ordinal()) {
                Prefs prefs = Prefs.INSTANCE;
                if (!Prefs.isActivityTabOnboardingShown()) {
                    Fragment.AnonymousClass10 anonymousClass10 = mainFragment.activityTabOnboardingLauncher;
                    int i = ActivityTabOnboardingActivity.$r8$clinit;
                    anonymousClass10.launch(new Intent(mainFragment.requireContext(), (Class<?>) ActivityTabOnboardingActivity.class), null);
                    Request.Builder builder = mainFragment._binding;
                    builder.getClass();
                    ((NavTabLayout) builder.body).setOverlayDot(navTab, false);
                    return true;
                }
            }
            if (menuItem.getOrder() == NavTab.MORE.ordinal()) {
                FragmentManagerImpl childFragmentManager = mainFragment.getChildFragmentManager();
                childFragmentManager.getClass();
                Okio__OkioKt.show(childFragmentManager, new MenuNavTabDialog());
                return true;
            }
            if ((mainFragment.getCurrentFragment() instanceof HistoryFragment) && menuItem.getOrder() == NavTab.SEARCH.ordinal()) {
                mainFragment.openSearchActivity(Constants.InvokeSource.NAV_MENU, null, null);
                return false;
            }
            Request.Builder builder2 = mainFragment._binding;
            builder2.getClass();
            ((ViewPager2) builder2.tags).setCurrentItem(menuItem.getOrder(), false);
            mainFragment.requireActivity().invalidateOptionsMenu();
            if (menuItem.getOrder() == NavTab.SEARCH.ordinal()) {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                if (AppWidgetManager.getInstance(Jsoup.getInstance()) != null) {
                    Prefs prefs2 = Prefs.INSTANCE;
                    if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_search_widget_install_prompt_shown), false)) {
                        WikipediaApp jsoup = Jsoup.getInstance();
                        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(jsoup);
                        if (appWidgetManager == null || (iArr = appWidgetManager.getAppWidgetIds(new ComponentName(jsoup, (Class<?>) WidgetProviderSearch.class))) == null) {
                            iArr = new int[0];
                        }
                        if (iArr.length == 0) {
                            FragmentManagerImpl childFragmentManager2 = mainFragment.getChildFragmentManager();
                            childFragmentManager2.getClass();
                            Okio__OkioKt.show(childFragmentManager2, new SearchWidgetInstallDialog());
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i, int i2) {
        ((RecyclerView.Adapter) this.imageLoader).notifyItemMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        ((RecyclerView.Adapter) this.imageLoader).mObservable.notifyItemRangeRemoved(i, i2);
    }

    @Override // androidx.sqlite.SQLiteDriver
    public SQLiteConnection open(String str) {
        str.getClass();
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) this.imageLoader;
        String databaseName = supportSQLiteOpenHelper.getDatabaseName();
        if (databaseName == null) {
            if (!str.equals(":memory:")) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m("This driver is configured to open an in-memory database but a file-based named '", str, "' was requested."));
                return null;
            }
        } else if (!databaseName.equals(str) && !StringsKt.substringAfterLast('/', databaseName, databaseName).equals(StringsKt.substringAfterLast('/', str, str))) {
            Gson$$ExternalSyntheticBUOutline0.m("This driver is configured to open a database named '", supportSQLiteOpenHelper.getDatabaseName(), "' but '", str, "' was requested.");
            return null;
        }
        return new SupportSQLiteConnection(supportSQLiteOpenHelper.getWritableDatabase());
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.imageLoader;
        if (!swipeDismissBehavior.canSwipeDismissView(view)) {
            return false;
        }
        boolean z = view.getLayoutDirection() == 1;
        int i = swipeDismissBehavior.swipeDirection;
        int width = (!(i == 0 && z) && (i != 1 || z)) ? view.getWidth() : -view.getWidth();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        view.offsetLeftAndRight(width);
        view.setAlpha(RecyclerView.DECELERATION_RATE);
        BaseTransientBottomBar.AnonymousClass3 anonymousClass3 = swipeDismissBehavior.listener;
        if (anonymousClass3 != null) {
            anonymousClass3.onDismiss(view);
        }
        return true;
    }

    public boolean setCacheValue(MemoryCache$Key memoryCache$Key, ImageRequest imageRequest, EngineInterceptor.ExecuteResult executeResult) {
        RealMemoryCache memoryCache;
        if (memoryCache$Key == null || !imageRequest.memoryCachePolicy.getWriteEnabled() || !executeResult.image.getShareable() || (memoryCache = ((RealImageLoader) this.imageLoader).getMemoryCache()) == null) {
            return false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("coil#is_sampled", Boolean.valueOf(executeResult.isSampled));
        String str = executeResult.diskCacheKey;
        if (str != null) {
            linkedHashMap.put("coil#disk_cache_key", str);
        }
        Image image = executeResult.image;
        Map immutableMap = ExceptionsKt.toImmutableMap(linkedHashMap);
        synchronized (memoryCache.lock) {
            long size = image.getSize();
            if (size < 0) {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
            memoryCache.strongMemoryCache.set(memoryCache$Key, image, immutableMap, size);
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public int size() {
        HashMap hashMap = (HashMap) this.imageLoader;
        if (hashMap == null) {
            return 0;
        }
        return hashMap.size();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case LAZY_VERTICAL_GRID_VALUE:
                HashMap hashMap = (HashMap) this.imageLoader;
                return hashMap == null ? "[null]" : hashMap.toString();
            default:
                return super.toString();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
    }

    public /* synthetic */ MemoryCacheService(int i, Object obj) {
        this.$r8$classId = i;
        this.imageLoader = obj;
    }

    public MemoryCacheService(RealImageLoader realImageLoader, AndroidSvg androidSvg) {
        this.$r8$classId = 0;
        this.imageLoader = realImageLoader;
    }

    public MemoryCacheService(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.$r8$classId = 7;
        supportSQLiteOpenHelper.getClass();
        this.imageLoader = supportSQLiteOpenHelper;
    }

    public /* synthetic */ MemoryCacheService(char c, int i) {
        this.$r8$classId = i;
    }

    public MemoryCacheService(int i) {
        this.$r8$classId = 5;
        this.imageLoader = StateFlowKt.MutableStateFlow(new int[i]);
    }
}
