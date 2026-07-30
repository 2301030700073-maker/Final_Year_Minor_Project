package com.android.launcher3.tracing.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class LauncherTraceEntryProto extends e {
    public static volatile LauncherTraceEntryProto[] _emptyArray;
    public long elapsedRealtimeNanos = 0;
    public LauncherTraceProto launcher = null;

    public LauncherTraceEntryProto() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int g = this.elapsedRealtimeNanos != 0 ? 0 + b.g(1) + 8 : 0;
        LauncherTraceProto launcherTraceProto = this.launcher;
        return launcherTraceProto != null ? g + b.d(3, launcherTraceProto) : g;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 9) {
                this.elapsedRealtimeNanos = aVar.h();
            } else if (k == 26) {
                if (this.launcher == null) {
                    this.launcher = new LauncherTraceProto();
                }
                aVar.d(this.launcher);
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        long j = this.elapsedRealtimeNanos;
        if (j != 0) {
            bVar.l(1, j);
        }
        LauncherTraceProto launcherTraceProto = this.launcher;
        if (launcherTraceProto != null) {
            bVar.o(3, launcherTraceProto);
        }
    }
}
