package com.google.zxing.common;

import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecoderResult {
    public final List byteSegments;
    public final String ecLevel;
    public AsyncTimeout.Companion other;
    public final byte[] rawBytes;
    public final int structuredAppendParity;
    public final int structuredAppendSequenceNumber;
    public final int symbologyModifier;
    public final String text;

    public DecoderResult(byte[] bArr, String str, ArrayList arrayList, String str2, int i, int i2, int i3) {
        this.rawBytes = bArr;
        this.text = str;
        this.byteSegments = arrayList;
        this.ecLevel = str2;
        this.structuredAppendParity = i2;
        this.structuredAppendSequenceNumber = i;
        this.symbologyModifier = i3;
    }
}
