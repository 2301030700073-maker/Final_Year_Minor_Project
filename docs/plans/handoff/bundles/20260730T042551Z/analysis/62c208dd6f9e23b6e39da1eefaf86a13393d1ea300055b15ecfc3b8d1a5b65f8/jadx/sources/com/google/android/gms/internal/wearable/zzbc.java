package com.google.android.gms.internal.wearable;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzbc extends IOException {
    public zzbc() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    public zzbc(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    public zzbc(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
