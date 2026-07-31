package com.grack.nanojson;

import android.animation.ValueAnimator;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.compose.material3.FabPlacement;
import androidx.compose.runtime.Latch;
import androidx.compose.ui.Modifier;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.ViewBoundsCheck$BoundFlags;
import androidx.recyclerview.widget.ViewInfoStore$InfoRecord;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLiteDriver;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import androidx.work.SystemClock;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.StopWorkRunnable;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.UriKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.target.ImageViewTarget;
import coil3.target.Target;
import coil3.util.BitmapsKt;
import coil3.util.HardwareBitmapService;
import coil3.util.HardwareBitmapsKt;
import coil3.util.ImmutableHardwareBitmapService;
import coil3.util.LimitedFileDescriptorHardwareBitmapService;
import coil3.util.UtilsKt;
import com.google.android.material.internal.StateListAnimator$1;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.completable.CompletableAndThenCompletable$SourceObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableToSingle;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMapPublisher;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnError;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnEvent;
import io.reactivex.rxjava3.internal.operators.single.SingleFlatMap$SingleFlatMapCallback;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue$LinkedQueueNode;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import j$.nio.channels.DesugarChannels;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.connection.Exchange$RequestBodySink;
import okhttp3.internal.connection.Exchange$ResponseBodySource;
import okhttp3.internal.http.ExchangeCodec;
import okio.FileMetadata;
import okio.Sink;
import okio.Socket;
import okio.Source;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.config.CoreConfiguration;
import org.acra.file.ReportLocator;
import org.acra.plugins.ServicePluginLoader;
import org.acra.scheduler.SenderScheduler;
import org.acra.scheduler.SenderSchedulerFactory;
import org.acra.sender.JobSenderService;
import org.acra.sender.ReportSender;
import org.acra.sender.ReportSenderFactory;
import org.reactivestreams.Publisher;
import org.schabi.newpipe.App;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda14;

/* loaded from: classes.dex */
public final class JsonBuilder implements SQLiteDriver, OnApplyWindowInsetsListener, CompletableObserver, Function, SingleObserver, SimplePlainQueue, Socket, SenderScheduler {
    public final /* synthetic */ int $r8$classId;
    public Object json;
    public Object root;

    public JsonBuilder(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 10:
                this.json = new Rect();
                this.root = new Rect();
                break;
            case 11:
                this.json = new ArrayList();
                this.root = new StateListAnimator$1();
                break;
            case 24:
                AtomicReference atomicReference = new AtomicReference();
                this.json = atomicReference;
                AtomicReference atomicReference2 = new AtomicReference();
                this.root = atomicReference2;
                MpscLinkedQueue$LinkedQueueNode mpscLinkedQueue$LinkedQueueNode = new MpscLinkedQueue$LinkedQueueNode();
                atomicReference2.lazySet(mpscLinkedQueue$LinkedQueueNode);
                break;
            default:
                this.json = new SimpleArrayMap(0);
                this.root = new LongSparseArray((Object) null);
                break;
        }
    }

    public static Lifecycle findLifecycle(ImageRequest imageRequest) {
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

    public void addState(ValueAnimator valueAnimator) {
        BlockHandlerDef blockHandlerDef = new BlockHandlerDef(25);
        valueAnimator.addListener((StateListAnimator$1) this.root);
        ((ArrayList) this.json).add(blockHandlerDef);
    }

    public void addToPostLayout(RecyclerView.ViewHolder viewHolder, FabPlacement fabPlacement) {
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.json;
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            viewInfoStore$InfoRecord = ViewInfoStore$InfoRecord.obtain();
            simpleArrayMap.put(viewHolder, viewInfoStore$InfoRecord);
        }
        viewInfoStore$InfoRecord.postInfo = fabPlacement;
        viewInfoStore$InfoRecord.flags |= 8;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 16:
                return ((Utils$$ExternalSyntheticBUOutline0) this.json).apply(this.root, obj);
            default:
                Object apply = ((RxConvertKt$$ExternalSyntheticLambda0) this.root).apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null Publisher");
                return new FlowableMapPublisher((Publisher) apply, new JsonBuilder((Utils$$ExternalSyntheticBUOutline0) this.json, obj, 16), 0);
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    public boolean contains(WorkGenerationalId workGenerationalId) {
        boolean containsKey;
        synchronized (this.root) {
            containsKey = ((Data.Builder) this.json).values.containsKey(workGenerationalId);
        }
        return containsKey;
    }

    public void end() {
        Stack stack = (Stack) this.json;
        if (stack.size() == 1) {
            throw new JsonWriterException("Cannot end the root object or array");
        }
        stack.pop();
    }

    public View findOneViewWithinBoundFlags(int i, int i2, int i3, int i4) {
        View childAt;
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = (ViewBoundsCheck$BoundFlags) this.root;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.json;
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

    @Override // okio.Socket
    public Sink getSink() {
        return (Exchange$RequestBodySink) this.json;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (Exchange$ResponseBodySource) this.root;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return ((SQLiteDriver) this.json).hasConnectionPool();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean isEmpty() {
        return ((MpscLinkedQueue$LinkedQueueNode) ((AtomicReference) this.root).get()) == ((MpscLinkedQueue$LinkedQueueNode) ((AtomicReference) this.json).get());
    }

    public boolean isViewWithinBoundFlags(View view) {
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = (ViewBoundsCheck$BoundFlags) this.root;
        RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1 = (RecyclerView.LayoutManager.AnonymousClass1) this.json;
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

    public void lock() {
        FileChannel convertMaybeLegacyFileChannelFromLibrary;
        String str = (String) this.json;
        if (((FileChannel) this.root) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(new FileOutputStream(file).getChannel());
            this.root = convertMaybeLegacyFileChannelFromLibrary;
            if (convertMaybeLegacyFileChannelFromLibrary != null) {
                convertMaybeLegacyFileChannelFromLibrary.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.root;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.root = null;
            throw new IllegalStateException(Modifier.CC.m("Unable to lock file: '", str, "'."), th);
        }
    }

    public void object(String str) {
        JsonObject jsonObject = new JsonObject();
        value(jsonObject, str);
        ((Stack) this.json).push(jsonObject);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean offer(Object obj) {
        if (obj == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Null is not a valid element");
            return false;
        }
        MpscLinkedQueue$LinkedQueueNode mpscLinkedQueue$LinkedQueueNode = new MpscLinkedQueue$LinkedQueueNode(obj);
        ((MpscLinkedQueue$LinkedQueueNode) ((AtomicReference) this.json).getAndSet(mpscLinkedQueue$LinkedQueueNode)).lazySet(mpscLinkedQueue$LinkedQueueNode);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a4  */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r18, androidx.core.view.WindowInsetsCompat r19) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonBuilder.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat):androidx.core.view.WindowInsetsCompat");
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        switch (this.$r8$classId) {
            case 14:
                ((CompletableObserver) this.root).onComplete();
                break;
            default:
                ((SingleObserver) this.json).onSuccess(((CompletableToSingle) this.root).completionValue);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable th) {
        Object apply;
        switch (this.$r8$classId) {
            case 14:
                ((CompletableObserver) this.root).onError(th);
                break;
            case 15:
                ((SingleObserver) this.json).onError(th);
                break;
            case 16:
            case 17:
            default:
                SingleObserver singleObserver = (SingleObserver) this.json;
                SingleOnErrorReturn singleOnErrorReturn = (SingleOnErrorReturn) this.root;
                Function function = singleOnErrorReturn.valueSupplier;
                if (function != null) {
                    try {
                        apply = function.apply(th);
                    } catch (Throwable th2) {
                        AppKt.throwIfFatal(th2);
                        singleObserver.onError(new CompositeException(th, th2));
                        return;
                    }
                } else {
                    apply = singleOnErrorReturn.value;
                }
                if (apply != null) {
                    singleObserver.onSuccess(apply);
                    break;
                } else {
                    NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                    nullPointerException.initCause(th);
                    singleObserver.onError(nullPointerException);
                    break;
                }
            case 18:
                try {
                    ((SingleDoOnError) this.root).onError.accept(th);
                } catch (Throwable th3) {
                    AppKt.throwIfFatal(th3);
                    th = new CompositeException(th, th3);
                }
                ((SingleObserver) this.json).onError(th);
                break;
            case 19:
                try {
                    ((BiConsumer) ((SingleDoOnEvent) this.root).onEvent).accept(null, th);
                } catch (Throwable th4) {
                    AppKt.throwIfFatal(th4);
                    th = new CompositeException(th, th4);
                }
                ((SingleObserver) this.json).onError(th);
                break;
            case 20:
                ((SingleObserver) this.json).onError(th);
                break;
            case 21:
                ((SingleObserver) this.root).onError(th);
                break;
            case 22:
                ((SingleObserver) this.json).onError(th);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable disposable) {
        switch (this.$r8$classId) {
            case 14:
                DisposableHelper.replace((CompletableAndThenCompletable$SourceObserver) this.json, disposable);
                break;
            case 15:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
            case 16:
            case 17:
            default:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
            case 18:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
            case 19:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
            case 20:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
            case 21:
                DisposableHelper.replace((SingleFlatMap$SingleFlatMapCallback) this.json, disposable);
                break;
            case 22:
                ((SingleObserver) this.json).onSubscribe(disposable);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(Object obj) {
        switch (this.$r8$classId) {
            case 18:
                ((SingleObserver) this.json).onSuccess(obj);
                break;
            case 19:
                SingleObserver singleObserver = (SingleObserver) this.json;
                try {
                    ((BiConsumer) ((SingleDoOnEvent) this.root).onEvent).accept(obj, null);
                    singleObserver.onSuccess(obj);
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    singleObserver.onError(th);
                    return;
                }
            case 20:
                SingleObserver singleObserver2 = (SingleObserver) this.json;
                try {
                    ((ExtractorHelper$$ExternalSyntheticLambda14) ((SingleDoOnEvent) this.root).onEvent).accept(obj);
                    singleObserver2.onSuccess(obj);
                    break;
                } catch (Throwable th2) {
                    AppKt.throwIfFatal(th2);
                    singleObserver2.onError(th2);
                    return;
                }
            case 21:
                ((SingleObserver) this.root).onSuccess(obj);
                break;
            case 22:
                try {
                    Object apply = ((Function) this.root).apply(obj);
                    Objects.requireNonNull(apply, "The mapper function returned a null value.");
                    ((SingleObserver) this.json).onSuccess(apply);
                    break;
                } catch (Throwable th3) {
                    AppKt.throwIfFatal(th3);
                    onError(th3);
                    return;
                }
            default:
                ((SingleObserver) this.json).onSuccess(obj);
                break;
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonBuilder.open(java.lang.String):androidx.sqlite.SQLiteConnection");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x007b, code lost:
    
        if (((coil3.util.HardwareBitmapService) r20.root).allowHardwareMainThread(r22) != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public coil3.request.Options options(coil3.request.ImageRequest r21, coil3.size.Size r22) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonBuilder.options(coil3.request.ImageRequest, coil3.size.Size):coil3.request.Options");
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public Object poll() {
        MpscLinkedQueue$LinkedQueueNode mpscLinkedQueue$LinkedQueueNode;
        AtomicReference atomicReference = (AtomicReference) this.root;
        MpscLinkedQueue$LinkedQueueNode mpscLinkedQueue$LinkedQueueNode2 = (MpscLinkedQueue$LinkedQueueNode) atomicReference.get();
        MpscLinkedQueue$LinkedQueueNode mpscLinkedQueue$LinkedQueueNode3 = (MpscLinkedQueue$LinkedQueueNode) mpscLinkedQueue$LinkedQueueNode2.get();
        if (mpscLinkedQueue$LinkedQueueNode3 != null) {
            Object andNullValue = mpscLinkedQueue$LinkedQueueNode3.getAndNullValue();
            atomicReference.lazySet(mpscLinkedQueue$LinkedQueueNode3);
            mpscLinkedQueue$LinkedQueueNode2.lazySet(null);
            return andNullValue;
        }
        if (mpscLinkedQueue$LinkedQueueNode2 == ((MpscLinkedQueue$LinkedQueueNode) ((AtomicReference) this.json).get())) {
            return null;
        }
        do {
            mpscLinkedQueue$LinkedQueueNode = (MpscLinkedQueue$LinkedQueueNode) mpscLinkedQueue$LinkedQueueNode2.get();
        } while (mpscLinkedQueue$LinkedQueueNode == null);
        Object andNullValue2 = mpscLinkedQueue$LinkedQueueNode.getAndNullValue();
        atomicReference.lazySet(mpscLinkedQueue$LinkedQueueNode);
        mpscLinkedQueue$LinkedQueueNode2.lazySet(null);
        return andNullValue2;
    }

    public FabPlacement popFromLayoutStep(RecyclerView.ViewHolder viewHolder, int i) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord;
        FabPlacement fabPlacement;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.json;
        int indexOfKey = simpleArrayMap.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) simpleArrayMap.valueAt(indexOfKey)) != null) {
            int i2 = viewInfoStore$InfoRecord.flags;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                viewInfoStore$InfoRecord.flags = i3;
                if (i == 4) {
                    fabPlacement = viewInfoStore$InfoRecord.preInfo;
                } else if (i == 8) {
                    fabPlacement = viewInfoStore$InfoRecord.postInfo;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.removeAt(indexOfKey);
                    viewInfoStore$InfoRecord.flags = 0;
                    viewInfoStore$InfoRecord.preInfo = null;
                    viewInfoStore$InfoRecord.postInfo = null;
                    ViewInfoStore$InfoRecord.sPool.release(viewInfoStore$InfoRecord);
                }
                return fabPlacement;
            }
        }
        return null;
    }

    public StartStopToken remove(WorkGenerationalId workGenerationalId) {
        StartStopToken remove;
        workGenerationalId.getClass();
        synchronized (this.root) {
            remove = ((Data.Builder) this.json).remove(workGenerationalId);
        }
        return remove;
    }

    public void removeFromDisappearedInLayout(RecyclerView.ViewHolder viewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.json).get(viewHolder);
        if (viewInfoStore$InfoRecord == null) {
            return;
        }
        viewInfoStore$InfoRecord.flags &= -2;
    }

    public void removeViewHolder(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = (LongSparseArray) this.root;
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
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) ((SimpleArrayMap) this.json).remove(viewHolder);
        if (viewInfoStore$InfoRecord != null) {
            viewInfoStore$InfoRecord.flags = 0;
            viewInfoStore$InfoRecord.preInfo = null;
            viewInfoStore$InfoRecord.postInfo = null;
            ViewInfoStore$InfoRecord.sPool.release(viewInfoStore$InfoRecord);
        }
    }

    public void scheduleReports(File file) {
        String str;
        if (file != null) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            File dir = ((ReportLocator) this.json).context.getDir("ACRA-approved", 0);
            dir.getClass();
            File file2 = new File(dir, file.getName());
            if (!file.renameTo(file2)) {
                Log.w("ACRA", "Could not rename approved report from " + file + " to " + file2);
            }
        }
        ErrorReporter errorReporter2 = ACRA.errorReporter;
        JsonBuilder jsonBuilder = (JsonBuilder) ((SenderScheduler) this.root);
        App app = (App) jsonBuilder.json;
        Bundle bundle = new Bundle();
        CoreConfiguration coreConfiguration = (CoreConfiguration) jsonBuilder.root;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(coreConfiguration);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                objectOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            str = null;
        }
        bundle.putString("acraConfig", str);
        bundle.putBoolean("onlySendSilentReports", false);
        ErrorReporter errorReporter3 = ACRA.errorReporter;
        ArrayList loadEnabled = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, ReportSenderFactory.class);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(loadEnabled, 10));
        Iterator it = loadEnabled.iterator();
        while (it.hasNext()) {
            ReportSender create = ((ReportSenderFactory) it.next()).create(app, coreConfiguration);
            ErrorReporter errorReporter4 = ACRA.errorReporter;
            arrayList.add(create);
        }
        if (!arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                ((ReportSender) it2.next()).getClass();
                Object systemService = app.getSystemService("jobscheduler");
                systemService.getClass();
                JobScheduler jobScheduler = (JobScheduler) systemService;
                JobInfo.Builder builder = new JobInfo.Builder(0, new ComponentName(app, (Class<?>) JobSenderService.class));
                PersistableBundle persistableBundle = new PersistableBundle();
                for (String str2 : bundle.keySet()) {
                    Object obj = bundle.get(str2);
                    if ((obj instanceof PersistableBundle) || (obj instanceof Integer) || (obj instanceof int[]) || (obj instanceof Long) || (obj instanceof long[]) || (obj instanceof Double) || (obj instanceof double[]) || (obj instanceof String) || (((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) || (obj instanceof Boolean) || (obj instanceof boolean[]))) {
                        str2.getClass();
                        if (obj == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unable to determine type of null values");
                            return;
                        }
                        if (obj instanceof Integer) {
                            persistableBundle.putInt(str2, ((Number) obj).intValue());
                        } else if (obj instanceof int[]) {
                            persistableBundle.putIntArray(str2, (int[]) obj);
                        } else if (obj instanceof Long) {
                            persistableBundle.putLong(str2, ((Number) obj).longValue());
                        } else if (obj instanceof long[]) {
                            persistableBundle.putLongArray(str2, (long[]) obj);
                        } else if (obj instanceof Double) {
                            persistableBundle.putDouble(str2, ((Number) obj).doubleValue());
                        } else if (obj instanceof double[]) {
                            persistableBundle.putDoubleArray(str2, (double[]) obj);
                        } else if (obj instanceof String) {
                            persistableBundle.putString(str2, (String) obj);
                        } else if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                            persistableBundle.putStringArray(str2, (String[]) obj);
                        } else if (obj instanceof Boolean) {
                            persistableBundle.putBoolean(str2, ((Boolean) obj).booleanValue());
                        } else if (obj instanceof boolean[]) {
                            persistableBundle.putBooleanArray(str2, (boolean[]) obj);
                        } else {
                            if (!(obj instanceof PersistableBundle)) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m("Objects of type ", obj.getClass().getSimpleName(), " can not be put into a PersistableBundle"));
                                return;
                            }
                            persistableBundle.putAll((PersistableBundle) obj);
                        }
                    }
                }
                JobInfo.Builder extras = builder.setExtras(persistableBundle);
                extras.getClass();
                extras.setOverrideDeadline(0L);
                try {
                    jobScheduler.schedule(extras.build());
                } catch (IllegalArgumentException e2) {
                    ErrorReporter errorReporter5 = ACRA.errorReporter;
                    Log.e("ACRA", "Failed to schedule Sender Service. No reports can be sent.", e2);
                }
            }
        }
        ErrorReporter errorReporter6 = ACRA.errorReporter;
        ArrayList loadEnabled2 = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, ReportSenderFactory.class);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(loadEnabled2, 10));
        Iterator it3 = loadEnabled2.iterator();
        while (it3.hasNext()) {
            ReportSender create2 = ((ReportSenderFactory) it3.next()).create(app, coreConfiguration);
            ErrorReporter errorReporter7 = ACRA.errorReporter;
            arrayList2.add(create2);
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            ((ReportSender) it4.next()).getClass();
        }
    }

    public void startWork(StartStopToken startStopToken, SystemClock systemClock) {
        startStopToken.getClass();
        Dispatcher dispatcher = (Dispatcher) this.root;
        ((TransactionExecutor) dispatcher.executorServiceOrNull).execute(new WorkerKt$$ExternalSyntheticLambda2(6, this, startStopToken, systemClock));
    }

    public void stopWork(StartStopToken startStopToken, int i) {
        startStopToken.getClass();
        Dispatcher dispatcher = (Dispatcher) this.root;
        ((TransactionExecutor) dispatcher.executorServiceOrNull).execute(new StopWorkRunnable((Processor) this.json, startStopToken, false, i));
    }

    public StartStopToken tokenFor(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopToken;
        synchronized (this.root) {
            startStopToken = ((Data.Builder) this.json).tokenFor(workGenerationalId);
        }
        return startStopToken;
    }

    public Options updateOptions(Options options) {
        Extras extras;
        boolean z;
        Extras extras2 = options.extras;
        Extras.Key key = ImageRequests_androidKt.bitmapConfigKey;
        if (!BitmapsKt.isHardware((Bitmap.Config) UriKt.getExtra(options, key)) || ((HardwareBitmapService) this.root).allowHardwareWorkerThread()) {
            extras = extras2;
            z = false;
        } else {
            extras2.getClass();
            Map map = extras2.data;
            map.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (config != null) {
                linkedHashMap.put(key, config);
            } else {
                linkedHashMap.remove(key);
            }
            Extras extras3 = new Extras(UtilsKt.toImmutableMap(linkedHashMap));
            z = true;
            extras = extras3;
        }
        return z ? new Options(options.context, options.size, options.scale, options.precision, options.diskCacheKey, options.fileSystem, options.memoryCachePolicy, options.diskCachePolicy, options.networkCachePolicy, extras) : options;
    }

    public void value(Object obj, String str) {
        try {
            ((JsonObject) ((Stack) this.json).peek()).put(str, obj);
        } catch (ClassCastException unused) {
            throw new JsonWriterException("Attempted to write a keyed value to a JsonArray");
        }
    }

    public void value(String str, boolean z) {
        value(Boolean.valueOf(z), str);
    }

    public /* synthetic */ JsonBuilder(Single single, SingleObserver singleObserver, int i) {
        this.$r8$classId = i;
        this.root = single;
        this.json = singleObserver;
    }

    public /* synthetic */ JsonBuilder(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.json = obj;
        this.root = obj2;
    }

    public JsonBuilder(App app, CoreConfiguration coreConfiguration) {
        this.$r8$classId = 29;
        this.json = new ReportLocator(app, 0);
        ArrayList loadEnabled = ((ServicePluginLoader) coreConfiguration.getPluginLoader()).loadEnabled(coreConfiguration, SenderSchedulerFactory.class);
        if (loadEnabled.isEmpty()) {
            this.root = new JsonBuilder(app, coreConfiguration, 28);
            return;
        }
        SenderScheduler create = ((SenderSchedulerFactory) loadEnabled.get(0)).create(app, coreConfiguration);
        this.root = create;
        if (loadEnabled.size() > 1) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "More than one SenderScheduler found. Will use only ".concat(create.getClass().getSimpleName()));
        }
    }

    public JsonBuilder(String str) {
        this.$r8$classId = 4;
        this.json = str.concat(".lck");
    }

    public /* synthetic */ JsonBuilder(int i, boolean z) {
        this.$r8$classId = i;
    }

    public JsonBuilder(RealImageLoader realImageLoader) {
        Object immutableHardwareBitmapService;
        this.$r8$classId = 9;
        this.json = realImageLoader;
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            boolean z = HardwareBitmapsKt.IS_DEVICE_BLOCKED;
        } else if (!HardwareBitmapsKt.IS_DEVICE_BLOCKED) {
            if (i != 26 && i != 27) {
                immutableHardwareBitmapService = new ImmutableHardwareBitmapService(true);
            } else {
                immutableHardwareBitmapService = new LimitedFileDescriptorHardwareBitmapService();
            }
            this.root = immutableHardwareBitmapService;
        }
        immutableHardwareBitmapService = new ImmutableHardwareBitmapService(false);
        this.root = immutableHardwareBitmapService;
    }

    public JsonBuilder(Processor processor, Dispatcher dispatcher) {
        this.$r8$classId = 7;
        processor.getClass();
        dispatcher.getClass();
        this.json = processor;
        this.root = dispatcher;
    }

    public JsonBuilder(FileMetadata fileMetadata, SQLiteDriver sQLiteDriver) {
        this.$r8$classId = 3;
        sQLiteDriver.getClass();
        this.root = fileMetadata;
        this.json = sQLiteDriver;
    }

    public JsonBuilder(Data.Builder builder) {
        this.$r8$classId = 6;
        this.json = builder;
        this.root = new Object();
    }

    public JsonBuilder(RecyclerView.LayoutManager.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 1;
        this.json = anonymousClass1;
        ViewBoundsCheck$BoundFlags viewBoundsCheck$BoundFlags = new ViewBoundsCheck$BoundFlags();
        viewBoundsCheck$BoundFlags.mBoundFlags = 0;
        this.root = viewBoundsCheck$BoundFlags;
    }

    public JsonBuilder(Latch latch) {
        this.$r8$classId = 27;
        ExchangeCodec exchangeCodec = (ExchangeCodec) latch.spareList;
        this.json = new Exchange$RequestBodySink(latch, exchangeCodec.getSocket().getSink(), -1L, true);
        this.root = new Exchange$ResponseBodySource(latch, exchangeCodec.getSocket().getSource(), -1L, true);
    }

    public JsonBuilder(ViewPager viewPager) {
        this.$r8$classId = 5;
        this.root = viewPager;
        this.json = new Rect();
    }
}
