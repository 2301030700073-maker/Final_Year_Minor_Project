package coil3.memory;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Region;
import android.media.AudioAttributes;
import android.media.browse.MediaBrowser;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.util.Log;
import android.view.View;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.font.PlatformTypefacesApi28;
import androidx.compose.ui.text.platform.ImmutableBool;
import androidx.compose.ui.unit.IntRect;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.widget.NestedScrollView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.emoji2.text.EmojiCompat;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import androidx.profileinstaller.ProfileInstallReceiver;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteStatement;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import androidx.work.rxjava3.RxWorker;
import coil3.EventListener;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.intercept.EngineInterceptor;
import coil3.key.UriKeyer;
import coil3.request.CachePolicy;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MemoryCacheService implements OnApplyWindowInsetsListener, DifferentialMotionFlingTarget, AccessibilityViewCommand, ProfileInstaller$DiagnosticsCallback, SQLiteDriver, SupportSQLiteQuery, SingleObserver {
    public Object imageLoader;

    public MemoryCacheService(int i) {
        switch (i) {
            case 3:
                this.imageLoader = new Region();
                break;
            case 4:
                this.imageLoader = Build.VERSION.SDK_INT >= 28 ? new PlatformTypefacesApi28() : new Transition.AnonymousClass1(6);
                break;
            case 10:
                if (Build.VERSION.SDK_INT < 26) {
                    this.imageLoader = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(this);
                    break;
                } else {
                    this.imageLoader = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26(this);
                    break;
                }
            case 20:
                this.imageLoader = new AudioAttributes.Builder();
                break;
            case 25:
                this.imageLoader = null;
                break;
            case 28:
                this.imageLoader = OperationKt.createAsync(Looper.getMainLooper());
                break;
            default:
                this.imageLoader = new MutableIntObjectMap();
                break;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        SupportSQLiteStatement.RowSQLiteStatement rowSQLiteStatement = (SupportSQLiteStatement.RowSQLiteStatement) this.imageLoader;
        int length = rowSQLiteStatement.bindingTypes.length;
        for (int i = 1; i < length; i++) {
            int i2 = rowSQLiteStatement.bindingTypes[i];
            if (i2 == 1) {
                supportSQLiteProgram.bindLong(i, rowSQLiteStatement.longBindings[i]);
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

    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi21(((AudioAttributes.Builder) this.imageLoader).build());
    }

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public coil3.memory.MemoryCache$Value getCacheValue(coil3.request.ImageRequest r16, coil3.memory.MemoryCache$Key r17, coil3.size.Size r18, coil3.size.Scale r19) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.memory.MemoryCacheService.getCacheValue(coil3.request.ImageRequest, coil3.memory.MemoryCache$Key, coil3.size.Size, coil3.size.Scale):coil3.memory.MemoryCache$Value");
    }

    public State getFontLoadState() {
        EmojiCompat emojiCompat = EmojiCompat.get();
        if (emojiCompat.getLoadState() == 1) {
            return new ImmutableBool(true);
        }
        final ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(Boolean.FALSE);
        emojiCompat.registerInitCallback(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onFailed() {
                this.imageLoader = AndroidTextPaint_androidKt.Falsey;
            }

            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onInitialized() {
                ParcelableSnapshotMutableState.this.setValue(Boolean.TRUE);
                this.imageLoader = new ImmutableBool(true);
            }
        });
        return mutableStateOf$default;
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public float getScaledScrollFactor() {
        return -((NestedScrollView) this.imageLoader).getVerticalScrollFactorCompat();
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public String getSql() {
        return ((SupportSQLiteStatement.RowSQLiteStatement) this.imageLoader).sql;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    public MemoryCache$Key newCacheKey(ImageRequest imageRequest, Object obj, Options options, EventListener eventListener) {
        String str;
        String filePath;
        CachePolicy cachePolicy = imageRequest.memoryCachePolicy;
        Map map = imageRequest.memoryCacheKeyExtras;
        if (cachePolicy != CachePolicy.DISABLED) {
            String str2 = imageRequest.memoryCacheKey;
            if (str2 != null) {
                return new MemoryCache$Key(str2, map);
            }
            List list = ((RealImageLoader) this.imageLoader).components.keyers;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    Pair pair = (Pair) list.get(i);
                    UriKeyer uriKeyer = (UriKeyer) pair.component1();
                    if (((ClassReference) pair.component2()).isInstance(obj)) {
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
                                String str3 = uri2.scheme;
                                if ((str3 == null || str3.equals("file")) && uri2.path != null) {
                                    Bitmap.Config[] configArr2 = Utils_androidKt.VALID_TRANSFORMATION_CONFIGS;
                                    if ((!Intrinsics.areEqual(uri2.scheme, "file") || !Intrinsics.areEqual(CollectionsKt.firstOrNull(UriKt.getPathSegments(uri2)), "android_asset")) && ((Boolean) UriKt.getExtra(options, ImageRequestsKt.addLastModifiedToFileCacheKeyKey)).booleanValue() && (filePath = UriKt.getFilePath(uri2)) != null) {
                                        FileSystem fileSystem = options.fileSystem;
                                        String str4 = Path.DIRECTORY_SEPARATOR;
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
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.imageLoader;
        if (!Objects.equals(coordinatorLayout.mLastInsets, windowInsetsCompat)) {
            coordinatorLayout.mLastInsets = windowInsetsCompat;
            boolean z = windowInsetsCompat.getSystemWindowInsetTop() > 0;
            coordinatorLayout.mDrawStatusBarBackground = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!impl.isConsumed()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    if (childAt.getFitsSystemWindows() && ((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).mBehavior != null && impl.isConsumed()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        ((CallbackToFutureAdapter$Completer) this.imageLoader).setException(th);
    }

    public void onLoadChildren(String str, List list, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_media_item_id", str);
        bundle2.putBundle("data_options", bundle);
        bundle2.putBundle("data_notify_children_changed_options", null);
        if (list != null) {
            bundle2.putParcelableArrayList("data_media_item_list", list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
        }
        sendRequest(3, bundle2);
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.imageLoader).setResultCode(i);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable disposable) {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.imageLoader;
        Objects.requireNonNull(disposable);
        ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0 = new ReportExecutor$$ExternalSyntheticLambda0(disposable, 11);
        ResolvableFuture resolvableFuture = callbackToFutureAdapter$Completer.cancellationFuture;
        if (resolvableFuture != null) {
            resolvableFuture.addListener(reportExecutor$$ExternalSyntheticLambda0, RxWorker.INSTANT_EXECUTOR);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(Object obj) {
        ((CallbackToFutureAdapter$Completer) this.imageLoader).set(obj);
    }

    @Override // androidx.sqlite.SQLiteDriver
    public SQLiteConnection open(String str) {
        str.getClass();
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = (SupportSQLiteOpenHelper) this.imageLoader;
        String databaseName = supportSQLiteOpenHelper.getDatabaseName();
        if (databaseName == null) {
            if (!str.equals(":memory:")) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("This driver is configured to open an in-memory database but a file-based named '", str, "' was requested."));
                return null;
            }
        } else if (!databaseName.equals(str) && !StringsKt.substringAfterLast('/', databaseName, databaseName).equals(StringsKt.substringAfterLast('/', str, str))) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("This driver is configured to open a database named '", supportSQLiteOpenHelper.getDatabaseName(), "' but '", str, "' was requested.");
            return null;
        }
        return new SupportSQLiteConnection(supportSQLiteOpenHelper.getWritableDatabase());
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        DrawerLayout drawerLayout = (DrawerLayout) this.imageLoader;
        if (!DrawerLayout.isDrawerOpen(view) || drawerLayout.getDrawerLockMode(view) == 2) {
            return false;
        }
        drawerLayout.closeDrawer(view, true);
        return true;
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return false;
    }

    public void sendRequest(int i, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = 2;
        obtain.setData(bundle);
        ((Messenger) this.imageLoader).send(obtain);
    }

    public void sendResult(Object obj) {
        MediaBrowserService.Result result = (MediaBrowserService.Result) this.imageLoader;
        if (!(obj instanceof List)) {
            if (!(obj instanceof Parcel)) {
                result.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) obj;
            parcel.setDataPosition(0);
            result.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
            return;
        }
        List<Parcel> list = (List) obj;
        ArrayList arrayList = new ArrayList(list.size());
        for (Parcel parcel2 : list) {
            parcel2.setDataPosition(0);
            arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel2));
            parcel2.recycle();
        }
        result.sendResult(arrayList);
    }

    public void set(IntRect intRect) {
        ((Region) this.imageLoader).set(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    public void setAppearanceLightStatusBars(boolean z) {
        ((Okio) this.imageLoader).setAppearanceLightStatusBars(z);
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
        Map immutableMap = UtilsKt.toImmutableMap(linkedHashMap);
        synchronized (memoryCache.lock) {
            long size = image.getSize();
            if (size < 0) {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
            memoryCache.strongMemoryCache.set(memoryCache$Key, image, immutableMap, size);
        }
        return true;
    }

    public MemoryCacheService setUsage() {
        ((AudioAttributes.Builder) this.imageLoader).setUsage(1);
        return this;
    }

    public /* bridge */ MemoryCacheService setUsage$1() {
        return setUsage();
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public boolean startDifferentialMotionFling(float f) {
        if (f == 0.0f) {
            return false;
        }
        stopDifferentialMotionFling();
        ((NestedScrollView) this.imageLoader).fling((int) f);
        return true;
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public void stopDifferentialMotionFling() {
        ((NestedScrollView) this.imageLoader).mScroller.abortAnimation();
    }

    public /* synthetic */ MemoryCacheService(Object obj) {
        this.imageLoader = obj;
    }

    public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
    }
}
