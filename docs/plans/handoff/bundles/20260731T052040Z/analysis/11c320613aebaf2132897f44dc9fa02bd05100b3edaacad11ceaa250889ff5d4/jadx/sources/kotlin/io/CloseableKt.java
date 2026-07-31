package kotlin.io;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.LaunchedEffectImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5$1;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusableChildrenComparator;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.app.ActivityRecreator;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt$collectAsStateWithLifecycle$1$1;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ChildHelper;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;
import coil3.Extras;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.util.concurrent.ListenableFuture;
import j$.nio.channels.DesugarChannels;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlow;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import okio.Options;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda3;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.downloader.Request;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.local.subscription.SubscriptionFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.streams.WebMReader;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CloseableKt {
    public static Field sDrawableCacheField;
    public static boolean sDrawableCacheFieldFetched;
    public static Field sResourcesImplField;
    public static boolean sResourcesImplFieldFetched;
    public static Class sThemedResourceCacheClazz;
    public static boolean sThemedResourceCacheClazzFetched;
    public static Field sThemedResourceCache_mUnthemedEntriesField;
    public static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;
    public final /* synthetic */ int $r8$classId = 19;

    /* JADX WARN: Removed duplicated region for block: B:101:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01e2  */
    /* renamed from: BasicText-RWo7tUw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m660BasicTextRWo7tUw(final java.lang.String r17, final androidx.compose.ui.Modifier r18, final androidx.compose.ui.text.TextStyle r19, final int r20, final boolean r21, final int r22, final int r23, androidx.compose.runtime.Composer r24, final int r25) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.m660BasicTextRWo7tUw(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, int, boolean, int, int, androidx.compose.runtime.Composer, int):void");
    }

    public static final ExecutorService access$createDefaultExecutor(final boolean z) {
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            public final AtomicInteger threadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                runnable.getClass();
                StringBuilder m = Owner.CC.m(z ? "WM.task-" : "androidx.work-");
                m.append(this.threadCount.incrementAndGet());
                return new Thread(runnable, m.toString());
            }
        });
        newFixedThreadPool.getClass();
        return newFixedThreadPool;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0076 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean backwardFocusSearch(androidx.compose.ui.focus.FocusTargetNode r7, kotlin.jvm.functions.Function1 r8) {
        /*
            androidx.compose.ui.focus.FocusStateImpl r0 = r7.getFocusState()
            int r0 = r0.ordinal()
            if (r0 == 0) goto L81
            r1 = 3
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r4) goto L35
            if (r0 == r3) goto L81
            if (r0 != r1) goto L31
            boolean r0 = pickChildForBackwardSearch(r7, r8)
            if (r0 != 0) goto L77
            androidx.compose.ui.focus.FocusPropertiesImpl r0 = r7.fetchFocusProperties$ui()
            boolean r0 = r0.canFocus
            if (r0 == 0) goto L2d
            java.lang.Object r7 = r8.invoke(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            goto L2e
        L2d:
            r7 = r2
        L2e:
            if (r7 == 0) goto L76
            goto L77
        L31:
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
            return r2
        L35:
            androidx.compose.ui.focus.FocusTargetNode r0 = okio.Options.Companion.getActiveChild(r7)
            java.lang.String r5 = "ActiveParent must have a focusedChild"
            if (r0 == 0) goto L7d
            androidx.compose.ui.focus.FocusStateImpl r6 = r0.getFocusState()
            int r6 = r6.ordinal()
            if (r6 == 0) goto L78
            if (r6 == r4) goto L55
            if (r6 == r3) goto L78
            if (r6 == r1) goto L51
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
            return r2
        L51:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L55:
            boolean r1 = backwardFocusSearch(r0, r8)
            if (r1 != 0) goto L77
            boolean r7 = m661generateAndSearchChildren4C6V_qg(r7, r0, r3, r8)
            if (r7 != 0) goto L77
            androidx.compose.ui.focus.FocusPropertiesImpl r7 = r0.fetchFocusProperties$ui()
            boolean r7 = r7.canFocus
            if (r7 == 0) goto L76
            java.lang.Object r7 = r8.invoke(r0)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L76
            goto L77
        L76:
            return r2
        L77:
            return r4
        L78:
            boolean r7 = m661generateAndSearchChildren4C6V_qg(r7, r0, r3, r8)
            return r7
        L7d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L81:
            boolean r7 = pickChildForBackwardSearch(r7, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.backwardFocusSearch(androidx.compose.ui.focus.FocusTargetNode, kotlin.jvm.functions.Function1):boolean");
    }

    public static final boolean calculateIfHorizontallyStacked(ArrayList arrayList) {
        List list;
        long j;
        if (arrayList.size() >= 2) {
            if (arrayList.size() <= 1) {
                list = EmptyList.INSTANCE;
            } else {
                ArrayList arrayList2 = new ArrayList();
                Object obj = arrayList.get(0);
                int size = arrayList.size() - 1;
                int i = 0;
                while (i < size) {
                    i++;
                    Object obj2 = arrayList.get(i);
                    SemanticsNode semanticsNode = (SemanticsNode) obj2;
                    SemanticsNode semanticsNode2 = (SemanticsNode) obj;
                    float abs = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m203getCenterF1C5BW0() >> 32)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m203getCenterF1C5BW0() >> 32)));
                    float abs2 = Math.abs(Float.intBitsToFloat((int) (semanticsNode2.getBoundsInRoot().m203getCenterF1C5BW0() & 4294967295L)) - Float.intBitsToFloat((int) (semanticsNode.getBoundsInRoot().m203getCenterF1C5BW0() & 4294967295L)));
                    arrayList2.add(new Offset((Float.floatToRawIntBits(abs) << 32) | (Float.floatToRawIntBits(abs2) & 4294967295L)));
                    obj = obj2;
                }
                list = arrayList2;
            }
            if (list.size() == 1) {
                j = ((Offset) CollectionsKt.first(list)).packedValue;
            } else {
                if (list.isEmpty()) {
                    ListUtilsKt.throwUnsupportedOperationException("Empty collection can't be reduced.");
                }
                Object first = CollectionsKt.first(list);
                int size2 = list.size() - 1;
                if (1 <= size2) {
                    int i2 = 1;
                    while (true) {
                        first = new Offset(Offset.m200plusMKHz9U(((Offset) first).packedValue, ((Offset) list.get(i2)).packedValue));
                        if (i2 == size2) {
                            break;
                        }
                        i2++;
                    }
                }
                j = ((Offset) first).packedValue;
            }
            if (Float.intBitsToFloat((int) (4294967295L & j)) >= Float.intBitsToFloat((int) (j >> 32))) {
                return false;
            }
        }
        return true;
    }

    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ResultKt.addSuppressed(th, th2);
            }
        }
    }

    public static final MutableState collectAsStateWithLifecycle(StateFlow stateFlow, Composer composer) {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) ((GapComposer) composer).consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
        Object value = stateFlow.getValue();
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        Lifecycle.State state = Lifecycle.State.STARTED;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        Object[] objArr = {stateFlow, lifecycle, state, emptyCoroutineContext};
        GapComposer gapComposer = (GapComposer) composer;
        boolean changedInstance = gapComposer.changedInstance(lifecycle) | gapComposer.changed(state.ordinal()) | gapComposer.changedInstance(emptyCoroutineContext) | gapComposer.changedInstance(stateFlow);
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changedInstance || rememberedValue == neverEqualPolicy) {
            FlowExtKt$collectAsStateWithLifecycle$1$1 flowExtKt$collectAsStateWithLifecycle$1$1 = new FlowExtKt$collectAsStateWithLifecycle$1$1(lifecycle, state, emptyCoroutineContext, stateFlow, null);
            gapComposer.updateRememberedValue(flowExtKt$collectAsStateWithLifecycle$1$1);
            rememberedValue = flowExtKt$collectAsStateWithLifecycle$1$1;
        }
        Function2 function2 = (Function2) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = Updater.mutableStateOf$default(value);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        MutableState mutableState = (MutableState) rememberedValue2;
        Object[] copyOf = Arrays.copyOf(objArr, 4);
        boolean changedInstance2 = gapComposer.changedInstance(function2);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = new SnapshotStateKt__ProduceStateKt$produceState$5$1(function2, mutableState, null);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        Function2 function22 = (Function2) rememberedValue3;
        CoroutineContext coroutineContext = gapComposer.applyCoroutineContext;
        boolean z = false;
        for (Object obj : Arrays.copyOf(copyOf, copyOf.length)) {
            z |= gapComposer.changed(obj);
        }
        Object rememberedValue4 = gapComposer.rememberedValue();
        if (!z && rememberedValue4 != neverEqualPolicy) {
            return mutableState;
        }
        gapComposer.updateRememberedValue(new LaunchedEffectImpl(coroutineContext, function22));
        return mutableState;
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException unused) {
                    }
                }
            }
            fileOutputStream.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e2) {
            e = e2;
            fileOutputStream2 = fileOutputStream;
            Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    public static final void deleteFile(File file) {
        if (file.delete()) {
            return;
        }
        ErrorReporter errorReporter = ACRA.errorReporter;
        Log.w("ACRA", "Could not delete file: " + file);
    }

    public static Serializable deserialize(String str) {
        if (str == null) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str, 0)));
            try {
                Object readObject = objectInputStream.readObject();
                if (!CoreConfiguration.class.isInstance(readObject)) {
                    objectInputStream.close();
                    return null;
                }
                Serializable serializable = (Serializable) CoreConfiguration.class.cast(readObject);
                objectInputStream.close();
                return serializable;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    closeFinally(objectInputStream, th);
                    throw th2;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void flushThemedResourcesCache(Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class cls = sThemedResourceCacheClazz;
        if (cls == null) {
            return;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        Field field = sThemedResourceCache_mUnthemedEntriesField;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public static final boolean forwardFocusSearch(FocusTargetNode focusTargetNode, Function1 function1) {
        int ordinal = focusTargetNode.getFocusState().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                FocusTargetNode activeChild = Options.Companion.getActiveChild(focusTargetNode);
                if (activeChild != null) {
                    return forwardFocusSearch(activeChild, function1) || m661generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, 1, function1);
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("ActiveParent must have a focusedChild");
                return false;
            }
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return focusTargetNode.fetchFocusProperties$ui().canFocus ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : pickChildForForwardSearch(focusTargetNode, function1);
                }
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return false;
            }
        }
        return pickChildForForwardSearch(focusTargetNode, function1);
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m661generateAndSearchChildren4C6V_qg(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i, final Function1 function1) {
        if (m662searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, function1)) {
            return true;
        }
        final FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode();
        Boolean bool = (Boolean) UStringsKt.m676searchBeyondBoundsOMvw8(focusTargetNode, i, new Function1() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                BeyondBoundsLayout$BeyondBoundsScope beyondBoundsLayout$BeyondBoundsScope = (BeyondBoundsLayout$BeyondBoundsScope) obj;
                if (FocusTargetNode.this != ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode()) {
                    return Boolean.TRUE;
                }
                boolean m662searchChildren4C6V_qg = CloseableKt.m662searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, function1);
                Boolean valueOf = Boolean.valueOf(m662searchChildren4C6V_qg);
                if (m662searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static int getColor(int i, View view) {
        Context context = view.getContext();
        Context context2 = view.getContext();
        String canonicalName = view.getClass().getCanonicalName();
        TypedValue resolve = MathKt.resolve(context2, i);
        if (resolve == null) {
            throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", canonicalName, context2.getResources().getResourceName(i)));
        }
        int i2 = resolve.resourceId;
        return i2 != 0 ? context.getColor(i2) : resolve.data;
    }

    public static Object getDone(ListenableFuture listenableFuture) {
        Object obj;
        boolean z = false;
        if (!listenableFuture.isDone()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Options.Companion.lenientFormat("Future was expected to be done: %s", listenableFuture));
            return null;
        }
        while (true) {
            try {
                obj = listenableFuture.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static final ViewParent getParentOrViewTreeDisjointParent(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }

    public static File getTempFile(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, str + i);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static final void handleUndeliverableException(Throwable th, CoroutineContext coroutineContext) {
        if (th instanceof CancellationException) {
            return;
        }
        try {
            MathKt.onError(th);
        } catch (Throwable th2) {
            ResultKt.addSuppressed(th, th2);
            JobKt.handleCoroutineException(th, coroutineContext);
        }
    }

    public static void highlightFallback(PreferenceFragmentCompat preferenceFragmentCompat, Preference preference) {
        int i;
        TypedValue typedValue = new TypedValue();
        preferenceFragmentCompat.getActivity().getTheme().resolveAttribute(android.R.attr.textColorPrimary, typedValue, true);
        TypedArray obtainStyledAttributes = preferenceFragmentCompat.getActivity().obtainStyledAttributes(typedValue.data, new int[]{android.R.attr.textColorPrimary});
        boolean z = false;
        int color = obtainStyledAttributes.getColor(0, -1754827);
        obtainStyledAttributes.recycle();
        if (preference.mIcon == null && (i = preference.mIconResId) != 0) {
            preference.mIcon = Cookie.Companion.getDrawable(preference.mContext, i);
        }
        Drawable drawable = preference.mIcon;
        boolean z2 = preference.mIconSpaceReserved;
        Drawable drawable2 = Cookie.Companion.getDrawable(preferenceFragmentCompat.requireContext(), R.drawable.ic_play_arrow);
        drawable2.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        if (preference.mIcon != drawable2) {
            preference.mIcon = drawable2;
            preference.mIconResId = 0;
            preference.notifyChanged();
        }
        ActivityRecreator.AnonymousClass1 anonymousClass1 = new ActivityRecreator.AnonymousClass1(7, preferenceFragmentCompat, preference, z);
        if (preferenceFragmentCompat.mList == null) {
            preferenceFragmentCompat.mSelectPreferenceRunnable = anonymousClass1;
        } else {
            anonymousClass1.run();
        }
        new Handler(Looper.getMainLooper()).postDelayed(new SubscriptionFragment$$ExternalSyntheticLambda9(preference, drawable, z2), 1000L);
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    public static int layer(float f, int i, int i2) {
        return ColorUtils.compositeColors(ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static MappedByteBuffer mmap(Context context, Uri uri) {
        ParcelFileDescriptor openFileDescriptor;
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", null);
        } catch (IOException unused) {
        }
        if (openFileDescriptor == null) {
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
                return null;
            }
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(fileInputStream.getChannel());
                MappedByteBuffer map = convertMaybeLegacyFileChannelFromLibrary.map(FileChannel.MapMode.READ_ONLY, 0L, convertMaybeLegacyFileChannelFromLibrary.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } finally {
            }
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, java.lang.Object[]] */
    public static final boolean pickChildForBackwardSearch(FocusTargetNode focusTargetNode, Function1 function1) {
        FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node);
        } else {
            mutableVector.add(node2);
        }
        int i = 0;
        while (true) {
            int i2 = mutableVector.size;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector.removeAt(i2 - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                int i3 = i + 1;
                                if (focusTargetNodeArr.length < i3) {
                                    int length = focusTargetNodeArr.length;
                                    ?? r10 = new Object[Math.max(i3, length * 2)];
                                    System.arraycopy(focusTargetNodeArr, 0, r10, 0, length);
                                    focusTargetNodeArr = r10;
                                }
                                focusTargetNodeArr[i] = focusTargetNode2;
                                i = i3;
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector2.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector2.add(node4);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector2);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
        Arrays.sort(focusTargetNodeArr, 0, i, FocusableChildrenComparator.INSTANCE);
        int i5 = i - 1;
        if (i5 < focusTargetNodeArr.length) {
            while (i5 >= 0) {
                FocusTargetNode focusTargetNode3 = focusTargetNodeArr[i5];
                if (Options.Companion.isEligibleForFocusSearch(focusTargetNode3) && backwardFocusSearch(focusTargetNode3, function1)) {
                    return true;
                }
                i5--;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, java.lang.Object[]] */
    public static final boolean pickChildForForwardSearch(FocusTargetNode focusTargetNode, Function1 function1) {
        FocusTargetNode[] focusTargetNodeArr = new FocusTargetNode[16];
        if (!focusTargetNode.node.isAttached) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.node;
        Modifier.Node node2 = node.child;
        if (node2 == null) {
            HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node);
        } else {
            mutableVector.add(node2);
        }
        int i = 0;
        while (true) {
            int i2 = mutableVector.size;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector.removeAt(i2 - 1);
            if ((node3.aggregateChildKindSet & 1024) == 0) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector, node3);
            } else {
                while (true) {
                    if (node3 == null) {
                        break;
                    }
                    if ((node3.kindSet & 1024) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            if (node3 instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                int i3 = i + 1;
                                if (focusTargetNodeArr.length < i3) {
                                    int length = focusTargetNodeArr.length;
                                    ?? r10 = new Object[Math.max(i3, length * 2)];
                                    System.arraycopy(focusTargetNodeArr, 0, r10, 0, length);
                                    focusTargetNodeArr = r10;
                                }
                                focusTargetNodeArr[i] = focusTargetNode2;
                                i = i3;
                            } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                    if ((node4.kindSet & 1024) != 0) {
                                        i4++;
                                        if (i4 == 1) {
                                            node3 = node4;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node3 != null) {
                                                mutableVector2.add(node3);
                                                node3 = null;
                                            }
                                            mutableVector2.add(node4);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                            node3 = HitTestResultKt.access$pop(mutableVector2);
                        }
                    } else {
                        node3 = node3.child;
                    }
                }
            }
        }
        Arrays.sort(focusTargetNodeArr, 0, i, FocusableChildrenComparator.INSTANCE);
        for (int i5 = 0; i5 < i; i5++) {
            FocusTargetNode focusTargetNode3 = focusTargetNodeArr[i5];
            if (Options.Companion.isEligibleForFocusSearch(focusTargetNode3) && forwardFocusSearch(focusTargetNode3, function1)) {
                return true;
            }
        }
        return false;
    }

    public static String pin(X509Certificate x509Certificate) {
        StringBuilder sb = new StringBuilder("sha256/");
        ByteString byteString = ByteString.EMPTY;
        byte[] encoded = x509Certificate.getPublicKey().getEncoded();
        encoded.getClass();
        int length = encoded.length;
        UStringsKt.checkOffsetAndCount(encoded.length, 0L, length);
        sb.append(new ByteString(ArraysKt.copyOfRange(encoded, 0, length)).digest$okio("SHA-256").base64());
        return sb.toString();
    }

    public static void playWithKore(Context context, Uri uri) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW").setPackage(context.getString(R.string.kore_package)).setData(uri).setFlags(268435456));
        } catch (ActivityNotFoundException unused) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setMessage(R.string.kore_not_found);
            builder.setPositiveButton(R.string.install, new ErrorActivity$$ExternalSyntheticLambda3(context, 3)).setNegativeButton(R.string.cancel, null).show();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0033, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean postCompleteDrain(long r8, org.reactivestreams.Subscriber r10, java.util.Queue r11, io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer.PublisherBufferOverlappingSubscriber r12, io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer.PublisherBufferOverlappingSubscriber r13) {
        /*
            r0 = -9223372036854775808
            long r2 = r8 & r0
        L4:
            int r4 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            r5 = 1
            if (r4 == 0) goto L27
            boolean r4 = r13.getAsBoolean()     // Catch: java.lang.Throwable -> Le
            goto L13
        Le:
            r4 = move-exception
            net.newpipe.app.AppKt.throwIfFatal(r4)
            r4 = r5
        L13:
            if (r4 == 0) goto L16
            goto L33
        L16:
            java.lang.Object r4 = r11.poll()
            if (r4 != 0) goto L20
            r10.onComplete()
            return r5
        L20:
            r10.onNext(r4)
            r4 = 1
            long r2 = r2 + r4
            goto L4
        L27:
            boolean r8 = r13.getAsBoolean()     // Catch: java.lang.Throwable -> L2c
            goto L31
        L2c:
            r8 = move-exception
            net.newpipe.app.AppKt.throwIfFatal(r8)
            r8 = r5
        L31:
            if (r8 == 0) goto L34
        L33:
            return r5
        L34:
            boolean r8 = r11.isEmpty()
            if (r8 == 0) goto L3e
            r10.onComplete()
            return r5
        L3e:
            long r8 = r12.get()
            int r4 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r4 != 0) goto L4
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            long r2 = r2 & r8
            long r2 = -r2
            long r2 = r12.addAndGet(r2)
            long r8 = r8 & r2
            r4 = 0
            int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r8 != 0) goto L5a
            r8 = 0
            return r8
        L5a:
            long r8 = r2 & r0
            r6 = r2
            r2 = r8
            r8 = r6
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.postCompleteDrain(long, org.reactivestreams.Subscriber, java.util.Queue, io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer$PublisherBufferOverlappingSubscriber, io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer$PublisherBufferOverlappingSubscriber):boolean");
    }

    public static final IntRect roundToIntRect(Rect rect) {
        return new IntRect(Math.round(rect.left), Math.round(rect.top), Math.round(rect.right), Math.round(rect.bottom));
    }

    public static final Object runBlockingUninterruptible(Function2 function2) {
        Thread.interrupted();
        return JobKt.runBlocking(EmptyCoroutineContext.INSTANCE, new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(function2, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0199 A[EDGE_INSN: B:151:0x0199->B:132:0x0199 BREAK  A[LOOP:5: B:91:0x012e->B:146:0x012e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0130  */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object, java.lang.Object[]] */
    /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m662searchChildren4C6V_qg(androidx.compose.ui.focus.FocusTargetNode r12, androidx.compose.ui.focus.FocusTargetNode r13, int r14, kotlin.jvm.functions.Function1 r15) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.CloseableKt.m662searchChildren4C6V_qg(androidx.compose.ui.focus.FocusTargetNode, androidx.compose.ui.focus.FocusTargetNode, int, kotlin.jvm.functions.Function1):boolean");
    }

    public static final void setCollectionItemInfo(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Object obj = semanticsNode.getConfig().props.get(SemanticsProperties.CollectionItemInfo);
        if (obj == null) {
            obj = null;
        }
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            return;
        }
        SemanticsNode parent = semanticsNode.getParent();
        if (parent == null) {
            return;
        }
        Object obj2 = parent.getConfig().props.get(SemanticsProperties.SelectableGroup);
        if (obj2 == null) {
            obj2 = null;
        }
        if (obj2 != null) {
            Object obj3 = parent.getConfig().props.get(SemanticsProperties.CollectionInfo);
            CollectionInfo collectionInfo = (CollectionInfo) (obj3 != null ? obj3 : null);
            if (collectionInfo == null || (collectionInfo.rowCount >= 0 && collectionInfo.columnCount >= 0)) {
                if (semanticsNode.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                    ArrayList arrayList = new ArrayList();
                    List children$ui$default = SemanticsNode.getChildren$ui$default(4, parent);
                    int size = children$ui$default.size();
                    int i = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        SemanticsNode semanticsNode2 = (SemanticsNode) children$ui$default.get(i2);
                        if (semanticsNode2.getConfig().props.containsKey(SemanticsProperties.Selected)) {
                            arrayList.add(semanticsNode2);
                            if (semanticsNode2.layoutNode.getPlaceOrder$ui() < semanticsNode.layoutNode.getPlaceOrder$ui()) {
                                i++;
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    boolean calculateIfHorizontallyStacked = calculateIfHorizontallyStacked(arrayList);
                    int i3 = calculateIfHorizontallyStacked ? 0 : i;
                    int i4 = calculateIfHorizontallyStacked ? i : 0;
                    Object obj4 = semanticsNode.getConfig().props.get(SemanticsProperties.Selected);
                    if (obj4 == null) {
                        obj4 = Boolean.FALSE;
                    }
                    accessibilityNodeInfoCompat.setCollectionItemInfo(Extras.Key.obtain(i3, 1, i4, 1, false, ((Boolean) obj4).booleanValue()));
                }
            }
        }
    }

    public static boolean shouldShowPlayWithKodi(Context context, int i) {
        return (i == ServiceList.YouTube.serviceId || i == ServiceList.SoundCloud.serviceId) && PreferenceManager.getDefaultSharedPreferences(context).getBoolean(context.getString(R.string.show_play_with_kodi_key), false);
    }

    public abstract ChildHelper execute(Request request);

    public ChildHelper get(String str, Map map, Localization localization) {
        WebMReader.Segment segment = new WebMReader.Segment();
        segment.info = "GET";
        segment.tracks = str;
        LinkedHashMap linkedHashMap = (LinkedHashMap) segment.currentCluster;
        linkedHashMap.clear();
        if (map != null) {
            linkedHashMap.putAll(map);
        }
        segment.this$0 = localization;
        return execute(new Request(segment));
    }

    public ChildHelper postWithContentTypeJson(String str, Map map, byte[] bArr, Localization localization) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        hashMap.put("Content-Type", Collections.singletonList("application/json"));
        WebMReader.Segment segment = new WebMReader.Segment();
        segment.info = "POST";
        segment.tracks = str;
        segment.ref = bArr;
        LinkedHashMap linkedHashMap = (LinkedHashMap) segment.currentCluster;
        linkedHashMap.clear();
        linkedHashMap.putAll(hashMap);
        segment.this$0 = localization;
        return execute(new Request(segment));
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 19:
                return getClass().getSimpleName();
            default:
                return super.toString();
        }
    }

    public ChildHelper get(String str, Map map) {
        return get(str, map, Utility.getPreferredLocalization());
    }

    public ChildHelper get(String str) {
        return get(str, null, Utility.getPreferredLocalization());
    }

    public ChildHelper postWithContentTypeJson(String str, Map map, byte[] bArr) {
        return postWithContentTypeJson(str, map, bArr, Utility.getPreferredLocalization());
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStream;
        try {
            inputStream = resources.openRawResource(i);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            boolean copyToFile = copyToFile(file, inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return copyToFile;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }
}
