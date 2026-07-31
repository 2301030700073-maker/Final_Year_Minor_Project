package okhttp3;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.ui.Modifier;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.core.util.Pools$SimplePool;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
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
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.navigationevent.OnBackInvokedInput;
import androidx.room.TransactionExecutor;
import androidx.room.util.DBUtil;
import androidx.savedstate.SavedStateRegistry;
import androidx.viewbinding.ViewBinding;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1;
import coil3.ComponentRegistry;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.RealImageLoaderKt$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.util.UtilsKt;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager$SnackbarRecord;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonBuilder;
import io.noties.markwon.BlockHandlerDef;
import io.noties.markwon.MarkwonVisitor$NodeVisitor;
import io.noties.markwon.RenderPropsImpl;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.core.factory.CodeSpanFactory;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeMap;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybePeek;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Result;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda2;
import okhttp3.internal.connection.RealCall;
import okio.Buffer;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import okio.internal.DefaultSocket$SocketSink;
import okio.internal.DefaultSocket$SocketSource;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.data.CrashReportData;
import org.acra.sender.ReportSenderException;
import org.commonmark.node.Node;
import org.json.JSONException;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl;
import org.schabi.newpipe.database.playlist.dao.PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Dispatcher implements VectorizedFiniteAnimationSpec, SingleObserver, Socket, ViewBinding {
    public static Dispatcher snackbarManager;
    public final /* synthetic */ int $r8$classId;
    public Object executorServiceOrNull;
    public Object readyAsyncCalls;
    public Object runningAsyncCalls;
    public Object runningSyncCalls;

    public Dispatcher(Typeface typeface, MetadataList metadataList) {
        int i;
        int i2;
        int i3;
        int i4;
        this.$r8$classId = 5;
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
            if (!(i3 > 0)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("invalid metadata codepoint length");
                throw null;
            }
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

    public static void addHandler$default(Dispatcher dispatcher, NavigationEventHandler navigationEventHandler) {
        dispatcher.getClass();
        navigationEventHandler.getClass();
        if (((LinkedHashSet) dispatcher.runningAsyncCalls).add(navigationEventHandler)) {
            NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) dispatcher.readyAsyncCalls;
            navigationEventProcessor.getClass();
            if (navigationEventHandler.dispatcher != null) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m$1(navigationEventHandler, "' is already registered with a dispatcher", "Handler '");
                return;
            }
            navigationEventProcessor.defaultHandlers.addFirst(navigationEventHandler);
            navigationEventHandler.dispatcher = dispatcher;
            navigationEventProcessor.refreshEnabledHandlers();
        }
    }

    public static Dispatcher bind(View view) {
        int i = R.id.playlist_ctrl_play_all_button;
        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.playlist_ctrl_play_all_button, view);
        if (linearLayout != null) {
            i = R.id.playlist_ctrl_play_bg_button;
            LinearLayout linearLayout2 = (LinearLayout) Options.Companion.findChildViewById(R.id.playlist_ctrl_play_bg_button, view);
            if (linearLayout2 != null) {
                i = R.id.playlist_ctrl_play_popup_button;
                LinearLayout linearLayout3 = (LinearLayout) Options.Companion.findChildViewById(R.id.playlist_ctrl_play_popup_button, view);
                if (linearLayout3 != null) {
                    return new Dispatcher((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, 17);
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static Dispatcher getInstance() {
        if (snackbarManager == null) {
            snackbarManager = new Dispatcher(12);
        }
        return snackbarManager;
    }

    public static String getSignature(PackageInfo packageInfo) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length == 1) {
            signatureArr.getClass();
            byte[] byteArray = signatureArr[0].toByteArray();
            byteArray.getClass();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
                messageDigest.getClass();
                messageDigest.update(byteArray);
                byte[] digest = messageDigest.digest();
                digest.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append((CharSequence) "");
                int i = 0;
                for (byte b : digest) {
                    i++;
                    if (i > 1) {
                        sb.append((CharSequence) ":");
                    }
                    sb.append((CharSequence) String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1)));
                }
                sb.append((CharSequence) "");
                return sb.toString();
            } catch (NoSuchAlgorithmException e) {
                Log.e("PackageValidator", "No such algorithm: " + e);
                DecodeUtils$$ExternalSyntheticBUOutline0.m("Could not find SHA256 hash algorithm", e);
            }
        }
        return null;
    }

    public static void promoteAndExecute$default(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2, int i) {
        ConnectionPool connectionPool;
        if ((i & 1) != 0) {
            asyncCall = null;
        }
        if ((i & 2) != 0) {
            realCall = null;
        }
        if ((i & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        boolean isShutdown = ((ThreadPoolExecutor) dispatcher.executorService()).isShutdown();
        synchronized (dispatcher) {
            if (realCall != null) {
                try {
                    if (!((ArrayDeque) dispatcher.runningSyncCalls).remove(realCall)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall2 != null) {
                asyncCall2.callsPerHost.decrementAndGet();
                if (!((ArrayDeque) dispatcher.runningAsyncCalls).remove(asyncCall2)) {
                    throw new IllegalStateException("Call wasn't in-flight!");
                }
            }
            if (asyncCall != null) {
                ((ArrayDeque) dispatcher.readyAsyncCalls).add(asyncCall);
                RealCall.AsyncCall findExistingCallWithHost = dispatcher.findExistingCallWithHost(RealCall.this.originalRequest.url.host);
                if (findExistingCallWithHost != null) {
                    asyncCall.callsPerHost = findExistingCallWithHost.callsPerHost;
                }
            }
            if ((realCall != null || asyncCall2 != null) && (isShutdown || ((ArrayDeque) dispatcher.runningAsyncCalls).isEmpty())) {
                ((ArrayDeque) dispatcher.runningSyncCalls).isEmpty();
            }
            int i2 = 19;
            if (isShutdown) {
                List list = CollectionsKt.toList((ArrayDeque) dispatcher.readyAsyncCalls);
                ((ArrayDeque) dispatcher.readyAsyncCalls).clear();
                connectionPool = new ConnectionPool(list, i2);
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
                connectionPool = new ConnectionPool(arrayList, i2);
            }
        }
        int size = ((List) connectionPool.delegate).size();
        boolean z = true;
        for (int i3 = 0; i3 < size; i3++) {
            RealCall.AsyncCall asyncCall4 = (RealCall.AsyncCall) ((List) connectionPool.delegate).get(i3);
            if (asyncCall4 == asyncCall) {
                z = false;
            } else {
                RealCall.this.eventListener.getClass();
            }
            if (isShutdown) {
                asyncCall4.getClass();
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(null);
                RealCall.this.noMoreExchanges$okhttp(interruptedIOException);
                asyncCall4.responseCallback.$cont.resumeWith(new Result.Failure(interruptedIOException));
            } else {
                ExecutorService executorService = dispatcher.executorService();
                asyncCall4.getClass();
                RealCall realCall2 = RealCall.this;
                realCall2.client.dispatcher.getClass();
                try {
                    try {
                        ((ThreadPoolExecutor) executorService).execute(asyncCall4);
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall2.client.dispatcher;
                        dispatcher2.getClass();
                        promoteAndExecute$default(dispatcher2, null, null, asyncCall4, 3);
                        throw th2;
                    }
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException2 = new InterruptedIOException("executor rejected");
                    interruptedIOException2.initCause(e);
                    RealCall.this.noMoreExchanges$okhttp(interruptedIOException2);
                    asyncCall4.responseCallback.$cont.resumeWith(new Result.Failure(interruptedIOException2));
                    Dispatcher dispatcher3 = realCall2.client.dispatcher;
                    dispatcher3.getClass();
                    promoteAndExecute$default(dispatcher3, null, null, asyncCall4, 3);
                }
            }
        }
        if (!z || asyncCall == null) {
            return;
        }
        RealCall.this.eventListener.getClass();
    }

    public void addInput(OnBackInvokedInput onBackInvokedInput, int i) {
        if (i != 1 && i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m(i, "Unsupported priority value: "));
        } else if (((LinkedHashSet) this.runningSyncCalls).add(onBackInvokedInput)) {
            ((NavigationEventProcessor) this.readyAsyncCalls).addInput(this, onBackInvokedInput, i);
        }
    }

    public void blockEnd(Node node) {
        if (((Node) node.next) != null) {
            ensureNewLine();
            ((SpannableBuilder) this.runningAsyncCalls).append('\n');
        }
    }

    public RealImageLoader build() {
        Context context;
        ComponentRegistry componentRegistry;
        Context context2 = (Context) this.executorServiceOrNull;
        ImageRequest.Defaults defaults = (ImageRequest.Defaults) this.readyAsyncCalls;
        Extras.Builder builder = (Extras.Builder) this.runningSyncCalls;
        builder.getClass();
        ImageRequest.Defaults defaults2 = new ImageRequest.Defaults(defaults.fileSystem, defaults.interceptorCoroutineContext, defaults.fetcherCoroutineContext, defaults.decoderCoroutineContext, defaults.memoryCachePolicy, defaults.diskCachePolicy, defaults.networkCachePolicy, defaults.placeholderFactory, defaults.errorFactory, defaults.fallbackFactory, defaults.sizeResolver, defaults.scale, defaults.precision, new Extras(UtilsKt.toImmutableMap(builder.data)));
        SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new RealImageLoaderKt$$ExternalSyntheticLambda0(1));
        SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(this, 22));
        SynchronizedLazyImpl synchronizedLazyImpl3 = new SynchronizedLazyImpl(new RealImageLoaderKt$$ExternalSyntheticLambda0(2));
        ComponentRegistry componentRegistry2 = (ComponentRegistry) this.runningAsyncCalls;
        if (componentRegistry2 == null) {
            EmptyList emptyList = EmptyList.INSTANCE;
            context = context2;
            componentRegistry = new ComponentRegistry(emptyList, emptyList, emptyList, emptyList, emptyList);
        } else {
            context = context2;
            componentRegistry = componentRegistry2;
        }
        return new RealImageLoader(new RealImageLoader.Options(context, defaults2, synchronizedLazyImpl, synchronizedLazyImpl2, synchronizedLazyImpl3, componentRegistry));
    }

    public void cancel(StartStopToken startStopToken) {
        Runnable runnable;
        startStopToken.getClass();
        synchronized (this.runningAsyncCalls) {
            runnable = (Runnable) ((LinkedHashMap) this.runningSyncCalls).remove(startStopToken);
        }
        if (runnable != null) {
            ((Handler) ((MemoryCacheService) this.executorServiceOrNull).imageLoader).removeCallbacks(runnable);
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

    public void dfs(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            Node$$ExternalSyntheticBUOutline0.m811m("This graph contains cyclic dependencies");
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
                resolveEnabledHandler.transitionState = new NavigationEventTransitionState.InProgress(navigationEvent, -1);
                resolveEnabledHandler.onBackStarted(navigationEvent);
            }
            StateFlowImpl stateFlowImpl = navigationEventProcessor._transitionState;
            NavigationEventTransitionState.InProgress inProgress = new NavigationEventTransitionState.InProgress(navigationEvent, -1);
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, inProgress);
        }
    }

    public boolean distribute(File file) {
        ErrorReporter errorReporter = ACRA.errorReporter;
        Log.i("ACRA", "Sending report " + file);
        try {
            sendCrashReport(new CrashReportData(Cookie.Companion.readText$default(file)));
            CloseableKt.deleteFile(file);
            return true;
        } catch (IOException e) {
            ErrorReporter errorReporter2 = ACRA.errorReporter;
            Log.e("ACRA", "Failed to send crash reports for " + file, e);
            CloseableKt.deleteFile(file);
            return false;
        } catch (RuntimeException e2) {
            ErrorReporter errorReporter3 = ACRA.errorReporter;
            Log.e("ACRA", "Failed to send crash reports for " + file, e2);
            CloseableKt.deleteFile(file);
            return false;
        } catch (ReportSenderException e3) {
            ErrorReporter errorReporter4 = ACRA.errorReporter;
            Log.e("ACRA", "Failed to send crash reports for " + file, e3);
            return false;
        } catch (JSONException e4) {
            ErrorReporter errorReporter5 = ACRA.errorReporter;
            Log.e("ACRA", "Failed to send crash reports for " + file, e4);
            CloseableKt.deleteFile(file);
            return false;
        }
    }

    public void ensureNewLine() {
        SpannableBuilder spannableBuilder = (SpannableBuilder) this.runningAsyncCalls;
        StringBuilder sb = spannableBuilder.builder;
        if (sb.length() <= 0 || '\n' == sb.charAt(sb.length() - 1)) {
            return;
        }
        spannableBuilder.append('\n');
    }

    public synchronized ExecutorService executorService() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (((ThreadPoolExecutor) this.executorServiceOrNull) == null) {
                this.executorServiceOrNull = new ThreadPoolExecutor(0, com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new _UtilJvmKt$$ExternalSyntheticLambda2(_UtilJvmKt.okHttpName + " Dispatcher", false));
            }
            threadPoolExecutor = (ThreadPoolExecutor) this.executorServiceOrNull;
            threadPoolExecutor.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
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

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int size$animation_core = animationVector.getSize$animation_core();
        long j = 0;
        for (int i = 0; i < size$animation_core; i++) {
            j = Math.max(j, ((PopupMenu$1) this.executorServiceOrNull).get(i).getDurationNanos(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
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
            animationVector5.set$animation_core(((PopupMenu$1) this.executorServiceOrNull).get(i).getEndVelocity(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)), i);
            i++;
        }
    }

    public boolean getIsPlaylistThumbnailPermanent(long j) {
        return ((PlaylistEntity) ((List) ((PlaylistDAO_Impl) this.runningAsyncCalls).getPlaylist(j).blockingFirst()).get(0)).isThumbnailPermanent;
    }

    public FlowableSubscribeOn getPlaylistStreams(long j) {
        PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) this.runningSyncCalls;
        return Cookie.Companion.createFlowable(playlistStreamDAO_Impl.__db, true, new String[]{"streams", "playlist_stream_join", "stream_state"}, new PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1(j, playlistStreamDAO_Impl, 0)).subscribeOn(Schedulers.IO);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        switch (this.$r8$classId) {
        }
        return (LinearLayout) this.executorServiceOrNull;
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
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) dispatcher.executorServiceOrNull;
            float f = animationVector.get$animation_core(i);
            float f2 = animationVector2.get$animation_core(i);
            FlingCalculator flingCalculator = (FlingCalculator) popupMenu$1.this$0;
            double splineDeceleration = flingCalculator.getSplineDeceleration(f2);
            double d = FlingCalculatorKt.DecelerationRate;
            float f3 = flingCalculator.friction * flingCalculator.magicPhysicalCoefficient;
            animationVector4.set$animation_core((Math.signum(f2) * ((float) (Math.exp((d / (d - 1.0d)) * splineDeceleration) * f3))) + f, i);
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
            animationVector5.set$animation_core(((PopupMenu$1) this.executorServiceOrNull).get(i).getValueFromNanos(j, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)), i);
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
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) this.executorServiceOrNull;
            animationVector.getClass();
            long j2 = j / 1000000;
            FlingCalculator.FlingInfo flingInfo = ((FlingCalculator) popupMenu$1.this$0).flingInfo(animationVector2.get$animation_core(i));
            long j3 = flingInfo.duration;
            animationVector4.set$animation_core((((Math.signum(flingInfo.initialVelocity) * AndroidFlingSpline.flingPosition(j3 > 0 ? j2 / j3 : 1.0f).velocityCoefficient) * flingInfo.distance) / j3) * 1000.0f, i);
            i++;
        }
    }

    public ViewModel getViewModel$lifecycle_viewmodel(String str, ClassReference classReference) {
        ViewModel viewModel;
        ViewModel create;
        synchronized (((SynchronizedObject) this.runningSyncCalls)) {
            try {
                viewModel = (ViewModel) ((ViewModelStore) this.executorServiceOrNull).map.get(str);
                if (classReference.isInstance(viewModel)) {
                    ViewModelProvider$Factory viewModelProvider$Factory = (ViewModelProvider$Factory) this.readyAsyncCalls;
                    if (viewModelProvider$Factory instanceof SavedStateViewModelFactory) {
                        SavedStateViewModelFactory savedStateViewModelFactory = (SavedStateViewModelFactory) viewModelProvider$Factory;
                        viewModel.getClass();
                        Lifecycle lifecycle = savedStateViewModelFactory.lifecycle;
                        if (lifecycle != null) {
                            SavedStateRegistry savedStateRegistry = savedStateViewModelFactory.savedStateRegistry;
                            savedStateRegistry.getClass();
                            ViewModelKt.attachHandleIfNeeded(viewModel, savedStateRegistry, lifecycle);
                        }
                    }
                    viewModel.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras((CreationExtras) this.runningAsyncCalls);
                    mutableCreationExtras.extras.put(ViewModelKt.VIEW_MODEL_KEY, str);
                    ViewModelProvider$Factory viewModelProvider$Factory2 = (ViewModelProvider$Factory) this.readyAsyncCalls;
                    viewModelProvider$Factory2.getClass();
                    try {
                        try {
                            create = viewModelProvider$Factory2.create(classReference, mutableCreationExtras);
                        } catch (AbstractMethodError unused) {
                            create = viewModelProvider$Factory2.create(OperationKt.getJavaClass(classReference));
                        }
                    } catch (AbstractMethodError unused2) {
                        create = viewModelProvider$Factory2.create(OperationKt.getJavaClass(classReference), mutableCreationExtras);
                    }
                    viewModel = create;
                    ViewModelStore viewModelStore = (ViewModelStore) this.executorServiceOrNull;
                    viewModelStore.getClass();
                    viewModel.getClass();
                    ViewModel viewModel2 = (ViewModel) viewModelStore.map.put(str, viewModel);
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

    public List insertJoinEntities(List list, int i, long j) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(new PlaylistStreamEntity(j, ((Long) list.get(i2)).longValue(), i2 + i));
        }
        PlaylistStreamDAO_Impl playlistStreamDAO_Impl = (PlaylistStreamDAO_Impl) this.runningSyncCalls;
        return (List) DBUtil.performBlocking(playlistStreamDAO_Impl.__db, false, true, new WorkTagDao_Impl$$ExternalSyntheticLambda1(playlistStreamDAO_Impl, arrayList, 12));
    }

    public boolean isCurrentSnackbarLocked(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.runningAsyncCalls;
        return (snackbarManager$SnackbarRecord == null || anonymousClass5 == null || snackbarManager$SnackbarRecord.callback.get() != anonymousClass5) ? false : true;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean isInfinite() {
        return false;
    }

    public int length() {
        return ((SpannableBuilder) this.runningAsyncCalls).builder.length();
    }

    public MaybeObserveOn modifyPlaylist(long j, final long j2, final String str, final boolean z) {
        return new MaybeMap(new MaybePeek(new FlowableElementAtMaybe(((PlaylistDAO_Impl) this.runningAsyncCalls).getPlaylist(j)), new FeedViewModel$$ExternalSyntheticLambda0(17), 1), new Function() { // from class: org.schabi.newpipe.local.playlist.LocalPlaylistManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.rxjava3.functions.Function
            public final Object apply(Object obj) {
                int i = 0;
                PlaylistEntity playlistEntity = (PlaylistEntity) ((List) obj).get(0);
                String str2 = str;
                if (str2 != null) {
                    playlistEntity.name = str2;
                }
                long j3 = j2;
                if (j3 != -2) {
                    playlistEntity.thumbnailStreamId = j3;
                    playlistEntity.isThumbnailPermanent = z;
                }
                PlaylistDAO_Impl playlistDAO_Impl = (PlaylistDAO_Impl) Dispatcher.this.runningAsyncCalls;
                playlistDAO_Impl.getClass();
                playlistEntity.getClass();
                return Integer.valueOf(((Number) DBUtil.performBlocking(playlistDAO_Impl.__db, false, true, new PlaylistDAO_Impl$$ExternalSyntheticLambda2(playlistDAO_Impl, playlistEntity, i))).intValue());
            }
        }, 0).subscribeOn(Schedulers.IO);
    }

    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return ((ActionMode.Callback) this.executorServiceOrNull).onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS((Context) this.readyAsyncCalls, (SupportMenuItem) menuItem));
    }

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

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        CompositeDisposable compositeDisposable = (CompositeDisposable) this.executorServiceOrNull;
        if (!((AtomicBoolean) this.runningAsyncCalls).compareAndSet(false, true)) {
            MathKt.onError(th);
            return;
        }
        compositeDisposable.delete((Disposable) this.runningSyncCalls);
        compositeDisposable.dispose();
        ((SingleObserver) this.readyAsyncCalls).onError(th);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable disposable) {
        this.runningSyncCalls = disposable;
        ((CompositeDisposable) this.executorServiceOrNull).add(disposable);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(Object obj) {
        CompositeDisposable compositeDisposable = (CompositeDisposable) this.executorServiceOrNull;
        if (((AtomicBoolean) this.runningAsyncCalls).compareAndSet(false, true)) {
            compositeDisposable.delete((Disposable) this.runningSyncCalls);
            compositeDisposable.dispose();
            ((SingleObserver) this.readyAsyncCalls).onSuccess(obj);
        }
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

    /* JADX WARN: Removed duplicated region for block: B:33:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendCrashReport(org.acra.data.CrashReportData r11) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Dispatcher.sendCrashReport(org.acra.data.CrashReportData):void");
    }

    public void setSpansForNodeOptional(Node node, int i) {
        Class<?> cls = node.getClass();
        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) this.executorServiceOrNull;
        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(cls);
        if (codeSpanFactory != null) {
            Object spans = codeSpanFactory.getSpans(builder, (RenderPropsImpl) this.readyAsyncCalls);
            SpannableBuilder spannableBuilder = (SpannableBuilder) this.runningAsyncCalls;
            StringBuilder sb = spannableBuilder.builder;
            int length = sb.length();
            int length2 = sb.length();
            if (length <= i || i < 0 || length > length2) {
                return;
            }
            SpannableBuilder.setSpansInternal(spannableBuilder, spans, i, length);
        }
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

    public String toString() {
        switch (this.$r8$classId) {
            case 15:
                String socket = ((java.net.Socket) this.executorServiceOrNull).toString();
                socket.getClass();
                return socket;
            default:
                return super.toString();
        }
    }

    public void track(StartStopToken startStopToken) {
        startStopToken.getClass();
        Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = new Processor$$ExternalSyntheticLambda2(this, startStopToken, 7);
        synchronized (this.runningAsyncCalls) {
        }
        ((Handler) ((MemoryCacheService) this.executorServiceOrNull).imageLoader).postDelayed(processor$$ExternalSyntheticLambda2, 5400000L);
    }

    public void visit(Node node) {
        MarkwonVisitor$NodeVisitor markwonVisitor$NodeVisitor = (MarkwonVisitor$NodeVisitor) ((Map) this.runningSyncCalls).get(node.getClass());
        if (markwonVisitor$NodeVisitor != null) {
            markwonVisitor$NodeVisitor.visit(this, node);
        } else {
            visitChildren(node);
        }
    }

    public void visitChildren(Node node) {
        Node node2 = (Node) node.firstChild;
        while (node2 != null) {
            Node node3 = (Node) node2.next;
            node2.accept(this);
            node2 = node3;
        }
    }

    public void addInput(NavigationEventInput navigationEventInput) {
        if (((LinkedHashSet) this.runningSyncCalls).add(navigationEventInput)) {
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
            animationVector5.set$animation_core(((PopupMenu$1) this.executorServiceOrNull).get(i).getVelocityFromNanos(j, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)), i);
            i++;
        }
    }

    public /* synthetic */ Dispatcher(Object obj, int i) {
        this.$r8$classId = i;
        this.executorServiceOrNull = obj;
    }

    public /* synthetic */ Dispatcher(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.executorServiceOrNull = obj;
        this.readyAsyncCalls = obj2;
        this.runningAsyncCalls = obj3;
        this.runningSyncCalls = obj4;
    }

    public Dispatcher(AppDatabase appDatabase) {
        this.$r8$classId = 21;
        this.executorServiceOrNull = appDatabase;
        this.readyAsyncCalls = appDatabase.streamDAO();
        this.runningAsyncCalls = appDatabase.playlistDAO();
        this.runningSyncCalls = appDatabase.playlistStreamDAO();
    }

    public Dispatcher(ViewModelStore viewModelStore, ViewModelProvider$Factory viewModelProvider$Factory, CreationExtras creationExtras) {
        this.$r8$classId = 6;
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
            case 4:
                this.executorServiceOrNull = new Pools$SimplePool(10);
                this.readyAsyncCalls = new SimpleArrayMap(0);
                this.runningAsyncCalls = new ArrayList();
                this.runningSyncCalls = new HashSet();
                break;
            case 8:
                this.executorServiceOrNull = new ArrayMap(0);
                this.readyAsyncCalls = new SparseArray();
                this.runningAsyncCalls = new LongSparseArray((Object) null);
                this.runningSyncCalls = new ArrayMap(0);
                break;
            case 12:
                this.executorServiceOrNull = new Object();
                this.readyAsyncCalls = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager$1
                    @Override // android.os.Handler.Callback
                    public final boolean handleMessage(Message message) {
                        if (message.what != 0) {
                            return false;
                        }
                        Dispatcher dispatcher = Dispatcher.this;
                        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) message.obj;
                        synchronized (dispatcher.executorServiceOrNull) {
                            if (((SnackbarManager$SnackbarRecord) dispatcher.runningAsyncCalls) == snackbarManager$SnackbarRecord || ((SnackbarManager$SnackbarRecord) dispatcher.runningSyncCalls) == snackbarManager$SnackbarRecord) {
                                dispatcher.cancelSnackbarLocked(snackbarManager$SnackbarRecord, 2);
                            }
                        }
                        return true;
                    }
                });
                break;
            default:
                this.readyAsyncCalls = new ArrayDeque();
                this.runningAsyncCalls = new ArrayDeque();
                this.runningSyncCalls = new ArrayDeque();
                break;
        }
    }

    public Dispatcher(LinearLayout linearLayout, Dispatcher dispatcher, RelativeLayout relativeLayout, ImageView imageView, NewPipeTextView newPipeTextView) {
        this.$r8$classId = 19;
        this.executorServiceOrNull = linearLayout;
        this.readyAsyncCalls = relativeLayout;
        this.runningAsyncCalls = imageView;
        this.runningSyncCalls = newPipeTextView;
    }

    public Dispatcher(java.net.Socket socket) {
        this.$r8$classId = 15;
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
            public final long read(long j, Buffer buffer) {
                buffer.getClass();
                if (j == 0) {
                    return 0L;
                }
                if (j < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("byteCount < 0: ", j));
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
            public final void write(long j, Buffer buffer) {
                UStringsKt.checkOffsetAndCount(buffer.size, 0L, j);
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

    public Dispatcher(ExecutorService executorService) {
        this.$r8$classId = 10;
        this.runningAsyncCalls = new Handler(Looper.getMainLooper());
        this.runningSyncCalls = new ExecutorCompat$HandlerExecutor(this, 2);
        TransactionExecutor transactionExecutor = new TransactionExecutor(executorService, 1);
        this.executorServiceOrNull = transactionExecutor;
        this.readyAsyncCalls = JobKt.from(transactionExecutor);
    }

    public Dispatcher(PlayerService playerService) {
        String signature;
        this.$r8$classId = 22;
        Context applicationContext = playerService.getApplicationContext();
        applicationContext.getClass();
        this.executorServiceOrNull = applicationContext;
        PackageManager packageManager = applicationContext.getPackageManager();
        packageManager.getClass();
        this.readyAsyncCalls = packageManager;
        PackageInfo packageInfo = packageManager.getPackageInfo("android", 4160);
        if (packageInfo != null && (signature = getSignature(packageInfo)) != null) {
            this.runningAsyncCalls = signature;
            this.runningSyncCalls = new LinkedHashMap();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Platform signature not found");
            throw null;
        }
    }

    public Dispatcher(ComponentRegistry.Builder builder, RenderPropsImpl renderPropsImpl, SpannableBuilder spannableBuilder, Map map, BlockHandlerDef blockHandlerDef) {
        this.$r8$classId = 13;
        this.executorServiceOrNull = builder;
        this.readyAsyncCalls = renderPropsImpl;
        this.runningAsyncCalls = spannableBuilder;
        this.runningSyncCalls = map;
    }

    public Dispatcher(OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        this.$r8$classId = 7;
        this.executorServiceOrNull = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        this.readyAsyncCalls = new NavigationEventProcessor();
        new LinkedHashSet();
        this.runningAsyncCalls = new LinkedHashSet();
        this.runningSyncCalls = new LinkedHashSet();
    }

    public Dispatcher(String str, String str2, String str3, String str4) {
        this.$r8$classId = 20;
        this.executorServiceOrNull = str;
        this.readyAsyncCalls = str2;
        this.runningAsyncCalls = str4;
        this.runningSyncCalls = null;
    }

    public Dispatcher(MemoryCacheService memoryCacheService, JsonBuilder jsonBuilder) {
        this.$r8$classId = 9;
        memoryCacheService.getClass();
        this.executorServiceOrNull = memoryCacheService;
        this.readyAsyncCalls = jsonBuilder;
        this.runningAsyncCalls = new Object();
        this.runningSyncCalls = new LinkedHashMap();
    }

    public Dispatcher(Context context) {
        this.$r8$classId = 11;
        this.executorServiceOrNull = context.getApplicationContext();
        this.readyAsyncCalls = ImageRequest.Defaults.DEFAULT;
        this.runningAsyncCalls = null;
        this.runningSyncCalls = new Extras.Builder();
    }

    public Dispatcher(SingleObserver singleObserver, CompositeDisposable compositeDisposable, AtomicBoolean atomicBoolean) {
        this.$r8$classId = 14;
        this.readyAsyncCalls = singleObserver;
        this.executorServiceOrNull = compositeDisposable;
        this.runningAsyncCalls = atomicBoolean;
    }

    public Dispatcher(Context context, ActionMode.Callback callback) {
        this.$r8$classId = 1;
        this.readyAsyncCalls = context;
        this.executorServiceOrNull = callback;
        this.runningAsyncCalls = new ArrayList();
        this.runningSyncCalls = new SimpleArrayMap(0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Dispatcher(FloatAnimationSpec floatAnimationSpec) {
        this(new PopupMenu$1(floatAnimationSpec, 11), 2);
        this.$r8$classId = 2;
    }
}
