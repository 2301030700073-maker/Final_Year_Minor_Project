package com.android.systemui.shared.tracing;

import android.os.Trace;
import android.util.Log;
import android.view.Choreographer;
import com.android.internal.util.TraceBuffer;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class FrameProtoTracer implements Choreographer.FrameCallback {
    public static final int BUFFER_CAPACITY = 1048576;
    public static final String TAG = "FrameProtoTracer";
    public volatile boolean mEnabled;
    public boolean mFrameScheduled;
    public final ProtoTraceParams mParams;
    public final File mTraceFile;
    public final Object mLock = new Object();
    public final Queue mPool = new LinkedList();
    public final ArrayList mTraceables = new ArrayList();
    public final ArrayList mTmpTraceables = new ArrayList();
    public final TraceBuffer.ProtoProvider mProvider = new TraceBuffer.ProtoProvider() { // from class: com.android.systemui.shared.tracing.FrameProtoTracer.1
        public byte[] getBytes(Object obj) {
            return FrameProtoTracer.this.mParams.getProtoBytes(obj);
        }

        public int getItemSize(Object obj) {
            return FrameProtoTracer.this.mParams.getProtoSize(obj);
        }

        public void write(Object obj, Queue queue, OutputStream outputStream) {
            outputStream.write(FrameProtoTracer.this.mParams.serializeEncapsulatingProto(obj, queue));
        }
    };
    public final TraceBuffer mBuffer = new TraceBuffer(BUFFER_CAPACITY, this.mProvider, new Consumer() { // from class: com.android.systemui.shared.tracing.FrameProtoTracer.2
        @Override // java.util.function.Consumer
        public void accept(Object obj) {
            FrameProtoTracer.this.onProtoDequeued(obj);
        }
    });
    public final Choreographer mChoreographer = Choreographer.getMainThreadInstance();

    public interface ProtoTraceParams {
        Object getEncapsulatingTraceProto();

        byte[] getProtoBytes(Object obj);

        int getProtoSize(Object obj);

        File getTraceFile();

        byte[] serializeEncapsulatingProto(Object obj, Queue queue);

        Object updateBufferProto(Object obj, ArrayList arrayList);
    }

    public FrameProtoTracer(ProtoTraceParams protoTraceParams) {
        this.mParams = protoTraceParams;
        this.mTraceFile = protoTraceParams.getTraceFile();
    }

    private void logState() {
        synchronized (this.mLock) {
            this.mTmpTraceables.addAll(this.mTraceables);
        }
        this.mBuffer.add(this.mParams.updateBufferProto(this.mPool.poll(), this.mTmpTraceables));
        this.mTmpTraceables.clear();
        this.mFrameScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProtoDequeued(Object obj) {
        this.mPool.add(obj);
    }

    private void writeToFile() {
        try {
            try {
                Trace.beginSection("ProtoTracer.writeToFile");
                this.mBuffer.writeTraceToFile(this.mTraceFile, this.mParams.getEncapsulatingTraceProto());
            } catch (IOException e) {
                Log.e(TAG, "Unable to write buffer to file", e);
            }
        } finally {
            Trace.endSection();
        }
    }

    public void add(ProtoTraceable protoTraceable) {
        synchronized (this.mLock) {
            this.mTraceables.add(protoTraceable);
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        logState();
    }

    public float getBufferUsagePct() {
        return this.mBuffer.getBufferSize() / 1048576.0f;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void remove(ProtoTraceable protoTraceable) {
        synchronized (this.mLock) {
            this.mTraceables.remove(protoTraceable);
        }
    }

    public void scheduleFrameUpdate() {
        if (!this.mEnabled || this.mFrameScheduled) {
            return;
        }
        this.mChoreographer.postFrameCallback(this);
        this.mFrameScheduled = true;
    }

    public void start() {
        synchronized (this.mLock) {
            if (this.mEnabled) {
                return;
            }
            this.mBuffer.resetBuffer();
            this.mEnabled = true;
            logState();
        }
    }

    public void stop() {
        synchronized (this.mLock) {
            if (this.mEnabled) {
                this.mEnabled = false;
                writeToFile();
            }
        }
    }

    public void update() {
        if (this.mEnabled) {
            logState();
        }
    }
}
