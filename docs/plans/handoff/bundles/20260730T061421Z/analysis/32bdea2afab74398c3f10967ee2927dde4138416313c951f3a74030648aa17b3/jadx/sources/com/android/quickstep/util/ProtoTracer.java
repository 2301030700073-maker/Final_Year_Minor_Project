package com.android.quickstep.util;

import android.content.Context;
import android.os.SystemClock;
import c.b.b.a1.e;
import com.android.launcher3.tracing.nano.LauncherTraceEntryProto;
import com.android.launcher3.tracing.nano.LauncherTraceFileProto;
import com.android.launcher3.tracing.nano.LauncherTraceProto;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.util.ProtoTracer;
import com.android.systemui.shared.tracing.FrameProtoTracer;
import com.android.systemui.shared.tracing.ProtoTraceable;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;

/* loaded from: classes.dex */
public class ProtoTracer implements FrameProtoTracer.ProtoTraceParams {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.b.c2.p
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new ProtoTracer(context);
        }
    });
    public static final long MAGIC_NUMBER_VALUE = 4851032461007867468L;
    public static final String TAG = "ProtoTracer";
    public final Context mContext;
    public final FrameProtoTracer mProtoTracer = new FrameProtoTracer(this);

    public ProtoTracer(Context context) {
        this.mContext = context;
    }

    public void add(ProtoTraceable protoTraceable) {
        this.mProtoTracer.add(protoTraceable);
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public File getTraceFile() {
        return new File(this.mContext.getFilesDir(), "launcher_trace.pb");
    }

    public void remove(ProtoTraceable protoTraceable) {
        this.mProtoTracer.remove(protoTraceable);
    }

    public void scheduleFrameUpdate() {
        this.mProtoTracer.scheduleFrameUpdate();
    }

    public void start() {
        this.mProtoTracer.start();
    }

    public void stop() {
        this.mProtoTracer.stop();
    }

    public void update() {
        this.mProtoTracer.update();
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public LauncherTraceFileProto getEncapsulatingTraceProto() {
        return new LauncherTraceFileProto();
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public byte[] getProtoBytes(e eVar) {
        return e.toByteArray(eVar);
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public int getProtoSize(e eVar) {
        if (eVar.cachedSize < 0) {
            eVar.getSerializedSize();
        }
        return eVar.cachedSize;
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public byte[] serializeEncapsulatingProto(LauncherTraceFileProto launcherTraceFileProto, Queue queue) {
        launcherTraceFileProto.magicNumber = MAGIC_NUMBER_VALUE;
        launcherTraceFileProto.entry = (LauncherTraceEntryProto[]) queue.toArray(new LauncherTraceEntryProto[0]);
        return e.toByteArray(launcherTraceFileProto);
    }

    @Override // com.android.systemui.shared.tracing.FrameProtoTracer.ProtoTraceParams
    public LauncherTraceEntryProto updateBufferProto(LauncherTraceEntryProto launcherTraceEntryProto, ArrayList arrayList) {
        if (launcherTraceEntryProto == null) {
            launcherTraceEntryProto = new LauncherTraceEntryProto();
        }
        launcherTraceEntryProto.elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        LauncherTraceProto launcherTraceProto = launcherTraceEntryProto.launcher;
        if (launcherTraceProto == null) {
            launcherTraceProto = new LauncherTraceProto();
        }
        launcherTraceEntryProto.launcher = launcherTraceProto;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ProtoTraceable) it.next()).writeToProto(launcherTraceEntryProto.launcher);
        }
        return launcherTraceEntryProto;
    }
}
