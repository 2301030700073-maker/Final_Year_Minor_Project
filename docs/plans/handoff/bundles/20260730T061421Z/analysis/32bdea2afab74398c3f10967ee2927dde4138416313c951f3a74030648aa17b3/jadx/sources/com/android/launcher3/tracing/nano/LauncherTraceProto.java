package com.android.launcher3.tracing.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class LauncherTraceProto extends e {
    public TouchInteractionServiceProto touchInteractionService = null;

    public LauncherTraceProto() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        TouchInteractionServiceProto touchInteractionServiceProto = this.touchInteractionService;
        if (touchInteractionServiceProto != null) {
            return 0 + b.d(1, touchInteractionServiceProto);
        }
        return 0;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                if (this.touchInteractionService == null) {
                    this.touchInteractionService = new TouchInteractionServiceProto();
                }
                aVar.d(this.touchInteractionService);
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        TouchInteractionServiceProto touchInteractionServiceProto = this.touchInteractionService;
        if (touchInteractionServiceProto != null) {
            bVar.o(1, touchInteractionServiceProto);
        }
    }
}
