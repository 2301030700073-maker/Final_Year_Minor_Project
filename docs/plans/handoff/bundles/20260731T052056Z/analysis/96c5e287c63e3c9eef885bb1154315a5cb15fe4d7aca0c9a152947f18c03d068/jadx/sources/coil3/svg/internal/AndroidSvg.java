package coil3.svg.internal;

import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LegacySavedStateHandleController$OnRecreation;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData$1;
import androidx.navigation.NavOptions;
import androidx.paging.ConflatedEventBus$special$$inlined$mapNotNull$1;
import androidx.paging.PageFetcher;
import androidx.paging.PageFetcher$LoadRequest$Refresh;
import androidx.paging.PageFetcher$RefreshType$All;
import androidx.paging.UiReceiver;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceGroupAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags;
import androidx.recyclerview.widget.ViewInfoStore$InfoRecord;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.sqlite.SQLiteDriver;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.Processor;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import coil3.Extras;
import coil3.Image;
import coil3.UriKt;
import coil3.compose.AsyncImageKt;
import coil3.compose.AsyncImagePainter;
import coil3.network.NetworkHeaders;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.target.ImageViewTarget;
import coil3.target.Target;
import coil3.util.BitmapsKt;
import coil3.util.HardwareBitmapService;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.TypeKey;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Type;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileMetadata;
import org.maplibre.android.location.engine.LocationEngineRequest;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidSvg implements UiReceiver, Preference.OnPreferenceClickListener, StableIdStorage.StableIdLookup, SQLiteDriver, Target, TypeResolutionContext {
    public Object renderOptions;
    public Object svg;

    public AndroidSvg(int i) {
        Object obj = null;
        int i2 = 0;
        switch (i) {
            case 6:
                this.svg = new SparseIntArray();
                this.renderOptions = new SparseIntArray();
                break;
            case 10:
                this.svg = new SimpleArrayMap(0);
                this.renderOptions = new LongSparseArray(obj);
                break;
            case 24:
                this.svg = null;
                this.renderOptions = null;
                break;
            case 25:
                this.svg = new ConcurrentHashMap();
                this.renderOptions = new ReferenceQueue();
                break;
            case 27:
                this.svg = new HashMap(64);
                this.renderOptions = new AtomicReference();
                break;
            case 29:
                this.svg = new Rect();
                this.renderOptions = new Rect();
                break;
            default:
                StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new Pair(Integer.MIN_VALUE, null));
                this.svg = MutableStateFlow;
                this.renderOptions = new ConflatedEventBus$special$$inlined$mapNotNull$1(MutableStateFlow, i2);
                break;
        }
    }

    public static LifecycleRegistry findLifecycle(ImageRequest imageRequest) {
        Target target = imageRequest.target;
        Object context = target instanceof ImageViewTarget ? ((ImageViewTarget) target).view.getContext() : imageRequest.context;
        while (!(context instanceof LifecycleOwner)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return ((LifecycleOwner) context).getLifecycle();
    }

    public static int getSpanGroupIndex(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        return i3 + 1 > i2 ? i4 + 1 : i4;
    }

    public static boolean isConfigValidForHardware(ImageRequest imageRequest, Bitmap.Config config) {
        if (!BitmapsKt.isHardware(config)) {
            return true;
        }
        if (!((Boolean) UriKt.getExtra(imageRequest, ImageRequests_androidKt.allowHardwareKey)).booleanValue()) {
            return false;
        }
        Target target = imageRequest.target;
        if (!(target instanceof ImageViewTarget)) {
            return true;
        }
        ImageView imageView = ((ImageViewTarget) target).view;
        return !imageView.isAttachedToWindow() || imageView.isHardwareAccelerated();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[Catch: IOException -> 0x006b, TryCatch #0 {IOException -> 0x006b, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:13:0x0042, B:15:0x003a, B:16:0x003d, B:27:0x0047, B:29:0x004a, B:32:0x005b), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static coil3.svg.internal.AndroidSvg of(java.lang.String... r12) {
        /*
            int r0 = r12.length     // Catch: java.io.IOException -> L6b
            okio.ByteString[] r0 = new okio.ByteString[r0]     // Catch: java.io.IOException -> L6b
            okio.Buffer r1 = new okio.Buffer     // Catch: java.io.IOException -> L6b
            r1.<init>()     // Catch: java.io.IOException -> L6b
            r2 = 0
            r3 = r2
        La:
            int r4 = r12.length     // Catch: java.io.IOException -> L6b
            if (r3 >= r4) goto L5b
            r4 = r12[r3]     // Catch: java.io.IOException -> L6b
            java.lang.String[] r5 = com.airbnb.lottie.parser.moshi.JsonReader.REPLACEMENT_CHARS     // Catch: java.io.IOException -> L6b
            r6 = 34
            r1.m877writeByte(r6)     // Catch: java.io.IOException -> L6b
            int r7 = r4.length()     // Catch: java.io.IOException -> L6b
            r8 = r2
            r9 = r8
        L1c:
            if (r8 >= r7) goto L45
            char r10 = r4.charAt(r8)     // Catch: java.io.IOException -> L6b
            r11 = 128(0x80, float:1.8E-43)
            if (r10 >= r11) goto L2b
            r10 = r5[r10]     // Catch: java.io.IOException -> L6b
            if (r10 != 0) goto L38
            goto L42
        L2b:
            r11 = 8232(0x2028, float:1.1535E-41)
            if (r10 != r11) goto L32
            java.lang.String r10 = "\\u2028"
            goto L38
        L32:
            r11 = 8233(0x2029, float:1.1537E-41)
            if (r10 != r11) goto L42
            java.lang.String r10 = "\\u2029"
        L38:
            if (r9 >= r8) goto L3d
            r1.writeUtf8(r9, r8, r4)     // Catch: java.io.IOException -> L6b
        L3d:
            r1.m879writeUtf8(r10)     // Catch: java.io.IOException -> L6b
            int r9 = r8 + 1
        L42:
            int r8 = r8 + 1
            goto L1c
        L45:
            if (r9 >= r7) goto L4a
            r1.writeUtf8(r9, r7, r4)     // Catch: java.io.IOException -> L6b
        L4a:
            r1.m877writeByte(r6)     // Catch: java.io.IOException -> L6b
            r1.readByte()     // Catch: java.io.IOException -> L6b
            long r4 = r1.size     // Catch: java.io.IOException -> L6b
            okio.ByteString r4 = r1.readByteString(r4)     // Catch: java.io.IOException -> L6b
            r0[r3] = r4     // Catch: java.io.IOException -> L6b
            int r3 = r3 + 1
            goto La
        L5b:
            coil3.svg.internal.AndroidSvg r1 = new coil3.svg.internal.AndroidSvg     // Catch: java.io.IOException -> L6b
            java.lang.Object r12 = r12.clone()     // Catch: java.io.IOException -> L6b
            java.lang.String[] r12 = (java.lang.String[]) r12     // Catch: java.io.IOException -> L6b
            okio.Options r0 = okio.Options.Companion.of(r0)     // Catch: java.io.IOException -> L6b
            r1.<init>(r12, r0)     // Catch: java.io.IOException -> L6b
            return r1
        L6b:
            r12 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.svg.internal.AndroidSvg.of(java.lang.String[]):coil3.svg.internal.AndroidSvg");
    }

    public void addToPostLayout(RecyclerView.ViewHolder viewHolder, NavOptions.Builder builder) {
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.svg;
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            viewInfoStore$InfoRecord = ViewInfoStore$InfoRecord.obtain();
            simpleArrayMap.put(viewHolder, viewInfoStore$InfoRecord);
        }
        viewInfoStore$InfoRecord.postInfo = builder;
        viewInfoStore$InfoRecord.flags |= 8;
    }

    public void addTypedSerializer(Class cls, JsonSerializer jsonSerializer) {
        synchronized (this) {
            try {
                if (((HashMap) this.svg).put(new TypeKey(cls, true), jsonSerializer) == null) {
                    ((AtomicReference) this.renderOptions).set(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean block$room_runtime() {
        synchronized (this) {
            if (((AtomicBoolean) this.renderOptions).get()) {
                return false;
            }
            ((AtomicInteger) this.svg).incrementAndGet();
            return true;
        }
    }

    public void clear() {
        int[] iArr = (int[]) this.svg;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.renderOptions = null;
    }

    public Bundle consumeRestoredStateForKey(String str) {
        Bundle bundle;
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.svg;
        if (!savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle2 = savedStateRegistryImpl.restoredState;
        if (bundle2 == null) {
            return null;
        }
        if (bundle2.containsKey(str)) {
            bundle = bundle2.getBundle(str);
            if (bundle == null) {
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            }
        } else {
            bundle = null;
        }
        bundle2.remove(str);
        if (bundle2.isEmpty()) {
            savedStateRegistryImpl.restoredState = null;
        }
        return bundle;
    }

    public boolean contains(WorkGenerationalId workGenerationalId) {
        boolean containsKey;
        synchronized (this.renderOptions) {
            containsKey = ((NetworkHeaders.Builder) this.svg).data.containsKey(workGenerationalId);
        }
        return containsKey;
    }

    public void dispatchOnFragmentActivityCreated(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentActivityCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentAttached(Fragment fragment, boolean z) {
        FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this.svg;
        AppCompatActivity appCompatActivity = fragmentManagerImpl.mHost.context;
        Fragment fragment2 = fragmentManagerImpl.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentCreated(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentDestroyed(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentDetached(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentDetached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPaused(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPaused(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPreAttached(Fragment fragment, boolean z) {
        FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this.svg;
        AppCompatActivity appCompatActivity = fragmentManagerImpl.mHost.context;
        Fragment fragment2 = fragmentManagerImpl.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreAttached(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentPreCreated(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentPreCreated(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentResumed(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentResumed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentSaveInstanceState(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentSaveInstanceState(fragment, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentStarted(Fragment fragment, boolean z) {
        FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this.svg;
        Fragment fragment2 = fragmentManagerImpl.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStarted(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentStarted(fragmentManagerImpl, fragment);
            }
        }
    }

    public void dispatchOnFragmentStopped(Fragment fragment, boolean z) {
        Fragment fragment2 = ((FragmentManagerImpl) this.svg).mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentStopped(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                OperationKt operationKt = fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback;
            }
        }
    }

    public void dispatchOnFragmentViewCreated(Fragment fragment, View view, Bundle bundle, boolean z) {
        view.getClass();
        FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this.svg;
        Fragment fragment2 = fragmentManagerImpl.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment, view, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentViewCreated(fragmentManagerImpl, fragment, view);
            }
        }
    }

    public void dispatchOnFragmentViewDestroyed(Fragment fragment, boolean z) {
        FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) this.svg;
        Fragment fragment2 = fragmentManagerImpl.mParent;
        if (fragment2 != null) {
            fragment2.getParentFragmentManager().mLifecycleCallbacksDispatcher.dispatchOnFragmentViewDestroyed(fragment, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.renderOptions).iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder = (FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder) it.next();
            if (!z || fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.recursive) {
                fragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.callback.onFragmentViewDestroyed(fragmentManagerImpl, fragment);
            }
        }
    }

    public void ensureSize(int i) {
        int[] iArr = (int[]) this.svg;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.svg = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.svg = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.svg;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View findOneViewWithinBoundFlags(int i, int i2, int i3, int i4) {
        View childAt;
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = (ViewBoundsCheck$BoundFlags) this.renderOptions;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.svg;
        int parentStart = anonymousClass1.getParentStart();
        int parentEnd = anonymousClass1.getParentEnd();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            switch (anonymousClass1.$r8$classId) {
                case 0:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
                default:
                    childAt = anonymousClass1.this$0.getChildAt(i);
                    break;
            }
            int childStart = anonymousClass1.getChildStart(childAt);
            int childEnd = anonymousClass1.getChildEnd(childAt);
            viewBoundsCheck$BoundFlags.mRvStart = parentStart;
            viewBoundsCheck$BoundFlags.mRvEnd = parentEnd;
            viewBoundsCheck$BoundFlags.mChildStart = childStart;
            viewBoundsCheck$BoundFlags.mChildEnd = childEnd;
            if (i3 != 0) {
                viewBoundsCheck$BoundFlags.mBoundFlags = i3;
                if (viewBoundsCheck$BoundFlags.boundsMatch()) {
                    return childAt;
                }
            }
            if (i4 != 0) {
                viewBoundsCheck$BoundFlags.mBoundFlags = i4;
                if (viewBoundsCheck$BoundFlags.boundsMatch()) {
                    view = childAt;
                }
            }
            i += i5;
        }
        return view;
    }

    public SavedStateRegistry$SavedStateProvider getSavedStateProvider(String str) {
        SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider;
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.svg;
        synchronized (savedStateRegistryImpl.lock) {
            Iterator it = savedStateRegistryImpl.keyToProviders.entrySet().iterator();
            do {
                savedStateRegistry$SavedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider2 = (SavedStateRegistry$SavedStateProvider) entry.getValue();
                if (Intrinsics.areEqual(str2, str)) {
                    savedStateRegistry$SavedStateProvider = savedStateRegistry$SavedStateProvider2;
                }
            } while (savedStateRegistry$SavedStateProvider == null);
        }
        return savedStateRegistry$SavedStateProvider;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return ((SQLiteDriver) this.svg).hasConnectionPool();
    }

    public void invalidateSpanIndexCache() {
        ((SparseIntArray) this.svg).clear();
    }

    public boolean isViewWithinBoundFlags(View view) {
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = (ViewBoundsCheck$BoundFlags) this.renderOptions;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.svg;
        int parentStart = anonymousClass1.getParentStart();
        int parentEnd = anonymousClass1.getParentEnd();
        int childStart = anonymousClass1.getChildStart(view);
        int childEnd = anonymousClass1.getChildEnd(view);
        viewBoundsCheck$BoundFlags.mRvStart = parentStart;
        viewBoundsCheck$BoundFlags.mRvEnd = parentEnd;
        viewBoundsCheck$BoundFlags.mChildStart = childStart;
        viewBoundsCheck$BoundFlags.mChildEnd = childEnd;
        viewBoundsCheck$BoundFlags.mBoundFlags = 24579;
        return viewBoundsCheck$BoundFlags.boundsMatch();
    }

    @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
    public long localToGlobal(long j) {
        LongSparseArray longSparseArray = (LongSparseArray) this.svg;
        Long l = (Long) longSparseArray.get(j);
        if (l == null) {
            LocationEngineRequest.Builder builder = (LocationEngineRequest.Builder) this.renderOptions;
            long j2 = builder.fastestInterval;
            builder.fastestInterval = 1 + j2;
            l = Long.valueOf(j2);
            longSparseArray.put(j, l);
        }
        return l.longValue();
    }

    public void lock() {
        String str = (String) this.svg;
        if (((FileChannel) this.renderOptions) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.renderOptions = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.renderOptions;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.renderOptions = null;
            throw new IllegalStateException(Animation.CC.m("Unable to lock file: '", str, "'."), th);
        }
    }

    public void offsetForAddition(int i, int i2) {
        int[] iArr = (int[]) this.svg;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        int[] iArr2 = (int[]) this.svg;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.svg, i, i3, -1);
        ArrayList arrayList = (ArrayList) this.renderOptions;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.renderOptions).get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i4 >= i) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 + i2;
            }
        }
    }

    public void offsetForRemoval(int i, int i2) {
        int[] iArr = (int[]) this.svg;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        int[] iArr2 = (int[]) this.svg;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.svg;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.renderOptions;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.renderOptions).get(size);
            int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((ArrayList) this.renderOptions).remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 - i2;
                }
            }
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        ((PreferenceGroup) this.svg).mInitialExpandedChildrenCount = Integer.MAX_VALUE;
        PreferenceGroupAdapter preferenceGroupAdapter = (PreferenceGroupAdapter) this.renderOptions;
        Handler handler = preferenceGroupAdapter.mHandler;
        LiveData$1 liveData$1 = preferenceGroupAdapter.mSyncRunnable;
        handler.removeCallbacks(liveData$1);
        handler.post(liveData$1);
        return true;
    }

    @Override // coil3.target.Target
    public void onStart(Image image) {
        Painter painter;
        ImageRequest imageRequest = (ImageRequest) this.svg;
        AsyncImagePainter asyncImagePainter = (AsyncImagePainter) this.renderOptions;
        Painter m777asPainter55t9rM = image != null ? AsyncImageKt.m777asPainter55t9rM(image, imageRequest.context) : null;
        if (m777asPainter55t9rM == null && ((Boolean) UriKt.getExtra(imageRequest, AsyncImageKt.useExistingImageAsPlaceholderKey)).booleanValue() && (painter = asyncImagePainter.getPainter()) != null) {
            m777asPainter55t9rM = painter;
        }
        asyncImagePainter.updateState(new AsyncImagePainter.State.Loading(m777asPainter55t9rM));
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #6 {all -> 0x00bd, blocks: (B:61:0x00bc, B:62:0x00bf, B:63:0x00d7), top: B:59:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bf A[Catch: all -> 0x00bd, TryCatch #6 {all -> 0x00bd, blocks: (B:61:0x00bc, B:62:0x00bf, B:63:0x00d7), top: B:59:0x00ba }] */
    @Override // androidx.sqlite.SQLiteDriver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.sqlite.SQLiteConnection open(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.svg.internal.AndroidSvg.open(java.lang.String):androidx.sqlite.SQLiteConnection");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0072, code lost:
    
        if (((coil3.util.HardwareBitmapService) r18.renderOptions).allowHardwareMainThread(r1) != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0083 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public coil3.request.Options options(coil3.request.ImageRequest r19, coil3.size.Size r20) {
        /*
            r18 = this;
            r0 = r19
            coil3.request.Options r1 = new coil3.request.Options
            r2 = r1
            android.content.Context r1 = r0.context
            coil3.size.Scale r3 = r0.scale
            coil3.size.Precision r4 = r0.precision
            okio.FileSystem r6 = r0.fileSystem
            coil3.request.CachePolicy r7 = r0.memoryCachePolicy
            coil3.request.CachePolicy r8 = r0.diskCachePolicy
            coil3.request.CachePolicy r9 = r0.networkCachePolicy
            coil3.Extras$Key r5 = coil3.request.ImageRequests_androidKt.bitmapConfigKey
            java.lang.Object r10 = coil3.UriKt.getExtra(r0, r5)
            android.graphics.Bitmap$Config r10 = (android.graphics.Bitmap.Config) r10
            coil3.Extras$Key r11 = coil3.request.ImageRequests_androidKt.allowRgb565Key
            java.lang.Object r12 = coil3.UriKt.getExtra(r0, r11)
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            coil3.Extras$Key r13 = coil3.request.ImageRequestsKt.transformationsKey
            java.lang.Object r14 = coil3.UriKt.getExtra(r0, r13)
            java.util.List r14 = (java.util.List) r14
            boolean r14 = r14.isEmpty()
            r16 = 0
            if (r14 != 0) goto L4b
            android.graphics.Bitmap$Config[] r14 = coil3.util.Utils_androidKt.VALID_TRANSFORMATION_CONFIGS
            java.lang.Object r17 = coil3.UriKt.getExtra(r0, r5)
            r15 = r17
            android.graphics.Bitmap$Config r15 = (android.graphics.Bitmap.Config) r15
            boolean r14 = kotlin.collections.ArraysKt___ArraysKt.contains(r15, r14)
            if (r14 == 0) goto L48
            goto L4b
        L48:
            r14 = r16
            goto L4c
        L4b:
            r14 = 1
        L4c:
            java.lang.Object r15 = coil3.UriKt.getExtra(r0, r5)
            android.graphics.Bitmap$Config r15 = (android.graphics.Bitmap.Config) r15
            boolean r15 = coil3.util.BitmapsKt.isHardware(r15)
            if (r15 == 0) goto L7c
            java.lang.Object r15 = coil3.UriKt.getExtra(r0, r5)
            android.graphics.Bitmap$Config r15 = (android.graphics.Bitmap.Config) r15
            boolean r15 = isConfigValidForHardware(r0, r15)
            if (r15 == 0) goto L75
            r15 = r18
            java.lang.Object r15 = r15.renderOptions
            coil3.util.HardwareBitmapService r15 = (coil3.util.HardwareBitmapService) r15
            r17 = r1
            r1 = r20
            boolean r15 = r15.allowHardwareMainThread(r1)
            if (r15 == 0) goto L79
            goto L80
        L75:
            r17 = r1
            r1 = r20
        L79:
            r15 = r16
            goto L81
        L7c:
            r17 = r1
            r1 = r20
        L80:
            r15 = 1
        L81:
            if (r14 == 0) goto L86
            if (r15 == 0) goto L86
            goto L88
        L86:
            android.graphics.Bitmap$Config r10 = android.graphics.Bitmap.Config.ARGB_8888
        L88:
            if (r12 == 0) goto L9c
            java.lang.Object r12 = coil3.UriKt.getExtra(r0, r13)
            java.util.List r12 = (java.util.List) r12
            boolean r12 = r12.isEmpty()
            if (r12 == 0) goto L9c
            android.graphics.Bitmap$Config r12 = android.graphics.Bitmap.Config.ALPHA_8
            if (r10 == r12) goto L9c
            r15 = 1
            goto L9e
        L9c:
            r15 = r16
        L9e:
            coil3.request.ImageRequest$Defaults r12 = r0.defaults
            coil3.Extras r12 = r12.extras
            java.util.Map r12 = r12.data
            coil3.Extras r13 = r0.extras
            java.util.Map r13 = r13.data
            java.util.LinkedHashMap r12 = kotlin.collections.MapsKt__MapsKt.plus(r12, r13)
            java.util.LinkedHashMap r13 = new java.util.LinkedHashMap
            r13.<init>(r12)
            java.lang.Object r12 = coil3.UriKt.getExtra(r0, r5)
            android.graphics.Bitmap$Config r12 = (android.graphics.Bitmap.Config) r12
            if (r10 == r12) goto Lc2
            if (r10 == 0) goto Lbf
            r13.put(r5, r10)
            goto Lc2
        Lbf:
            r13.remove(r5)
        Lc2:
            java.lang.Object r0 = coil3.UriKt.getExtra(r0, r11)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r15 == r0) goto Ld5
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r15)
            r13.put(r11, r0)
        Ld5:
            coil3.Extras r10 = new coil3.Extras
            java.util.Map r0 = kotlin.ExceptionsKt.toImmutableMap(r13)
            r10.<init>(r0)
            r5 = 0
            r0 = r2
            r2 = r1
            r1 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.svg.internal.AndroidSvg.options(coil3.request.ImageRequest, coil3.size.Size):coil3.request.Options");
    }

    public void performRestore(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.svg;
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryImpl.owner;
        if (!savedStateRegistryImpl.attached) {
            savedStateRegistryImpl.performAttach();
        }
        if (savedStateRegistryOwner.getLifecycle().state.isAtLeast(Lifecycle$State.STARTED)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("performRestore cannot be called when owner is ", savedStateRegistryOwner.getLifecycle().state);
            return;
        }
        if (savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundle2 = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            Bundle bundle3 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            if (bundle3 == null) {
                Operation$State.keyOrValueNotFoundError("androidx.lifecycle.BundlableSavedStateRegistry.key");
                throw null;
            }
            bundle2 = bundle3;
        }
        savedStateRegistryImpl.restoredState = bundle2;
        savedStateRegistryImpl.isRestored = true;
    }

    public void performSave(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.svg;
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle2 = savedStateRegistryImpl.restoredState;
        if (bundle2 != null) {
            bundleOf.putAll(bundle2);
        }
        synchronized (savedStateRegistryImpl.lock) {
            for (Map.Entry entry : savedStateRegistryImpl.keyToProviders.entrySet()) {
                String str = (String) entry.getKey();
                Bundle saveState = ((SavedStateRegistry$SavedStateProvider) entry.getValue()).saveState();
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        if (bundleOf.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleOf);
    }

    public NavOptions.Builder popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord;
        NavOptions.Builder builder;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.svg;
        int indexOfKey = simpleArrayMap.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.valueAt(indexOfKey)) != null) {
            int i2 = viewInfoStore$InfoRecord.flags;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                viewInfoStore$InfoRecord.flags = i3;
                if (i == 4) {
                    builder = viewInfoStore$InfoRecord.preInfo;
                } else if (i == 8) {
                    builder = viewInfoStore$InfoRecord.postInfo;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.removeAt(indexOfKey);
                    viewInfoStore$InfoRecord.flags = 0;
                    viewInfoStore$InfoRecord.preInfo = null;
                    viewInfoStore$InfoRecord.postInfo = null;
                    ViewInfoStore$InfoRecord.sPool.mo741release((Object) viewInfoStore$InfoRecord);
                }
                return builder;
            }
        }
        return null;
    }

    @Override // androidx.paging.UiReceiver
    public void refresh() {
        ((PageFetcher) this.renderOptions).loadRequests.send(new PageFetcher$LoadRequest$Refresh(true, PageFetcher$RefreshType$All.INSTANCE$1));
    }

    public void registerSavedStateProvider(String str, SavedStateRegistry$SavedStateProvider savedStateRegistry$SavedStateProvider) {
        SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) this.svg;
        synchronized (savedStateRegistryImpl.lock) {
            if (savedStateRegistryImpl.keyToProviders.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            savedStateRegistryImpl.keyToProviders.put(str, savedStateRegistry$SavedStateProvider);
        }
    }

    public StartStopToken remove(WorkGenerationalId workGenerationalId) {
        StartStopToken remove;
        workGenerationalId.getClass();
        synchronized (this.renderOptions) {
            remove = ((NetworkHeaders.Builder) this.svg).remove(workGenerationalId);
        }
        return remove;
    }

    public void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.svg).get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            return;
        }
        viewInfoStore$InfoRecord.flags &= -2;
    }

    public void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = (LongSparseArray) this.renderOptions;
        int size = longSparseArray.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (viewHolder == longSparseArray.valueAt(size)) {
                Object[] objArr = longSparseArray.values;
                Object obj = objArr[size];
                Object obj2 = ArraySetKt.DELETED;
                if (obj != obj2) {
                    objArr[size] = obj2;
                    longSparseArray.garbage = true;
                }
            } else {
                size--;
            }
        }
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.svg).remove(viewHolder);
        if (viewInfoStore$InfoRecord != null) {
            viewInfoStore$InfoRecord.flags = 0;
            viewInfoStore$InfoRecord.preInfo = null;
            viewInfoStore$InfoRecord.postInfo = null;
            ViewInfoStore$InfoRecord.sPool.mo741release((Object) viewInfoStore$InfoRecord);
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
    public TypeBase resolveType(Type type) {
        return ((TypeFactory) this.svg)._fromAny(null, type, (TypeBindings) this.renderOptions);
    }

    @Override // androidx.paging.UiReceiver
    public void retry() {
        ((AndroidSvg) this.svg).send(Unit.INSTANCE);
    }

    public void runOnNextRecreation() {
        if (!((SavedStateRegistryImpl) this.svg).isAllowingSavingState) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Can not perform this action after onSaveInstanceState");
            return;
        }
        AppCompatActivity.AnonymousClass1 anonymousClass1 = (AppCompatActivity.AnonymousClass1) this.renderOptions;
        if (anonymousClass1 == null) {
            anonymousClass1 = new AppCompatActivity.AnonymousClass1(this);
        }
        this.renderOptions = anonymousClass1;
        try {
            LegacySavedStateHandleController$OnRecreation.class.getDeclaredConstructor(null);
            AppCompatActivity.AnonymousClass1 anonymousClass12 = (AppCompatActivity.AnonymousClass1) this.renderOptions;
            if (anonymousClass12 != null) {
                ((LinkedHashSet) anonymousClass12.this$0).add(LegacySavedStateHandleController$OnRecreation.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + LegacySavedStateHandleController$OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    public void send(Object obj) {
        StateFlowImpl stateFlowImpl = (StateFlowImpl) this.svg;
        stateFlowImpl.updateState(null, new Pair(Integer.valueOf(((Number) ((Pair) stateFlowImpl.getValue()).first).intValue() + 1), obj));
    }

    public void startWork(StartStopToken startStopToken, SystemClock systemClock) {
        startStopToken.getClass();
        WorkManagerTaskExecutor workManagerTaskExecutor = (WorkManagerTaskExecutor) this.renderOptions;
        workManagerTaskExecutor.mBackgroundExecutor.execute(new Processor$$ExternalSyntheticLambda1(this, startStopToken, systemClock, 4));
    }

    public void stopWork(StartStopToken startStopToken, int i) {
        startStopToken.getClass();
        WorkManagerTaskExecutor workManagerTaskExecutor = (WorkManagerTaskExecutor) this.renderOptions;
        workManagerTaskExecutor.mBackgroundExecutor.execute(new StopWorkRunnable((Processor) this.svg, startStopToken, false, i));
    }

    public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopToken;
        synchronized (this.renderOptions) {
            startStopToken = ((NetworkHeaders.Builder) this.svg).tokenFor(workGenerationalId);
        }
        return startStopToken;
    }

    public void unblock$room_runtime() {
        synchronized (this) {
            ((AtomicInteger) this.svg).decrementAndGet();
            if (((AtomicInteger) this.svg).get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }

    public JsonSerializer untypedValueSerializer(Class cls) {
        JsonSerializer jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) ((HashMap) this.svg).get(new TypeKey(cls, false));
        }
        return jsonSerializer;
    }

    public Options updateOptions(Options options) {
        boolean z;
        Extras extras = options.extras;
        Extras.Key key = ImageRequests_androidKt.bitmapConfigKey;
        if (!BitmapsKt.isHardware((Bitmap.Config) UriKt.getExtra(options, key)) || ((HardwareBitmapService) this.renderOptions).allowHardwareWorkerThread()) {
            z = false;
        } else {
            extras.getClass();
            LinkedHashMap mutableMap = MapsKt__MapsKt.toMutableMap(extras.data);
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (config != null) {
                mutableMap.put(key, config);
            } else {
                mutableMap.remove(key);
            }
            extras = new Extras(ExceptionsKt.toImmutableMap(mutableMap));
            z = true;
        }
        return z ? new Options(options.context, options.size, options.scale, options.precision, options.diskCacheKey, options.fileSystem, options.memoryCachePolicy, options.diskCachePolicy, options.networkCachePolicy, extras) : options;
    }

    public JsonSerializer untypedValueSerializer(TypeBase typeBase) {
        JsonSerializer jsonSerializer;
        synchronized (this) {
            jsonSerializer = (JsonSerializer) ((HashMap) this.svg).get(new TypeKey(typeBase));
        }
        return jsonSerializer;
    }

    @Override // coil3.target.Target
    public void onError(Image image) {
    }

    @Override // coil3.target.Target
    public void onSuccess(Image image) {
    }

    public /* synthetic */ AndroidSvg(Object obj, Object obj2) {
        this.svg = obj;
        this.renderOptions = obj2;
    }

    public AndroidSvg(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.svg = savedStateRegistryImpl;
        this.renderOptions = new AndroidSvg((Object) savedStateRegistryImpl);
    }

    public /* synthetic */ AndroidSvg(Object obj) {
        this.svg = obj;
    }

    public AndroidSvg(Processor processor, WorkManagerTaskExecutor workManagerTaskExecutor) {
        processor.getClass();
        workManagerTaskExecutor.getClass();
        this.svg = processor;
        this.renderOptions = workManagerTaskExecutor;
    }

    public AndroidSvg(FileMetadata fileMetadata, SQLiteDriver sQLiteDriver) {
        sQLiteDriver.getClass();
        this.renderOptions = fileMetadata;
        this.svg = sQLiteDriver;
    }

    public AndroidSvg(RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1) {
        this.svg = anonymousClass1;
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = new ViewBoundsCheck$BoundFlags();
        viewBoundsCheck$BoundFlags.mBoundFlags = 0;
        this.renderOptions = viewBoundsCheck$BoundFlags;
    }

    public AndroidSvg(android.view.animation.Animation animation) {
        this.svg = animation;
        this.renderOptions = null;
    }
}
