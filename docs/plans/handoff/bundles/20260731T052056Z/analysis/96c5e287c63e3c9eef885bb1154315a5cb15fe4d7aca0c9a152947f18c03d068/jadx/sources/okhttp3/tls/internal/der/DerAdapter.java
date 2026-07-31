package okhttp3.tls.internal.der;

import androidx.compose.runtime.Latch;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface DerAdapter {
    BasicDerAdapter asSequenceOf(String str, long j);

    Object fromDer(DerReader derReader);

    boolean matches(DerHeader derHeader);

    void toDer(Latch latch, Object obj);
}
