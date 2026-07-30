package com.facebook.ads.redexgen.core;

import com.google.android.exoplayer2.Metadata;
import com.google.android.exoplayer2.extractor.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class BU extends V4 {
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final EventMessage A00(C2070fq c2070fq) {
        return new EventMessage((String) AbstractC2011es.A01(c2070fq.A0U()), (String) AbstractC2011es.A01(c2070fq.A0U()), c2070fq.A0P(), c2070fq.A0P(), Arrays.copyOfRange(c2070fq.A0l(), c2070fq.A09(), c2070fq.A0A()));
    }

    @Override // com.facebook.ads.redexgen.core.V4
    public final Metadata A0R(Bi bi, ByteBuffer byteBuffer) {
        return new Metadata(A00(new C2070fq(byteBuffer.array(), byteBuffer.limit())));
    }
}
