package androidx.camera.camera2.pipe.internal;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.OutputDistributor;
import androidx.camera.camera2.pipe.media.OutputImage;
import androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.atomicfu.AtomicLong;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import net.openid.appauth.JsonUtil$Field;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameState {
    public static final AtomicLong frameIds;
    public final long frameId;
    public final FrameInfoOutput frameInfoOutput;
    public final long frameNumber;
    public final long frameTimestamp;
    public final ListBuilder imageOutputs;
    public final CopyOnWriteArrayList listenerStates;
    public final AtomicInt remainingStreamCount;
    public final AtomicRef state;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FrameInfoOutput extends JsonUtil$Field implements OutputDistributor.OutputListener {
        public FrameInfoOutput() {
            super(4);
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* renamed from: onOutputComplete-3ejhThk, reason: not valid java name */
        public final void mo86onOutputComplete3ejhThk(Object obj) {
            Object obj2;
            State state;
            State state2 = State.COMPLETE;
            ((CompletableDeferredImpl) this.defaultValue).makeCompleting$kotlinx_coroutines_core(new OutputResult(obj));
            FrameState frameState = FrameState.this;
            AtomicRef atomicRef = frameState.state;
            do {
                obj2 = atomicRef.value;
                State state3 = (State) obj2;
                int ordinal = state3.ordinal();
                if (ordinal == 0) {
                    state = State.FRAME_INFO_COMPLETE;
                } else {
                    if (ordinal != 2) {
                        throw new IllegalStateException("Unexpected frame state for " + frameState + "! State is " + state3 + ' ');
                    }
                    state = state2;
                }
            } while (!atomicRef.compareAndSet(obj2, state));
            Iterator it = frameState.listenerStates.iterator();
            it.getClass();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
            if (state == state2) {
                Iterator it2 = frameState.listenerStates.iterator();
                it2.getClass();
                if (it2.hasNext()) {
                    throw Config.CC.m(it2);
                }
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImageOutput extends JsonUtil$Field implements OutputDistributor.OutputListener {
        public final int outputId;
        public final AtomicInt remainingOutputResults;
        public final int streamId;

        public ImageOutput(int i, int i2, AtomicInt atomicInt) {
            super(4);
            this.streamId = i;
            this.outputId = i2;
            this.remainingOutputResults = atomicInt;
        }

        @Override // androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener
        /* renamed from: onOutputComplete-3ejhThk */
        public final void mo86onOutputComplete3ejhThk(Object obj) {
            Object obj2;
            State state;
            AutoCloseable acquire;
            State state2 = State.COMPLETE;
            boolean z = obj instanceof OutputStatus;
            OutputImage outputImage = (OutputImage) ((z || obj == null) ? null : obj);
            if (outputImage != null) {
                if (outputImage instanceof SharedOutputImage$Companion$SharedOutputImageImpl) {
                    acquire = ((SharedOutputImage$Companion$SharedOutputImageImpl) outputImage).acquire();
                } else {
                    SharedOutputImage$Companion$SharedOutputImageImpl sharedOutputImage$Companion$SharedOutputImageImpl = (SharedOutputImage$Companion$SharedOutputImageImpl) outputImage.unwrapAs(Reflection.getOrCreateKotlinClass(SharedOutputImage$Companion$SharedOutputImageImpl.class));
                    acquire = sharedOutputImage$Companion$SharedOutputImageImpl != null ? sharedOutputImage$Companion$SharedOutputImageImpl.acquire() : new SharedOutputImage$Companion$SharedOutputImageImpl(outputImage, new MenuHostHelper(outputImage));
                }
                if (!((CompletableDeferredImpl) this.defaultValue).makeCompleting$kotlinx_coroutines_core(new OutputResult(acquire))) {
                    if (acquire instanceof AutoCloseable) {
                        acquire.close();
                    } else {
                        if (!(acquire instanceof ExecutorService)) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                            return;
                        }
                        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) acquire);
                    }
                }
            } else {
                ((CompletableDeferredImpl) this.defaultValue).makeCompleting$kotlinx_coroutines_core(new OutputResult(new OutputStatus((z || obj == null) ? obj == null ? 2 : ((OutputStatus) obj).value : 1)));
            }
            AtomicInt atomicInt = this.remainingOutputResults;
            atomicInt.getClass();
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = AtomicInt.FU;
            if (atomicIntegerFieldUpdater.decrementAndGet(atomicInt) == 0) {
                Iterator it = FrameState.this.listenerStates.iterator();
                it.getClass();
                if (it.hasNext()) {
                    throw Config.CC.m(it);
                }
                FrameState frameState = FrameState.this;
                AtomicInt atomicInt2 = frameState.remainingStreamCount;
                atomicInt2.getClass();
                if (atomicIntegerFieldUpdater.decrementAndGet(atomicInt2) != 0) {
                    return;
                }
                AtomicRef atomicRef = frameState.state;
                do {
                    obj2 = atomicRef.value;
                    State state3 = (State) obj2;
                    int ordinal = state3.ordinal();
                    if (ordinal == 0) {
                        state = State.STREAM_RESULTS_COMPLETE;
                    } else {
                        if (ordinal != 1) {
                            throw new IllegalStateException("Unexpected frame state for " + frameState + "! State is " + state3 + ' ');
                        }
                        state = state2;
                    }
                } while (!atomicRef.compareAndSet(obj2, state));
                Iterator it2 = frameState.listenerStates.iterator();
                it2.getClass();
                if (it2.hasNext()) {
                    throw Config.CC.m(it2);
                }
                if (state == state2) {
                    Iterator it3 = frameState.listenerStates.iterator();
                    it3.getClass();
                    if (it3.hasNext()) {
                        throw Config.CC.m(it3);
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State COMPLETE;
        public static final State FRAME_INFO_COMPLETE;
        public static final State STARTED;
        public static final State STREAM_RESULTS_COMPLETE;

        static {
            State state = new State("STARTED", 0);
            STARTED = state;
            State state2 = new State("FRAME_INFO_COMPLETE", 1);
            FRAME_INFO_COMPLETE = state2;
            State state3 = new State("STREAM_RESULTS_COMPLETE", 2);
            STREAM_RESULTS_COMPLETE = state3;
            State state4 = new State("COMPLETE", 3);
            COMPLETE = state4;
            $VALUES = new State[]{state, state2, state3, state4};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    static {
        AtomicLong atomicLong = new AtomicLong();
        atomicLong.value = 0L;
        frameIds = atomicLong;
    }

    public FrameState(RequestMetadata requestMetadata, long j, long j2, Set set) {
        Object obj;
        requestMetadata.getClass();
        set.getClass();
        this.frameNumber = j;
        this.frameTimestamp = j2;
        AtomicLong atomicLong = frameIds;
        atomicLong.getClass();
        this.frameId = AtomicLong.FU.incrementAndGet(atomicLong);
        this.frameInfoOutput = new FrameInfoOutput();
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        Iterator it = requestMetadata.getStreams().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int i = ((StreamId) it.next()).value;
            Iterator it2 = set.iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj = it2.next();
                    if (((CameraStream) obj).id == i) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            CameraStream cameraStream = (CameraStream) obj;
            if (cameraStream != null) {
                ArrayList arrayList = cameraStream.outputs;
                AtomicInt atomic = AtomicFU.atomic(arrayList.size());
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    createListBuilder.add(new ImageOutput(i, ((StreamGraphImpl.OutputStreamImpl) arrayList.get(i2)).id, atomic));
                }
            }
        }
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        this.imageOutputs = build;
        this.state = AtomicFU.atomic(State.STARTED);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(build, 10));
        ListIterator listIterator = build.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                this.remainingStreamCount = AtomicFU.atomic(CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList2)).size());
                this.listenerStates = new CopyOnWriteArrayList();
                return;
            }
            arrayList2.add(new StreamId(((ImageOutput) itr.next()).streamId));
        }
    }

    public final String toString() {
        return "Frame-" + ((Object) ("FrameId(value=" + this.frameId + ')')) + '(' + this.frameNumber + '@' + this.frameTimestamp + ')';
    }
}
