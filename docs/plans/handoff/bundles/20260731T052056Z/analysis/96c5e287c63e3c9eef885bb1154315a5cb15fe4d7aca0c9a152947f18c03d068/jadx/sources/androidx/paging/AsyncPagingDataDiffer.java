package androidx.paging;

import androidx.core.app.ActivityRecreator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.SettingsRepository$special$$inlined$map$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncPagingDataDiffer {
    public final SynchronizedLazyImpl LoadStateListenerHandler$delegate;
    public final ActivityRecreator.AnonymousClass1 LoadStateListenerRunnable;
    public final CopyOnWriteArrayList childLoadStateListeners;
    public final DiffUtil diffCallback;
    public final DiskLruCache$$ExternalSyntheticLambda0 internalLoadStateListener;
    public int lastAccessedIndex;
    public final Flow loadStateFlow;
    public final AtomicReference parentLoadStateListener;
    public final AsyncPagingDataDiffer$presenter$1 presenter;
    public final AtomicInteger submitDataId;
    public final MemoryCacheService updateCallback;
    public final CoroutineContext workerDispatcher;
    public final StateFlowImpl inGetItem = StateFlowKt.MutableStateFlow(Boolean.FALSE);
    public final AtomicReference previousPresenter = new AtomicReference(null);

    public AsyncPagingDataDiffer(DiffUtil diffUtil, MemoryCacheService memoryCacheService, CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        this.diffCallback = diffUtil;
        this.updateCallback = memoryCacheService;
        this.workerDispatcher = coroutineContext2;
        AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = new AsyncPagingDataDiffer$presenter$1(this, coroutineContext);
        this.presenter = asyncPagingDataDiffer$presenter$1;
        this.submitDataId = new AtomicInteger(0);
        Flow safeFlow = new SafeFlow(0, new SingleRunner$runInIsolation$2(StateFlowKt.buffer$default(new SettingsRepository$special$$inlined$map$1(asyncPagingDataDiffer$presenter$1.loadStateFlow, 1), -1), (Continuation) null, this));
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
        if (handlerContext.get(Job.Key.$$INSTANCE) != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Flow context cannot contain job in it. Had ", handlerContext);
            throw null;
        }
        this.loadStateFlow = handlerContext.equals(EmptyCoroutineContext.INSTANCE) ? safeFlow : safeFlow instanceof FusibleFlow ? CombineKt.fuse$default((FusibleFlow) safeFlow, handlerContext, 0, null, 6) : new ChannelFlowOperatorImpl(safeFlow, handlerContext, 0, null, 12);
        this.parentLoadStateListener = new AtomicReference(null);
        this.childLoadStateListeners = new CopyOnWriteArrayList();
        this.internalLoadStateListener = new DiskLruCache$$ExternalSyntheticLambda0(13, this);
        this.LoadStateListenerHandler$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda1(21));
        this.LoadStateListenerRunnable = new ActivityRecreator.AnonymousClass1(this);
    }
}
