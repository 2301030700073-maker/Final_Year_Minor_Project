package androidx.camera.camera2.pipe.graph;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraGraphId;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker$implementation$1;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GraphLoop implements Closeable {
    public final AtomicBoolean _captureProcessingEnabled;
    public final Map _graphParameters;
    public Request _repeatingRequest;
    public RawField _requestProcessor;
    public final CameraGraphId cameraGraphId;
    public volatile boolean closed;
    public Map currentGraph3AParameters;
    public Map currentGraphParameters;
    public Request currentRepeatingRequest;
    public List currentRequestListeners;
    public RawField currentRequestProcessor;
    public Map currentRequiredParameters;
    public final Map defaultParameters;
    public final ContextScope graphLoopScope;
    public final ArrayList listeners;
    public final Object lock;
    public final LocalStore.AnonymousClass7 processingQueue;
    public final ArrayList requiredListeners;
    public final Map requiredParameters;
    public final CoroutineScope shutdownScope;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Listener {
        void onGraphShutdown();

        void onGraphStopped();

        void onStopRepeating();
    }

    public GraphLoop(CameraGraphId cameraGraphId, Map map, Map map2, ArrayList arrayList, ArrayList arrayList2, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher) {
        map.getClass();
        map2.getClass();
        coroutineScope.getClass();
        this.cameraGraphId = cameraGraphId;
        this.defaultParameters = map;
        this.requiredParameters = map2;
        this.requiredListeners = arrayList;
        this.listeners = arrayList2;
        this.shutdownScope = coroutineScope;
        ContextScope CoroutineScope = JobKt.CoroutineScope(coroutineDispatcher.plus(new CoroutineName("CXCP-GraphLoop")));
        this.graphLoopScope = CoroutineScope;
        int i = 0;
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(new InvalidationTracker$implementation$1(1, this, GraphLoop.class, "finalizeUnprocessedCommands", "finalizeUnprocessedCommands(Ljava/util/List;)V", i, 2), new MessageViewFragment$onCreate$1(2, this, GraphLoop.class, "process", "process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", i, 1));
        Continuation continuation = null;
        if (!((AtomicBoolean) anonymousClass7.val$folder).compareAndSet()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ProcessingQueue cannot be re-started!");
            throw null;
        }
        if (JobKt.launch$default(CoroutineScope, null, null, new ThumbNode$onAttach$1(anonymousClass7, continuation, 7), 3).isCancelled()) {
            anonymousClass7.releaseUnprocessedElements(null);
        }
        this.processingQueue = anonymousClass7;
        this.lock = new Object();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        this._graphParameters = emptyMap;
        this._captureProcessingEnabled = AtomicFU.atomic(true);
        this.currentGraphParameters = emptyMap;
        this.currentGraph3AParameters = emptyMap;
        this.currentRequiredParameters = map2;
        this.currentRequestListeners = arrayList;
    }

    public final void abortRequests(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Request request = (Request) arrayList.get(i);
            int size2 = this.currentRequestListeners.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((Request.Listener) this.currentRequestListeners.get(i2)).onAborted(request);
            }
        }
        int size3 = arrayList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Request request2 = (Request) arrayList.get(i3);
            int size4 = request2.listeners.size();
            for (int i4 = 0; i4 < size4; i4++) {
                ((Request.Listener) request2.listeners.get(i4)).onAborted(request2);
            }
        }
    }

    public final boolean buildAndSubmit(boolean z, List list, Map map) {
        Map build;
        RawField rawField = this.currentRequestProcessor;
        if (rawField == null) {
            return false;
        }
        Map map2 = this.currentGraphParameters;
        if (map.isEmpty()) {
            build = this.currentRequiredParameters;
        } else {
            MapBuilder mapBuilder = new MapBuilder();
            Map map3 = this.currentGraph3AParameters;
            map3.getClass();
            mapBuilder.putAll(map3);
            mapBuilder.putAll(map);
            Map map4 = this.requiredParameters;
            map4.getClass();
            mapBuilder.putAll(map4);
            build = mapBuilder.build();
        }
        boolean submit$camera_camera2_pipe = rawField.submit$camera_camera2_pipe(z, list, this.defaultParameters, map2, build, this.currentRequestListeners);
        if (!submit$camera_camera2_pipe) {
            if (z) {
                Log.w("CXCP", "Failed to repeat with " + CollectionsKt.single(list));
                return submit$camera_camera2_pipe;
            }
            if (map.isEmpty()) {
                Log.w("CXCP", "Failed to submit capture with " + list);
                return submit$camera_camera2_pipe;
            }
            Log.w("CXCP", "Failed to trigger with " + CollectionsKt.single(list) + " and " + map);
        }
        return submit$camera_camera2_pipe;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                RawField rawField = this._requestProcessor;
                int i = 0;
                Continuation continuation = null;
                if (rawField != null) {
                    JobKt.launch$default(this.shutdownScope, null, null, new GraphLoop$close$1$1$1(rawField, continuation, i), 3);
                }
                this._requestProcessor = null;
                this.processingQueue.tryEmit(GraphCommand.Stop.INSTANCE$3);
                int size = this.listeners.size();
                while (i < size) {
                    ((Listener) this.listeners.get(i)).onGraphShutdown();
                    i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Request getRepeatingRequest() {
        Request request;
        synchronized (this.lock) {
            request = this._repeatingRequest;
        }
        return request;
    }

    public final void processCapture(List list, int i, GraphCommand.Capture capture, boolean z) {
        if (this._captureProcessingEnabled.getValue() && buildAndSubmit(false, null, EmptyMap.INSTANCE)) {
            list.remove(i);
            return;
        }
        if (!z || i <= 0) {
            return;
        }
        int i2 = i - 1;
        if (((GraphCommand) list.get(i2)) instanceof GraphCommand.Repeat) {
            processRepeat(list, i2, false);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
        }
    }

    public final void processRepeat(List list, int i, boolean z) {
        int i2;
        int i3 = i;
        while (true) {
            int i4 = 0;
            if (-1 >= i3) {
                if (!z || (i2 = i + 1) >= list.size()) {
                    return;
                }
                GraphCommand graphCommand = (GraphCommand) list.get(i2);
                if (graphCommand instanceof GraphCommand.Capture) {
                    processCapture(list, i2, (GraphCommand.Capture) graphCommand, false);
                    return;
                } else {
                    if (graphCommand instanceof GraphCommand.Trigger) {
                        processTrigger(list, i2, (GraphCommand.Trigger) graphCommand);
                        return;
                    }
                    return;
                }
            }
            GraphCommand graphCommand2 = (GraphCommand) list.get(i3);
            if (graphCommand2 instanceof GraphCommand.Repeat) {
                Request request = ((GraphCommand.Repeat) graphCommand2).request;
                if (buildAndSubmit(true, IntOffsetKt.listOf(request), EmptyMap.INSTANCE)) {
                    this.currentRepeatingRequest = request;
                    list.remove(i3);
                    while (i4 < i3) {
                        if (((GraphCommand) list.get(i4)) instanceof GraphCommand.Repeat) {
                            list.remove(i4);
                            i3--;
                        } else {
                            i4++;
                        }
                    }
                    return;
                }
            }
            i3--;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00be -> B:27:0x00da). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00d6 -> B:26:0x00d8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00e7 -> B:28:0x00e8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestProcessor(java.util.List r18, int r19, androidx.camera.camera2.pipe.graph.GraphCommand.RequestProcessor r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphLoop.processRequestProcessor(java.util.List, int, androidx.camera.camera2.pipe.graph.GraphCommand$RequestProcessor, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c6, code lost:
    
        if (r2 == r8) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007e, code lost:
    
        if (r2 == r8) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0093 -> B:13:0x00cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00b7 -> B:12:0x00c9). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00c6 -> B:12:0x00c9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processShutdown(java.util.List r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.GraphLoop.processShutdown(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void processTrigger(List list, int i, GraphCommand.Trigger trigger) {
        Request request = this.currentRepeatingRequest;
        if (request == null && i == 0) {
            list.remove(i);
            return;
        }
        if (this._captureProcessingEnabled.getValue() && request != null && buildAndSubmit(false, IntOffsetKt.listOf(request), trigger.triggerParameters)) {
            list.remove(i);
            return;
        }
        if (i > 0) {
            int i2 = i - 1;
            if (((GraphCommand) list.get(i2)) instanceof GraphCommand.Repeat) {
                processRepeat(list, i2, false);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
            }
        }
    }

    public final boolean reissueRepeatingRequest() {
        Boolean bool;
        RawField rawField = this.currentRequestProcessor;
        if (rawField == null) {
            return false;
        }
        Request request = this.currentRepeatingRequest;
        if (request != null) {
            bool = Boolean.valueOf(rawField.submit$camera_camera2_pipe(true, IntOffsetKt.listOf(request), this.defaultParameters, this.currentGraphParameters, this.currentRequiredParameters, this.currentRequestListeners));
        } else {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    public final void setCaptureProcessingEnabled(boolean z) {
        this._captureProcessingEnabled._value = z ? 1 : 0;
        if (z) {
            this.processingQueue.tryEmit(GraphCommand.Stop.INSTANCE$2);
        }
    }

    public final void setRequestProcessor(RawField rawField) {
        synchronized (this.lock) {
            RawField rawField2 = this._requestProcessor;
            this._requestProcessor = rawField;
            if (this.closed) {
                Continuation continuation = null;
                this._requestProcessor = null;
                if (rawField != null) {
                    JobKt.launch$default(this.shutdownScope, null, null, new GraphLoop$close$1$1$1(rawField, continuation, 1), 3);
                }
                return;
            }
            if (rawField2 != rawField) {
                this.processingQueue.tryEmit(new GraphCommand.RequestProcessor(rawField2, rawField));
            }
            if (rawField == null) {
                int size = this.listeners.size();
                for (int i = 0; i < size; i++) {
                    ((Listener) this.listeners.get(i)).onGraphStopped();
                }
            }
        }
    }

    public final String toString() {
        return "GraphLoop(" + this.cameraGraphId + ')';
    }
}
