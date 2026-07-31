package okhttp3;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Size;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Surface;
import android.view.View;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.imagecapture.AutoValue_CaptureNode_In;
import androidx.camera.core.imagecapture.CaptureNode$$ExternalSyntheticLambda3;
import androidx.camera.core.imagecapture.CaptureNode$1;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.executor.IoExecutor;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.processing.Edge;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import androidx.collection.SimpleArrayMap;
import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.ui.ZIndexNode$measure$1;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.fragment.app.FragmentStateManager;
import androidx.lifecycle.AtomicReference;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.NavigationEventProcessor;
import androidx.navigationevent.NavigationEventTransitionState$InProgress;
import androidx.navigationevent.OnBackInvokedInput;
import androidx.room.TransactionExecutor;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.viewpager2.widget.ViewPager2;
import androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.StartStopToken;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.mailstore.K9BackendFolder;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.SaveMessageDataCreator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager$1;
import com.google.android.material.snackbar.SnackbarManager$SnackbarRecord;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Provider;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.serialization.KSerializer;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteSelector;
import okio.Buffer;
import okio.Segment;
import okio.SegmentPool;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import okio.internal.DefaultSocket$SocketSink;
import okio.internal.DefaultSocket$SocketSource;
import org.apache.james.mime4j.stream.RawField;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Dispatcher implements ActionMode.Callback, VectorizedFiniteAnimationSpec, Socket {
    public static Dispatcher snackbarManager;
    public final /* synthetic */ int $r8$classId;
    public Object executorServiceOrNull;
    public Object readyAsyncCalls;
    public Object runningAsyncCalls;
    public Object runningSyncCalls;

    /* JADX WARN: Multi-variable type inference failed */
    public Dispatcher(ImageCaptureConfig imageCaptureConfig, Size size, CameraCharacteristics cameraCharacteristics, boolean z) {
        Object retrieveOption;
        int i;
        boolean z2;
        boolean z3;
        BiometricPrompt biometricPrompt;
        SessionConfig$$ExternalSyntheticLambda0 sessionConfig$$ExternalSyntheticLambda0;
        MetadataImageReader metadataImageReader;
        BiometricPrompt biometricPrompt2;
        int i2 = 4;
        this.$r8$classId = 4;
        Validate.checkMainThread();
        this.executorServiceOrNull = imageCaptureConfig;
        CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker defaultCaptureOptionsUnpacker = (CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker) imageCaptureConfig.retrieveOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, null);
        if (defaultCaptureOptionsUnpacker == null) {
            StreamSharing$$ExternalSyntheticLambda0.m(Config.CC.$default$getTargetName(imageCaptureConfig, imageCaptureConfig.toString()), "Implementation is missing option unpacker for ");
            throw null;
        }
        RawField rawField = new RawField();
        defaultCaptureOptionsUnpacker.unpack(imageCaptureConfig, rawField);
        rawField.build();
        MenuHostHelper menuHostHelper = new MenuHostHelper(6, false);
        this.readyAsyncCalls = menuHostHelper;
        Executor executor = (Executor) ((OptionsBundle) imageCaptureConfig.getConfig()).retrieveOption(IoConfig.OPTION_IO_EXECUTOR, Util.ioExecutor());
        Objects.requireNonNull(executor);
        LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(executor, cameraCharacteristics);
        this.runningAsyncCalls = anonymousClass8;
        ArrayList arrayList = new ArrayList();
        retrieveOption = imageCaptureConfig.getConfig().retrieveOption(ImageInputConfig.OPTION_SECONDARY_INPUT_FORMAT, 0);
        if (((Integer) retrieveOption).intValue() != 0) {
            arrayList.add(32);
            arrayList.add(256);
        } else {
            Integer num = (Integer) ((OptionsBundle) imageCaptureConfig.getConfig()).retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
            if (num != null) {
                i = num.intValue();
            } else {
                Integer num2 = (Integer) ((OptionsBundle) imageCaptureConfig.getConfig()).retrieveOption(ImageInputConfig.OPTION_INPUT_FORMAT, null);
                i = (num2 == null || num2.intValue() != 4101) ? (num2 == null || num2.intValue() != 32) ? 256 : 32 : 4101;
            }
            arrayList.add(Integer.valueOf(i));
        }
        int inputFormat = imageCaptureConfig.getInputFormat();
        if (((OptionsBundle) imageCaptureConfig.getConfig()).retrieveOption(ImageCaptureConfig.OPTION_IMAGE_READER_PROXY_PROVIDER, null) != null) {
            DBUtil$$ExternalSyntheticBUOutline0.m();
            throw null;
        }
        Edge edge = new Edge();
        Edge edge2 = new Edge();
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = new AutoValue_CaptureNode_In(size, inputFormat, arrayList, z, edge, edge2);
        this.runningSyncCalls = autoValue_CaptureNode_In;
        RelationUtil.checkState("CaptureNode does not support recreation yet.", ((AutoValue_CaptureNode_In) menuHostHelper.mProviderToLifecycleContainers) == null && ((RouteSelector) menuHostHelper.mOnInvalidateMenuCallback) == null);
        menuHostHelper.mProviderToLifecycleContainers = autoValue_CaptureNode_In;
        CaptureNode$1 captureNode$1 = new CaptureNode$1();
        boolean z4 = arrayList.size() > 1;
        if (z) {
            z2 = true;
            z3 = false;
            biometricPrompt = new BiometricPrompt(26, SchemaInfoUtilKt.createIsolatedReader(size.getWidth(), size.getHeight(), inputFormat, 4));
            sessionConfig$$ExternalSyntheticLambda0 = new SessionConfig$$ExternalSyntheticLambda0(menuHostHelper, 3);
            metadataImageReader = null;
        } else {
            int i3 = 2;
            if (z4) {
                z2 = true;
                z3 = false;
                MetadataImageReader metadataImageReader2 = new MetadataImageReader(size.getWidth(), size.getHeight(), 256, 4);
                Data.Companion.createComboCallback(captureNode$1, metadataImageReader2.mCameraCaptureCallback);
                metadataImageReader = new MetadataImageReader(size.getWidth(), size.getHeight(), 32, 4);
                Data.Companion.createComboCallback(captureNode$1, metadataImageReader.mCameraCaptureCallback);
                biometricPrompt2 = metadataImageReader2;
            } else {
                z2 = true;
                z3 = false;
                MetadataImageReader metadataImageReader3 = new MetadataImageReader(size.getWidth(), size.getHeight(), inputFormat, 4);
                Data.Companion.createComboCallback(captureNode$1, metadataImageReader3.mCameraCaptureCallback);
                biometricPrompt2 = metadataImageReader3;
                metadataImageReader = null;
            }
            sessionConfig$$ExternalSyntheticLambda0 = new SessionConfig$$ExternalSyntheticLambda0(menuHostHelper, i3);
            biometricPrompt = biometricPrompt2;
        }
        Surface surface = biometricPrompt.getSurface();
        Objects.requireNonNull(surface);
        RelationUtil.checkState("The surface is already set.", autoValue_CaptureNode_In.mSurface == null ? z2 : z3);
        autoValue_CaptureNode_In.mSurface = new SurfaceRequest.AnonymousClass2(surface, size, inputFormat);
        menuHostHelper.mOnInvalidateMenuCallback = new RouteSelector(biometricPrompt);
        biometricPrompt.setOnImageAvailableListener(new ZslControlImpl$$ExternalSyntheticLambda1(menuHostHelper), Util.mainThreadExecutor());
        if (z4 && metadataImageReader != null) {
            Surface surface2 = metadataImageReader.getSurface();
            RelationUtil.checkState("The secondary surface is already set.", autoValue_CaptureNode_In.mSecondarySurface == null ? z2 : z3);
            autoValue_CaptureNode_In.mSecondarySurface = new SurfaceRequest.AnonymousClass2(surface2, size, inputFormat);
            menuHostHelper.mMenuProviders = new RouteSelector(metadataImageReader);
            metadataImageReader.setOnImageAvailableListener(new ZslControlImpl$$ExternalSyntheticLambda1(menuHostHelper), Util.mainThreadExecutor());
        }
        edge.mListener = sessionConfig$$ExternalSyntheticLambda0;
        edge2.mListener = new SessionConfig$$ExternalSyntheticLambda0(menuHostHelper, i2);
    }

    public static void addHandler$default(Dispatcher dispatcher, NavigationEventHandler navigationEventHandler) {
        dispatcher.getClass();
        navigationEventHandler.getClass();
        if (((MutableOrderedScatterSet) dispatcher.runningAsyncCalls).add(navigationEventHandler)) {
            NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
            navigationEventProcessor.getClass();
            if (navigationEventHandler.dispatcher != null) {
                DBUtil$$ExternalSyntheticBUOutline0.m(navigationEventHandler, "' is already registered with a dispatcher", "Handler '");
                return;
            }
            navigationEventProcessor.defaultHandlers.addFirst(navigationEventHandler);
            navigationEventHandler.dispatcher = dispatcher;
            navigationEventProcessor.refreshEnabledHandlers();
        }
    }

    public static Dispatcher getInstance() {
        if (snackbarManager == null) {
            snackbarManager = new Dispatcher(23);
        }
        return snackbarManager;
    }

    public static void promoteAndExecute$default(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall.AsyncCall asyncCall2, int i) {
        LocalFolder.AnonymousClass9 anonymousClass9;
        if ((i & 1) != 0) {
            asyncCall = null;
        }
        if ((i & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        boolean isShutdown = ((ThreadPoolExecutor) dispatcher.executorService()).isShutdown();
        synchronized (dispatcher) {
            if (asyncCall2 != null) {
                try {
                    asyncCall2.callsPerHost.decrementAndGet();
                    if (!((ArrayDeque) dispatcher.runningAsyncCalls).remove(asyncCall2)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall != null) {
                ((ArrayDeque) dispatcher.readyAsyncCalls).add(asyncCall);
                RealCall.AsyncCall findExistingCallWithHost = dispatcher.findExistingCallWithHost(RealCall.this.originalRequest.url.host);
                if (findExistingCallWithHost != null) {
                    asyncCall.callsPerHost = findExistingCallWithHost.callsPerHost;
                }
            }
            if (asyncCall2 != null && (isShutdown || ((ArrayDeque) dispatcher.runningAsyncCalls).isEmpty())) {
                ((ArrayDeque) dispatcher.runningSyncCalls).isEmpty();
            }
            if (isShutdown) {
                List list = CollectionsKt.toList((ArrayDeque) dispatcher.readyAsyncCalls);
                ((ArrayDeque) dispatcher.readyAsyncCalls).clear();
                anonymousClass9 = new LocalFolder.AnonymousClass9(list);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ArrayDeque) dispatcher.readyAsyncCalls).iterator();
                it.getClass();
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall3 = (RealCall.AsyncCall) it.next();
                    if (((ArrayDeque) dispatcher.runningAsyncCalls).size() >= 64) {
                        break;
                    }
                    if (asyncCall3.callsPerHost.get() < 5) {
                        it.remove();
                        asyncCall3.callsPerHost.incrementAndGet();
                        arrayList.add(asyncCall3);
                        ((ArrayDeque) dispatcher.runningAsyncCalls).add(asyncCall3);
                    }
                }
                anonymousClass9 = new LocalFolder.AnonymousClass9(arrayList);
            }
        }
        int size = anonymousClass9.val$messages.size();
        for (int i2 = 0; i2 < size; i2++) {
            RealCall.AsyncCall asyncCall4 = (RealCall.AsyncCall) anonymousClass9.val$messages.get(i2);
            if (asyncCall4 != asyncCall) {
                RealCall realCall = RealCall.this;
            }
            if (isShutdown) {
                asyncCall4.getClass();
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(null);
                RealCall realCall2 = RealCall.this;
                realCall2.noMoreExchanges$okhttp(interruptedIOException);
                asyncCall4.responseCallback.onFailure(realCall2, interruptedIOException);
            } else {
                ExecutorService executorService = dispatcher.executorService();
                asyncCall4.getClass();
                RealCall realCall3 = RealCall.this;
                realCall3.client.dispatcher.getClass();
                try {
                    try {
                        ((ThreadPoolExecutor) executorService).execute(asyncCall4);
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall3.client.dispatcher;
                        dispatcher2.getClass();
                        promoteAndExecute$default(dispatcher2, null, asyncCall4, 3);
                        throw th2;
                    }
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException2 = new InterruptedIOException("executor rejected");
                    interruptedIOException2.initCause(e);
                    RealCall realCall4 = RealCall.this;
                    realCall4.noMoreExchanges$okhttp(interruptedIOException2);
                    asyncCall4.responseCallback.onFailure(realCall4, interruptedIOException2);
                    Dispatcher dispatcher3 = realCall3.client.dispatcher;
                    dispatcher3.getClass();
                    promoteAndExecute$default(dispatcher3, null, asyncCall4, 3);
                }
            }
        }
    }

    public void addFragment(Fragment fragment) {
        if (((ArrayList) this.executorServiceOrNull).contains(fragment)) {
            Regex$$ExternalSyntheticBUOutline0.m$1(fragment, "Fragment already added: ");
            return;
        }
        synchronized (((ArrayList) this.executorServiceOrNull)) {
            ((ArrayList) this.executorServiceOrNull).add(fragment);
        }
        fragment.mAdded = true;
    }

    public void addInput(OnBackInvokedInput onBackInvokedInput, int i) {
        if (i != 1 && i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("Unsupported priority value: ", i));
        } else if (((MutableOrderedScatterSet) this.runningSyncCalls).add(onBackInvokedInput)) {
            ((NavigationEventProcessor) this.readyAsyncCalls).addInput(this, onBackInvokedInput, i);
        }
    }

    public void addQuery(String str, String str2) {
        this.runningSyncCalls = ((String) this.runningSyncCalls) + (((String) this.runningSyncCalls).length() == 0 ? "?" : "&") + str + '=' + str2;
    }

    public void cancel(StartStopToken startStopToken) {
        Runnable runnable;
        startStopToken.getClass();
        synchronized (this.runningAsyncCalls) {
            runnable = (Runnable) ((LinkedHashMap) this.runningSyncCalls).remove(startStopToken);
        }
        if (runnable != null) {
            ((Handler) ((Configuration.Builder) this.executorServiceOrNull).workerFactory).removeCallbacks(runnable);
        }
    }

    public boolean cancelSnackbarLocked(SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord, int i) {
        BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = (BaseTransientBottomBar.AnonymousClass5) snackbarManager$SnackbarRecord.callback.get();
        if (anonymousClass5 == null) {
            return false;
        }
        ((Handler) this.readyAsyncCalls).removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
        Handler handler = BaseTransientBottomBar.handler;
        handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        return true;
    }

    public void close() {
        SurfaceRequest.AnonymousClass2 anonymousClass2;
        Validate.checkMainThread();
        MenuHostHelper menuHostHelper = (MenuHostHelper) this.readyAsyncCalls;
        menuHostHelper.getClass();
        Validate.checkMainThread();
        AutoValue_CaptureNode_In autoValue_CaptureNode_In = (AutoValue_CaptureNode_In) menuHostHelper.mProviderToLifecycleContainers;
        Objects.requireNonNull(autoValue_CaptureNode_In);
        RouteSelector routeSelector = (RouteSelector) menuHostHelper.mOnInvalidateMenuCallback;
        Objects.requireNonNull(routeSelector);
        RouteSelector routeSelector2 = (RouteSelector) menuHostHelper.mMenuProviders;
        SurfaceRequest.AnonymousClass2 anonymousClass22 = autoValue_CaptureNode_In.mSurface;
        Objects.requireNonNull(anonymousClass22);
        anonymousClass22.close();
        SurfaceRequest.AnonymousClass2 anonymousClass23 = autoValue_CaptureNode_In.mSurface;
        Objects.requireNonNull(anonymousClass23);
        Futures.nonCancellationPropagating(anonymousClass23.mTerminationFuture).addListener(new CaptureNode$$ExternalSyntheticLambda3(routeSelector, 0), Util.mainThreadExecutor());
        SurfaceRequest.AnonymousClass2 anonymousClass24 = autoValue_CaptureNode_In.mPostviewSurface;
        if (anonymousClass24 != null) {
            anonymousClass24.close();
            Futures.nonCancellationPropagating(autoValue_CaptureNode_In.mPostviewSurface.mTerminationFuture).addListener(new CaptureNode$$ExternalSyntheticLambda3(null, 3), Util.mainThreadExecutor());
        }
        if (autoValue_CaptureNode_In.outputFormats.size() > 1 && (anonymousClass2 = autoValue_CaptureNode_In.mSecondarySurface) != null) {
            anonymousClass2.close();
            Futures.nonCancellationPropagating(autoValue_CaptureNode_In.mSecondarySurface.mTerminationFuture).addListener(new CaptureNode$$ExternalSyntheticLambda3(routeSelector2, 4), Util.mainThreadExecutor());
        }
        ((LocalFolder.AnonymousClass8) this.runningAsyncCalls).getClass();
    }

    public void dfs(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            DBUtil$$ExternalSyntheticBUOutline0.m("This graph contains cyclic dependencies");
            return;
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((SimpleArrayMap) this.readyAsyncCalls).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                dfs(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public void dispatchOnStarted$navigationevent(NavigationEventInput navigationEventInput, NavigationEvent navigationEvent) {
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) this.readyAsyncCalls;
        navigationEventProcessor.getClass();
        if (navigationEventProcessor.inProgressDirection != 0) {
            return;
        }
        NavigationEventHandler resolveEnabledHandler = navigationEventProcessor.resolveEnabledHandler(-1);
        navigationEventProcessor.inProgressHandler = resolveEnabledHandler;
        navigationEventProcessor.inProgressDirection = -1;
        navigationEventProcessor.inProgressInput = navigationEventInput;
        if (navigationEvent != null) {
            if (resolveEnabledHandler != null) {
                resolveEnabledHandler.onBackStarted(navigationEvent);
            }
            StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
            NavigationEventTransitionState$InProgress navigationEventTransitionState$InProgress = new NavigationEventTransitionState$InProgress(navigationEvent);
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, navigationEventTransitionState$InProgress);
        }
    }

    public void dispatchToView(PointerEvent pointerEvent, boolean z) {
        PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) this.runningSyncCalls;
        List list = pointerEvent.changes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((PointerInputChange) list.get(i)).isConsumed()) {
                stopDispatching(pointerEvent);
                return;
            }
        }
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) this.executorServiceOrNull;
        if (layoutCoordinates == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("layoutCoordinates not set");
            return;
        }
        PointerId.m566toMotionEventScopeubNVwUQ(pointerEvent, layoutCoordinates.mo579localToRootMKHz9U(0L), new ZIndexNode$measure$1(4, this, pointerInteropFilter), false);
        if (((PointerInteropFilter.DispatchToViewState) this.readyAsyncCalls) == PointerInteropFilter.DispatchToViewState.Dispatching) {
            if (z) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((PointerInputChange) list.get(i2)).consume();
                }
            }
            LocalFolder.AnonymousClass12 anonymousClass12 = pointerEvent.internalPointerEvent;
            if (anonymousClass12 != null) {
                anonymousClass12.val$value = !pointerInteropFilter.disallowIntercept;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        if (r7 == r2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        if (r7 == r2) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doRun(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.runningSyncCalls
            androidx.datastore.core.DataStoreImpl r0 = (androidx.datastore.core.DataStoreImpl) r0
            boolean r1 = r7 instanceof androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
            if (r1 == 0) goto L17
            r1 = r7
            androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r1 = (androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.label = r2
            goto L1c
        L17:
            androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r1 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
            r1.<init>(r6, r7)
        L1c:
            java.lang.Object r7 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5b
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r3
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L68
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.runningAsyncCalls
            java.util.List r7 = (java.util.List) r7
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 == 0) goto L5e
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L49
            goto L5e
        L49:
            androidx.datastore.core.SingleProcessCoordinator r7 = r0.getCoordinator()
            androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1 r5 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1
            r5.<init>(r0, r6, r3)
            r1.label = r4
            java.lang.Object r7 = r7.lock(r5, r1)
            if (r7 != r2) goto L5b
            goto L67
        L5b:
            androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
            goto L6a
        L5e:
            r1.label = r5
            r6 = 0
            java.lang.Object r7 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r0, r6, r1)
            if (r7 != r2) goto L68
        L67:
            return r2
        L68:
            androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
        L6a:
            androidx.room.ObservedTableVersions r6 = r0.inMemoryCache
            r6.tryUpdate(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Dispatcher.doRun(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public synchronized ExecutorService executorService() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (((ThreadPoolExecutor) this.executorServiceOrNull) == null) {
                this.executorServiceOrNull = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new _UtilJvmKt$$ExternalSyntheticLambda1(_UtilJvmKt.okHttpName + " Dispatcher", false));
            }
            threadPoolExecutor = (ThreadPoolExecutor) this.executorServiceOrNull;
            threadPoolExecutor.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    public Fragment findActiveFragment(String str) {
        FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) this.readyAsyncCalls).get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.mFragment;
        }
        return null;
    }

    public RealCall.AsyncCall findExistingCallWithHost(String str) {
        Iterator it = ((ArrayDeque) this.runningAsyncCalls).iterator();
        it.getClass();
        while (it.hasNext()) {
            RealCall.AsyncCall asyncCall = (RealCall.AsyncCall) it.next();
            if (Intrinsics.areEqual(RealCall.this.originalRequest.url.host, str)) {
                return asyncCall;
            }
        }
        Iterator it2 = ((ArrayDeque) this.readyAsyncCalls).iterator();
        it2.getClass();
        while (it2.hasNext()) {
            RealCall.AsyncCall asyncCall2 = (RealCall.AsyncCall) it2.next();
            if (Intrinsics.areEqual(RealCall.this.originalRequest.url.host, str)) {
                return asyncCall2;
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.readyAsyncCalls).values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.mFragment;
                if (!str.equals(fragment.mWho)) {
                    fragment = fragment.mChildFragmentManager.mFragmentStore.findFragmentByWho(str);
                }
                if (fragment != null) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public SupportActionModeWrapper getActionModeWrapper(ActionMode actionMode) {
        ArrayList arrayList = (ArrayList) this.runningAsyncCalls;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            SupportActionModeWrapper supportActionModeWrapper = (SupportActionModeWrapper) arrayList.get(i);
            if (supportActionModeWrapper != null && supportActionModeWrapper.mWrappedObject == actionMode) {
                return supportActionModeWrapper;
            }
        }
        SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper((Context) this.readyAsyncCalls, actionMode);
        arrayList.add(supportActionModeWrapper2);
        return supportActionModeWrapper2;
    }

    public ArrayList getActiveFragmentStateManagers() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.readyAsyncCalls).values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    public ArrayList getActiveFragments() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.readyAsyncCalls).values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.mFragment);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int size$animation_core = animationVector.getSize$animation_core();
        long j = 0;
        for (int i = 0; i < size$animation_core; i++) {
            j = Math.max(j, ((PreviewView.AnonymousClass1) this.executorServiceOrNull).get(i).getDurationNanos(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
        }
        return j;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (((AnimationVector) this.runningSyncCalls) == null) {
            this.runningSyncCalls = animationVector3.newVector$animation_core();
        }
        AnimationVector animationVector4 = (AnimationVector) this.runningSyncCalls;
        if (animationVector4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
            throw null;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.runningSyncCalls;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
                throw null;
            }
            animationVector5.set$animation_core(i, ((PreviewView.AnonymousClass1) this.executorServiceOrNull).get(i).getEndVelocity(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
        }
    }

    public K9BackendFolder getFolder(String str) {
        str.getClass();
        return new K9BackendFolder((ListenableMessageStore) this.executorServiceOrNull, (SaveMessageDataCreator) this.runningAsyncCalls, str);
    }

    public List getFragments() {
        ArrayList arrayList;
        if (((ArrayList) this.executorServiceOrNull).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.executorServiceOrNull)) {
            arrayList = new ArrayList((ArrayList) this.executorServiceOrNull);
        }
        return arrayList;
    }

    @Override // okio.Socket
    public Sink getSink() {
        return (DefaultSocket$SocketSink) this.runningSyncCalls;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (DefaultSocket$SocketSource) this.runningAsyncCalls;
    }

    public AnimationVector getTargetValue(AnimationVector animationVector, AnimationVector animationVector2) {
        Dispatcher dispatcher = this;
        if (((AnimationVector) dispatcher.runningSyncCalls) == null) {
            dispatcher.runningSyncCalls = animationVector.newVector$animation_core();
        }
        AnimationVector animationVector3 = (AnimationVector) dispatcher.runningSyncCalls;
        if (animationVector3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("targetVector");
            throw null;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector4 = (AnimationVector) dispatcher.runningSyncCalls;
            if (i >= size$animation_core) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.throwUninitializedPropertyAccessException("targetVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("targetVector");
                throw null;
            }
            PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) dispatcher.executorServiceOrNull;
            float f = animationVector.get$animation_core(i);
            float f2 = animationVector2.get$animation_core(i);
            FlingCalculator flingCalculator = (FlingCalculator) anonymousClass1.this$0;
            double splineDeceleration = flingCalculator.getSplineDeceleration(f2);
            double d = FlingCalculatorKt.DecelerationRate;
            float f3 = flingCalculator.friction * flingCalculator.magicPhysicalCoefficient;
            animationVector4.set$animation_core(i, (Math.signum(f2) * ((float) (Math.exp((d / (d - 1.0d)) * splineDeceleration) * f3))) + f);
            i++;
            dispatcher = this;
            size$animation_core = size$animation_core;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (((AnimationVector) this.readyAsyncCalls) == null) {
            this.readyAsyncCalls = animationVector.newVector$animation_core();
        }
        AnimationVector animationVector4 = (AnimationVector) this.readyAsyncCalls;
        if (animationVector4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("valueVector");
            throw null;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.readyAsyncCalls;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            animationVector5.set$animation_core(i, ((PreviewView.AnonymousClass1) this.executorServiceOrNull).get(i).getValueFromNanos(j, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
        }
    }

    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2) {
        if (((AnimationVector) this.runningAsyncCalls) == null) {
            this.runningAsyncCalls = animationVector.newVector$animation_core();
        }
        AnimationVector animationVector3 = (AnimationVector) this.runningAsyncCalls;
        if (animationVector3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            throw null;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector4 = (AnimationVector) this.runningAsyncCalls;
            if (i >= size$animation_core) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) this.executorServiceOrNull;
            animationVector.getClass();
            long j2 = j / 1000000;
            FlingCalculator.FlingInfo flingInfo = ((FlingCalculator) anonymousClass1.this$0).flingInfo(animationVector2.get$animation_core(i));
            long j3 = flingInfo.duration;
            animationVector4.set$animation_core(i, (((Math.signum(flingInfo.initialVelocity) * AndroidFlingSpline.flingPosition(j3 > 0 ? j2 / j3 : 1.0f).velocityCoefficient) * flingInfo.distance) / j3) * 1000.0f);
            i++;
        }
    }

    public ViewModel getViewModel$lifecycle_viewmodel(String str, ClassReference classReference) {
        ViewModel viewModel;
        ViewModel create;
        synchronized (((SynchronizedObject) this.runningSyncCalls)) {
            try {
                ViewModelStore viewModelStore = (ViewModelStore) this.executorServiceOrNull;
                viewModelStore.getClass();
                viewModel = (ViewModel) viewModelStore.map.get(str);
                if (classReference.isInstance(viewModel)) {
                    ViewModelProvider$Factory viewModelProvider$Factory = (ViewModelProvider$Factory) this.readyAsyncCalls;
                    if (viewModelProvider$Factory instanceof SavedStateViewModelFactory) {
                        SavedStateViewModelFactory savedStateViewModelFactory = (SavedStateViewModelFactory) viewModelProvider$Factory;
                        viewModel.getClass();
                        Lifecycle lifecycle = savedStateViewModelFactory.lifecycle;
                        if (lifecycle != null) {
                            Base64Util base64Util = savedStateViewModelFactory.savedStateRegistry;
                            base64Util.getClass();
                            ViewModelKt.attachHandleIfNeeded(viewModel, base64Util, lifecycle);
                        }
                    }
                    viewModel.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras((CreationExtras) this.runningAsyncCalls);
                    mutableCreationExtras.extras.put(AtomicReference.VIEW_MODEL_KEY, str);
                    ViewModelProvider$Factory viewModelProvider$Factory2 = (ViewModelProvider$Factory) this.readyAsyncCalls;
                    viewModelProvider$Factory2.getClass();
                    try {
                        try {
                            create = viewModelProvider$Factory2.create(classReference, mutableCreationExtras);
                        } catch (AbstractMethodError unused) {
                            create = viewModelProvider$Factory2.create(Handshake.Companion.getJavaClass(classReference), mutableCreationExtras);
                        }
                    } catch (AbstractMethodError unused2) {
                        create = viewModelProvider$Factory2.create(Handshake.Companion.getJavaClass(classReference));
                    }
                    viewModel = create;
                    ViewModelStore viewModelStore2 = (ViewModelStore) this.executorServiceOrNull;
                    viewModelStore2.getClass();
                    viewModel.getClass();
                    ViewModel viewModel2 = (ViewModel) viewModelStore2.map.put(str, viewModel);
                    if (viewModel2 != null) {
                        viewModel2.clear$lifecycle_viewmodel();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return viewModel;
    }

    public boolean isCurrentSnackbarLocked(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.runningAsyncCalls;
        return (snackbarManager$SnackbarRecord == null || anonymousClass5 == null || snackbarManager$SnackbarRecord.callback.get() != anonymousClass5) ? false : true;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean isInfinite() {
        return false;
    }

    public void makeActive(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.mFragment;
        String str = fragment.mWho;
        HashMap hashMap = (HashMap) this.readyAsyncCalls;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(fragment.mWho, fragmentStateManager);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            boolean z = fragment.mRetainInstance;
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) this.runningSyncCalls;
            if (z) {
                fragmentManagerViewModel.addRetainedFragment(fragment);
            } else {
                fragmentManagerViewModel.removeRetainedFragment(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public void makeInactive(FragmentStateManager fragmentStateManager) {
        HashMap hashMap = (HashMap) this.readyAsyncCalls;
        Fragment fragment = fragmentStateManager.mFragment;
        if (fragment.mRetainInstance) {
            ((FragmentManagerViewModel) this.runningSyncCalls).removeRetainedFragment(fragment);
        }
        if (hashMap.get(fragment.mWho) == fragmentStateManager && ((FragmentStateManager) hashMap.put(fragment.mWho, null)) != null && FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return ((ActionMode.Callback) this.executorServiceOrNull).onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS((Context) this.readyAsyncCalls, (SupportMenuItem) menuItem));
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onCreateActionMode(androidx.appcompat.view.ActionMode actionMode, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.executorServiceOrNull;
        SupportActionModeWrapper actionModeWrapper = getActionModeWrapper(actionMode);
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.runningSyncCalls;
        Menu menu2 = (Menu) simpleArrayMap.get(menu);
        if (menu2 == null) {
            menu2 = new MenuWrapperICS((Context) this.readyAsyncCalls, (MenuBuilder) menu);
            simpleArrayMap.put(menu, menu2);
        }
        return callback.onCreateActionMode(actionModeWrapper, menu2);
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public void onDestroyActionMode(androidx.appcompat.view.ActionMode actionMode) {
        ((ActionMode.Callback) this.executorServiceOrNull).onDestroyActionMode(getActionModeWrapper(actionMode));
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onPrepareActionMode(androidx.appcompat.view.ActionMode actionMode, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.executorServiceOrNull;
        SupportActionModeWrapper actionModeWrapper = getActionModeWrapper(actionMode);
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.runningSyncCalls;
        Menu menu2 = (Menu) simpleArrayMap.get(menu);
        if (menu2 == null) {
            menu2 = new MenuWrapperICS((Context) this.readyAsyncCalls, (MenuBuilder) menu);
            simpleArrayMap.put(menu, menu2);
        }
        return callback.onPrepareActionMode(actionModeWrapper, menu2);
    }

    public void pauseTimeout(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        synchronized (this.executorServiceOrNull) {
            try {
                if (isCurrentSnackbarLocked(anonymousClass5)) {
                    SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.runningAsyncCalls;
                    if (!snackbarManager$SnackbarRecord.paused) {
                        snackbarManager$SnackbarRecord.paused = true;
                        ((Handler) this.readyAsyncCalls).removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void restoreTimeoutIfPaused(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        synchronized (this.executorServiceOrNull) {
            try {
                if (isCurrentSnackbarLocked(anonymousClass5)) {
                    SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.runningAsyncCalls;
                    if (snackbarManager$SnackbarRecord.paused) {
                        snackbarManager$SnackbarRecord.paused = false;
                        scheduleTimeoutLocked(snackbarManager$SnackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0058, code lost:
    
        if (r10.lock(r1) == r7) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065 A[Catch: all -> 0x0078, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0078, blocks: (B:25:0x005b, B:29:0x0065), top: B:24:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r9v0, types: [okhttp3.Dispatcher] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object runIfNeeded(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.readyAsyncCalls
            kotlinx.coroutines.CompletableDeferredImpl r0 = (kotlinx.coroutines.CompletableDeferredImpl) r0
            boolean r1 = r10 instanceof androidx.datastore.core.RunOnce$runIfNeeded$1
            if (r1 == 0) goto L17
            r1 = r10
            androidx.datastore.core.RunOnce$runIfNeeded$1 r1 = (androidx.datastore.core.RunOnce$runIfNeeded$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.label = r2
            goto L1c
        L17:
            androidx.datastore.core.RunOnce$runIfNeeded$1 r1 = new androidx.datastore.core.RunOnce$runIfNeeded$1
            r1.<init>(r9, r10)
        L1c:
            java.lang.Object r10 = r1.result
            int r2 = r1.label
            r3 = 2
            r4 = 1
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            r6 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L42
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r9 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L33
            goto L71
        L33:
            r10 = move-exception
            goto L7c
        L35:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r6
        L3b:
            kotlinx.coroutines.sync.Mutex r2 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r2
            goto L5b
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r10 = r0.isCompleted()
            if (r10 == 0) goto L4c
            return r5
        L4c:
            java.lang.Object r10 = r9.executorServiceOrNull
            kotlinx.coroutines.sync.MutexImpl r10 = (kotlinx.coroutines.sync.MutexImpl) r10
            r1.L$0 = r10
            r1.label = r4
            java.lang.Object r2 = r10.lock(r1)
            if (r2 != r7) goto L5b
            goto L6f
        L5b:
            boolean r2 = r0.isCompleted()     // Catch: java.lang.Throwable -> L78
            if (r2 == 0) goto L65
            r10.unlock(r6)
            return r5
        L65:
            r1.L$0 = r10     // Catch: java.lang.Throwable -> L78
            r1.label = r3     // Catch: java.lang.Throwable -> L78
            java.lang.Object r9 = r9.doRun(r1)     // Catch: java.lang.Throwable -> L78
            if (r9 != r7) goto L70
        L6f:
            return r7
        L70:
            r9 = r10
        L71:
            r0.makeCompleting$kotlinx_coroutines_core(r5)     // Catch: java.lang.Throwable -> L33
            r9.unlock(r6)
            return r5
        L78:
            r9 = move-exception
            r8 = r10
            r10 = r9
            r9 = r8
        L7c:
            r9.unlock(r6)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Dispatcher.runIfNeeded(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void scheduleTimeoutLocked(SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord) {
        Handler handler = (Handler) this.readyAsyncCalls;
        int i = snackbarManager$SnackbarRecord.duration;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        handler.removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
        handler.sendMessageDelayed(Message.obtain(handler, 0, snackbarManager$SnackbarRecord), i);
    }

    public Bundle setSavedState(String str, Bundle bundle) {
        HashMap hashMap = (HashMap) this.runningAsyncCalls;
        return bundle != null ? (Bundle) hashMap.put(str, bundle) : (Bundle) hashMap.remove(str);
    }

    public void showNextSnackbarLocked() {
        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.runningSyncCalls;
        if (snackbarManager$SnackbarRecord != null) {
            this.runningAsyncCalls = snackbarManager$SnackbarRecord;
            this.runningSyncCalls = null;
            BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = (BaseTransientBottomBar.AnonymousClass5) snackbarManager$SnackbarRecord.callback.get();
            if (anonymousClass5 == null) {
                this.runningAsyncCalls = null;
            } else {
                Handler handler = BaseTransientBottomBar.handler;
                handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
            }
        }
    }

    public void stopDispatching(PointerEvent pointerEvent) {
        if (((PointerInteropFilter.DispatchToViewState) this.readyAsyncCalls) == PointerInteropFilter.DispatchToViewState.Dispatching) {
            LayoutCoordinates layoutCoordinates = (LayoutCoordinates) this.executorServiceOrNull;
            if (layoutCoordinates == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("layoutCoordinates not set");
                return;
            } else {
                PointerId.m566toMotionEventScopeubNVwUQ(pointerEvent, layoutCoordinates.mo579localToRootMKHz9U(0L), new NodeChainKt$fillVector$1(11, (PointerInteropFilter) this.runningSyncCalls), true);
            }
        }
        this.readyAsyncCalls = PointerInteropFilter.DispatchToViewState.NotDispatching;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 26:
                String socket = ((java.net.Socket) this.executorServiceOrNull).toString();
                socket.getClass();
                return socket;
            default:
                return super.toString();
        }
    }

    public void track(StartStopToken startStopToken) {
        startStopToken.getClass();
        Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = new Processor$$ExternalSyntheticLambda2(5, this, startStopToken);
        synchronized (this.runningAsyncCalls) {
        }
        ((Handler) ((Configuration.Builder) this.executorServiceOrNull).workerFactory).postDelayed(processor$$ExternalSyntheticLambda2, 5400000L);
    }

    public void updatePageAccessibilityActions() {
        int itemCount;
        ViewPager2$PageAwareAccessibilityProvider$1 viewPager2$PageAwareAccessibilityProvider$1 = (ViewPager2$PageAwareAccessibilityProvider$1) this.readyAsyncCalls;
        ViewPager2$PageAwareAccessibilityProvider$1 viewPager2$PageAwareAccessibilityProvider$12 = (ViewPager2$PageAwareAccessibilityProvider$1) this.executorServiceOrNull;
        ViewPager2 viewPager2 = (ViewPager2) this.runningSyncCalls;
        int i = R.id.accessibilityActionPageLeft;
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageLeft);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageRight);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageUp);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageDown);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        if (viewPager2.getAdapter() == null || (itemCount = viewPager2.getAdapter().getItemCount()) == 0 || !viewPager2.mUserInputEnabled) {
            return;
        }
        if (viewPager2.getOrientation() != 0) {
            if (viewPager2.mCurrentItem < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat((String) null, R.id.accessibilityActionPageDown), viewPager2$PageAwareAccessibilityProvider$12);
            }
            if (viewPager2.mCurrentItem > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat((String) null, R.id.accessibilityActionPageUp), viewPager2$PageAwareAccessibilityProvider$1);
                return;
            }
            return;
        }
        boolean isRtl = viewPager2.isRtl();
        int i2 = isRtl ? 16908360 : 16908361;
        if (isRtl) {
            i = 16908361;
        }
        if (viewPager2.mCurrentItem < itemCount - 1) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat((String) null, i2), viewPager2$PageAwareAccessibilityProvider$12);
        }
        if (viewPager2.mCurrentItem > 0) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat((String) null, i), viewPager2$PageAwareAccessibilityProvider$1);
        }
    }

    public void addInput(NavigationEventInput navigationEventInput) {
        if (((MutableOrderedScatterSet) this.runningSyncCalls).add(navigationEventInput)) {
            ((NavigationEventProcessor) this.readyAsyncCalls).addInput(this, navigationEventInput, -1);
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (((AnimationVector) this.runningAsyncCalls) == null) {
            this.runningAsyncCalls = animationVector3.newVector$animation_core();
        }
        AnimationVector animationVector4 = (AnimationVector) this.runningAsyncCalls;
        if (animationVector4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
            throw null;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.runningAsyncCalls;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            animationVector5.set$animation_core(i, ((PreviewView.AnonymousClass1) this.executorServiceOrNull).get(i).getVelocityFromNanos(j, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
        }
    }

    public Dispatcher(Configuration.Builder builder, Base64Util base64Util) {
        this.$r8$classId = 19;
        builder.getClass();
        this.executorServiceOrNull = builder;
        this.readyAsyncCalls = base64Util;
        this.runningAsyncCalls = new Object();
        this.runningSyncCalls = new LinkedHashMap();
    }

    public /* synthetic */ Dispatcher(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.executorServiceOrNull = obj;
        this.readyAsyncCalls = obj2;
        this.runningAsyncCalls = obj3;
        this.runningSyncCalls = obj4;
    }

    public Dispatcher(CoroutineScope coroutineScope, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, K9KoinModuleKt$$ExternalSyntheticLambda2 k9KoinModuleKt$$ExternalSyntheticLambda2, BlockRunner$maybeRun$1 blockRunner$maybeRun$1) {
        this.$r8$classId = 11;
        this.executorServiceOrNull = coroutineScope;
        this.readyAsyncCalls = blockRunner$maybeRun$1;
        this.runningAsyncCalls = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, null, 6);
        this.runningSyncCalls = new Fragment.AnonymousClass7(12);
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job != null) {
            job.invokeOnCompletion(new SimpleActor$$ExternalSyntheticLambda0(diskLruCache$$ExternalSyntheticLambda0, this, k9KoinModuleKt$$ExternalSyntheticLambda2, 0));
        }
    }

    public Dispatcher(ViewModelStore viewModelStore, ViewModelProvider$Factory viewModelProvider$Factory, CreationExtras creationExtras) {
        this.$r8$classId = 14;
        viewModelStore.getClass();
        viewModelProvider$Factory.getClass();
        creationExtras.getClass();
        this.executorServiceOrNull = viewModelStore;
        this.readyAsyncCalls = viewModelProvider$Factory;
        this.runningAsyncCalls = creationExtras;
        this.runningSyncCalls = new SynchronizedObject();
    }

    public Dispatcher(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 5:
                break;
            case 9:
                this.executorServiceOrNull = new Pools$SimplePool(10);
                this.readyAsyncCalls = new SimpleArrayMap(0);
                this.runningAsyncCalls = new ArrayList();
                this.runningSyncCalls = new HashSet();
                break;
            case 13:
                this.executorServiceOrNull = new ArrayList();
                this.readyAsyncCalls = new HashMap();
                this.runningAsyncCalls = new HashMap();
                break;
            case 17:
                this.executorServiceOrNull = new ArrayMap(0);
                this.readyAsyncCalls = new SparseArray();
                this.runningAsyncCalls = new LongSparseArray((Object) null);
                this.runningSyncCalls = new ArrayMap(0);
                break;
            case 23:
                this.executorServiceOrNull = new Object();
                this.readyAsyncCalls = new Handler(Looper.getMainLooper(), new SnackbarManager$1(0, this));
                break;
            default:
                this.readyAsyncCalls = new ArrayDeque();
                this.runningAsyncCalls = new ArrayDeque();
                this.runningSyncCalls = new ArrayDeque();
                break;
        }
    }

    public Dispatcher(java.net.Socket socket) {
        this.$r8$classId = 26;
        this.executorServiceOrNull = socket;
        this.readyAsyncCalls = new AtomicInteger();
        this.runningAsyncCalls = new Source() { // from class: okio.internal.DefaultSocket$SocketSource
            public final InputStream inputStream;
            public final SocketAsyncTimeout timeout;

            {
                java.net.Socket socket2 = (java.net.Socket) Dispatcher.this.executorServiceOrNull;
                this.inputStream = socket2.getInputStream();
                this.timeout = new SocketAsyncTimeout(socket2);
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                int i;
                Dispatcher dispatcher = Dispatcher.this;
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.enter();
                try {
                    AtomicInteger atomicInteger = (AtomicInteger) dispatcher.readyAsyncCalls;
                    java.net.Socket socket2 = (java.net.Socket) dispatcher.executorServiceOrNull;
                    atomicInteger.getClass();
                    while (true) {
                        int i2 = atomicInteger.get();
                        if ((i2 & 2) != 0) {
                            i = 0;
                            break;
                        }
                        int i3 = i2 | 2;
                        if (atomicInteger.compareAndSet(i2, i3)) {
                            i = i3;
                            break;
                        }
                    }
                    if (i != 0) {
                        if (i == 3) {
                            socket2.close();
                        } else {
                            if (socket2.isClosed() || socket2.isInputShutdown()) {
                                return;
                            }
                            try {
                                socket2.shutdownInput();
                            } catch (UnsupportedOperationException unused) {
                                this.inputStream.close();
                            }
                        }
                        if (socketAsyncTimeout.exit()) {
                            throw socketAsyncTimeout.newTimeoutException(null);
                        }
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout.exit()) {
                        throw e;
                    }
                    throw socketAsyncTimeout.newTimeoutException(e);
                } finally {
                    socketAsyncTimeout.exit();
                }
            }

            @Override // okio.Source
            public final long read(Buffer buffer, long j) {
                buffer.getClass();
                if (j == 0) {
                    return 0L;
                }
                if (j < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(j, "byteCount < 0: "));
                    return 0L;
                }
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.throwIfReached();
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                int min = (int) Math.min(j, 8192 - writableSegment$okio.limit);
                try {
                    socketAsyncTimeout.enter();
                    try {
                        int read = this.inputStream.read(writableSegment$okio.data, writableSegment$okio.limit, min);
                        if (socketAsyncTimeout.exit()) {
                            throw socketAsyncTimeout.newTimeoutException(null);
                        }
                        if (read != -1) {
                            writableSegment$okio.limit += read;
                            long j2 = read;
                            buffer.size += j2;
                            return j2;
                        }
                        if (writableSegment$okio.pos != writableSegment$okio.limit) {
                            return -1L;
                        }
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                        return -1L;
                    } catch (IOException e) {
                        if (socketAsyncTimeout.exit()) {
                            throw socketAsyncTimeout.newTimeoutException(e);
                        }
                        throw e;
                    } finally {
                        socketAsyncTimeout.exit();
                    }
                } catch (AssertionError e2) {
                    if (_JavaIoKt.isAndroidGetsocknameError(e2)) {
                        throw new IOException(e2);
                    }
                    throw e2;
                }
            }

            @Override // okio.Source
            public final Timeout timeout() {
                return this.timeout;
            }

            public final String toString() {
                return "source(" + ((java.net.Socket) Dispatcher.this.executorServiceOrNull) + ')';
            }
        };
        this.runningSyncCalls = new Sink() { // from class: okio.internal.DefaultSocket$SocketSink
            public final OutputStream outputStream;
            public final SocketAsyncTimeout timeout;

            {
                java.net.Socket socket2 = (java.net.Socket) Dispatcher.this.executorServiceOrNull;
                this.outputStream = socket2.getOutputStream();
                this.timeout = new SocketAsyncTimeout(socket2);
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                int i;
                OutputStream outputStream = this.outputStream;
                Dispatcher dispatcher = Dispatcher.this;
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.enter();
                try {
                    AtomicInteger atomicInteger = (AtomicInteger) dispatcher.readyAsyncCalls;
                    java.net.Socket socket2 = (java.net.Socket) dispatcher.executorServiceOrNull;
                    atomicInteger.getClass();
                    while (true) {
                        int i2 = atomicInteger.get();
                        if ((i2 & 1) != 0) {
                            i = 0;
                            break;
                        }
                        int i3 = i2 | 1;
                        if (atomicInteger.compareAndSet(i2, i3)) {
                            i = i3;
                            break;
                        }
                    }
                    if (i != 0) {
                        if (i != 3) {
                            if (!socket2.isClosed() && !socket2.isOutputShutdown()) {
                                outputStream.flush();
                                try {
                                    socket2.shutdownOutput();
                                } catch (UnsupportedOperationException unused) {
                                    outputStream.close();
                                }
                            }
                            return;
                        }
                        socket2.close();
                        if (socketAsyncTimeout.exit()) {
                            throw socketAsyncTimeout.newTimeoutException(null);
                        }
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout.exit()) {
                        throw e;
                    }
                    throw socketAsyncTimeout.newTimeoutException(e);
                } finally {
                    socketAsyncTimeout.exit();
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public final void flush() {
                SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                socketAsyncTimeout.enter();
                try {
                    this.outputStream.flush();
                    if (socketAsyncTimeout.exit()) {
                        throw socketAsyncTimeout.newTimeoutException(null);
                    }
                } catch (IOException e) {
                    if (!socketAsyncTimeout.exit()) {
                        throw e;
                    }
                    throw socketAsyncTimeout.newTimeoutException(e);
                } finally {
                    socketAsyncTimeout.exit();
                }
            }

            @Override // okio.Sink
            public final Timeout timeout() {
                return this.timeout;
            }

            public final String toString() {
                return "sink(" + ((java.net.Socket) Dispatcher.this.executorServiceOrNull) + ')';
            }

            @Override // okio.Sink
            public final void write(Buffer buffer, long j) {
                buffer.getClass();
                AtomicFU.checkOffsetAndCount(buffer.size, 0L, j);
                while (j > 0) {
                    SocketAsyncTimeout socketAsyncTimeout = this.timeout;
                    socketAsyncTimeout.throwIfReached();
                    Segment segment = buffer.head;
                    segment.getClass();
                    int min = (int) Math.min(j, segment.limit - segment.pos);
                    socketAsyncTimeout.enter();
                    try {
                        try {
                            this.outputStream.write(segment.data, segment.pos, min);
                            if (socketAsyncTimeout.exit()) {
                                throw socketAsyncTimeout.newTimeoutException(null);
                            }
                            int i = segment.pos + min;
                            segment.pos = i;
                            long j2 = min;
                            j -= j2;
                            buffer.size -= j2;
                            if (i == segment.limit) {
                                buffer.head = segment.pop();
                                SegmentPool.recycle(segment);
                            }
                        } catch (IOException e) {
                            if (!socketAsyncTimeout.exit()) {
                                throw e;
                            }
                            throw socketAsyncTimeout.newTimeoutException(e);
                        }
                    } catch (Throwable th) {
                        socketAsyncTimeout.exit();
                        throw th;
                    }
                }
            }
        };
    }

    public Dispatcher(KSerializer kSerializer) {
        this.$r8$classId = 15;
        this.runningAsyncCalls = "";
        this.runningSyncCalls = "";
        this.executorServiceOrNull = kSerializer;
        this.readyAsyncCalls = kSerializer.getDescriptor().getSerialName();
    }

    public Dispatcher(PointerInteropFilter pointerInteropFilter) {
        this.$r8$classId = 8;
        this.runningSyncCalls = pointerInteropFilter;
        this.readyAsyncCalls = PointerInteropFilter.DispatchToViewState.Unknown;
    }

    public Dispatcher(ExecutorService executorService) {
        this.$r8$classId = 20;
        this.runningAsyncCalls = new Handler(Looper.getMainLooper());
        this.runningSyncCalls = new IoExecutor(this);
        TransactionExecutor transactionExecutor = new TransactionExecutor(executorService, 1);
        this.executorServiceOrNull = transactionExecutor;
        this.readyAsyncCalls = JobKt.from(transactionExecutor);
    }

    public Dispatcher(OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        this.$r8$classId = 16;
        this.executorServiceOrNull = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        this.readyAsyncCalls = new NavigationEventProcessor();
        OrderedScatterSetKt.mutableOrderedScatterSetOf();
        this.runningAsyncCalls = OrderedScatterSetKt.mutableOrderedScatterSetOf();
        this.runningSyncCalls = OrderedScatterSetKt.mutableOrderedScatterSetOf();
    }

    public Dispatcher(String str, KSerializer kSerializer) {
        this.$r8$classId = 15;
        str.getClass();
        this.runningAsyncCalls = "";
        this.runningSyncCalls = "";
        this.executorServiceOrNull = kSerializer;
        this.readyAsyncCalls = str;
    }

    public Dispatcher(Context context) {
        this.$r8$classId = 25;
        this.executorServiceOrNull = new WeakReference(context);
        this.readyAsyncCalls = new java.util.concurrent.atomic.AtomicReference();
        this.runningAsyncCalls = new CountDownLatch(1);
    }

    public Dispatcher(CameraRepository cameraRepository, CameraCoordinatorAdapter cameraCoordinatorAdapter, CameraUseCaseAdapter cameraUseCaseAdapter, CardView.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 3;
        cameraRepository.getClass();
        cameraCoordinatorAdapter.getClass();
        cameraUseCaseAdapter.getClass();
        anonymousClass1.getClass();
        this.executorServiceOrNull = cameraRepository;
        this.readyAsyncCalls = cameraCoordinatorAdapter;
        this.runningAsyncCalls = cameraUseCaseAdapter;
        this.runningSyncCalls = anonymousClass1;
    }

    public Dispatcher(Typeface typeface, MetadataList metadataList) {
        int i;
        int i2;
        int i3;
        int i4;
        this.$r8$classId = 12;
        this.runningSyncCalls = typeface;
        this.executorServiceOrNull = metadataList;
        this.runningAsyncCalls = new MetadataRepo$Node(1024);
        int __offset = metadataList.__offset(6);
        if (__offset != 0) {
            int i5 = __offset + metadataList.bb_pos;
            i = ((ByteBuffer) metadataList.bb).getInt(((ByteBuffer) metadataList.bb).getInt(i5) + i5);
        } else {
            i = 0;
        }
        this.readyAsyncCalls = new char[i * 2];
        int __offset2 = metadataList.__offset(6);
        if (__offset2 != 0) {
            int i6 = __offset2 + metadataList.bb_pos;
            i2 = ((ByteBuffer) metadataList.bb).getInt(((ByteBuffer) metadataList.bb).getInt(i6) + i6);
        } else {
            i2 = 0;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            TypefaceEmojiRasterizer typefaceEmojiRasterizer = new TypefaceEmojiRasterizer(this, i7);
            MetadataItem metadataItem = typefaceEmojiRasterizer.getMetadataItem();
            int __offset3 = metadataItem.__offset(4);
            Character.toChars(__offset3 != 0 ? ((ByteBuffer) metadataItem.bb).getInt(__offset3 + metadataItem.bb_pos) : 0, (char[]) this.readyAsyncCalls, i7 * 2);
            MetadataItem metadataItem2 = typefaceEmojiRasterizer.getMetadataItem();
            int __offset4 = metadataItem2.__offset(16);
            if (__offset4 != 0) {
                int i8 = __offset4 + metadataItem2.bb_pos;
                i3 = ((ByteBuffer) metadataItem2.bb).getInt(((ByteBuffer) metadataItem2.bb).getInt(i8) + i8);
            } else {
                i3 = 0;
            }
            RelationUtil.checkArgument("invalid metadata codepoint length", i3 > 0);
            MetadataRepo$Node metadataRepo$Node = (MetadataRepo$Node) this.runningAsyncCalls;
            MetadataItem metadataItem3 = typefaceEmojiRasterizer.getMetadataItem();
            int __offset5 = metadataItem3.__offset(16);
            if (__offset5 != 0) {
                int i9 = __offset5 + metadataItem3.bb_pos;
                i4 = ((ByteBuffer) metadataItem3.bb).getInt(((ByteBuffer) metadataItem3.bb).getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            metadataRepo$Node.put(typefaceEmojiRasterizer, 0, i4 - 1);
        }
    }

    public /* synthetic */ Dispatcher(int i, Object obj) {
        this.$r8$classId = i;
        this.executorServiceOrNull = obj;
    }

    public Dispatcher(Provider provider, Threads threads, Job job) {
        this.$r8$classId = 2;
        provider.getClass();
        threads.getClass();
        job.getClass();
        this.executorServiceOrNull = provider;
        this.readyAsyncCalls = threads;
        this.runningAsyncCalls = job;
        this.runningSyncCalls = FlowKt.callbackFlow(new RippleNode$onAttach$1(this, (Continuation) null, 5));
    }

    public Dispatcher(Context context, ActionMode.Callback callback) {
        this.$r8$classId = 1;
        this.readyAsyncCalls = context;
        this.executorServiceOrNull = callback;
        this.runningAsyncCalls = new ArrayList();
        this.runningSyncCalls = new SimpleArrayMap(0);
    }

    public Dispatcher(DataStoreImpl dataStoreImpl, List list) {
        this.$r8$classId = 10;
        this.runningSyncCalls = dataStoreImpl;
        this.executorServiceOrNull = new MutexImpl();
        this.readyAsyncCalls = new CompletableDeferredImpl();
        this.runningAsyncCalls = CollectionsKt.toList(list);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Dispatcher(FloatAnimationSpec floatAnimationSpec) {
        this(6, new PreviewView.AnonymousClass1(8, floatAnimationSpec));
        this.$r8$classId = 6;
    }

    public Dispatcher(ViewPager2 viewPager2) {
        this.$r8$classId = 18;
        this.runningSyncCalls = viewPager2;
        final int i = 0;
        this.executorServiceOrNull = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1
            public final /* synthetic */ Dispatcher this$1;

            {
                this.this$1 = this;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view) {
                int i2 = i;
                Dispatcher dispatcher = this.this$1;
                switch (i2) {
                    case 0:
                        int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                        ViewPager2 viewPager22 = (ViewPager2) dispatcher.runningSyncCalls;
                        if (viewPager22.mUserInputEnabled) {
                            viewPager22.setCurrentItemInternal(currentItem, true);
                            break;
                        }
                        break;
                    default:
                        int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                        ViewPager2 viewPager23 = (ViewPager2) dispatcher.runningSyncCalls;
                        if (viewPager23.mUserInputEnabled) {
                            viewPager23.setCurrentItemInternal(currentItem2, true);
                            break;
                        }
                        break;
                }
                return true;
            }
        };
        final int i2 = 1;
        this.readyAsyncCalls = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1
            public final /* synthetic */ Dispatcher this$1;

            {
                this.this$1 = this;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view) {
                int i22 = i2;
                Dispatcher dispatcher = this.this$1;
                switch (i22) {
                    case 0:
                        int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                        ViewPager2 viewPager22 = (ViewPager2) dispatcher.runningSyncCalls;
                        if (viewPager22.mUserInputEnabled) {
                            viewPager22.setCurrentItemInternal(currentItem, true);
                            break;
                        }
                        break;
                    default:
                        int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                        ViewPager2 viewPager23 = (ViewPager2) dispatcher.runningSyncCalls;
                        if (viewPager23.mUserInputEnabled) {
                            viewPager23.setCurrentItemInternal(currentItem2, true);
                            break;
                        }
                        break;
                }
                return true;
            }
        };
    }
}
