package androidx.camera.camera2.pipe.internal;

import android.util.Log;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStatus;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.internal.FrameState;
import androidx.camera.camera2.pipe.media.ImageWrapper;
import androidx.camera.camera2.pipe.media.SharedOutputImage$Companion$SharedOutputImageImpl;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import kotlinx.coroutines.CompletableDeferredImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameImpl implements AutoCloseable {
    public final AtomicBoolean closed;
    public final FrameState frameState;
    public final Set imageStreams;

    public FrameImpl(FrameState frameState) {
        ListBuilder listBuilder = frameState.imageOutputs;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listBuilder, 10));
        ListIterator listIterator = listBuilder.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                break;
            } else {
                arrayList.add(new StreamId(((FrameState.ImageOutput) itr.next()).streamId));
            }
        }
        Set set = CollectionsKt.toSet(arrayList);
        this.frameState = frameState;
        this.imageStreams = set;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listBuilder, 10));
        ListIterator listIterator2 = listBuilder.listIterator(0);
        while (true) {
            ListBuilder.Itr itr2 = (ListBuilder.Itr) listIterator2;
            if (!itr2.hasNext()) {
                CollectionsKt.toSet(arrayList2);
                this.closed = AtomicFU.atomic(false);
                return;
            }
            arrayList2.add(new OutputId(((FrameState.ImageOutput) itr2.next()).outputId));
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        release();
    }

    public final void finalize() {
        if (release()) {
            Log.e("CXCP", "Failed to close " + this + "! This indicates a memory leak and could cause the camera to stall, or images to be lost.");
        }
    }

    public final boolean release() {
        if (!this.closed.compareAndSet()) {
            return false;
        }
        FrameState frameState = this.frameState;
        FrameState.FrameInfoOutput frameInfoOutput = frameState.frameInfoOutput;
        ListBuilder listBuilder = frameState.imageOutputs;
        AtomicInt atomicInt = (AtomicInt) frameInfoOutput.key;
        atomicInt.getClass();
        if (AtomicInt.FU.decrementAndGet(atomicInt) == 0) {
            ((CompletableDeferredImpl) frameInfoOutput.defaultValue).makeCompleting$kotlinx_coroutines_core(new OutputResult(new OutputStatus(2)));
        }
        int size = listBuilder.getSize();
        for (int i = 0; i < size; i++) {
            FrameState.ImageOutput imageOutput = (FrameState.ImageOutput) listBuilder.get(i);
            if (this.imageStreams.contains(new StreamId(imageOutput.streamId))) {
                AtomicInt atomicInt2 = (AtomicInt) imageOutput.key;
                atomicInt2.getClass();
                if (AtomicInt.FU.decrementAndGet(atomicInt2) == 0) {
                    ((CompletableDeferredImpl) imageOutput.defaultValue).makeCompleting$kotlinx_coroutines_core(new OutputResult(new OutputStatus(2)));
                    CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) imageOutput.defaultValue;
                    Object obj = null;
                    if (completableDeferredImpl.isCompleted() && !completableDeferredImpl.isCancelled()) {
                        Object obj2 = ((OutputResult) completableDeferredImpl.getCompletedInternal$kotlinx_coroutines_core()).result;
                        if (!(obj2 instanceof OutputStatus) && obj2 != null) {
                            obj = obj2;
                        }
                    }
                    ImageWrapper imageWrapper = (SharedOutputImage$Companion$SharedOutputImageImpl) obj;
                    if (imageWrapper != null) {
                        if (imageWrapper instanceof AutoCloseable) {
                            imageWrapper.close();
                        } else if (imageWrapper instanceof ExecutorService) {
                            OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) imageWrapper);
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                        }
                    }
                }
            }
        }
        return true;
    }

    public final String toString() {
        return this.frameState.toString();
    }
}
