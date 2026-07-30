package com.android.launcher3.tracing.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class TouchInteractionServiceProto extends e {
    public boolean serviceConnected = false;

    public TouchInteractionServiceProto() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        boolean z = this.serviceConnected;
        if (z) {
            return 0 + b.a(1, z);
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
            if (k == 8) {
                this.serviceConnected = aVar.b();
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        boolean z = this.serviceConnected;
        if (z) {
            bVar.k(1, z);
        }
    }
}
