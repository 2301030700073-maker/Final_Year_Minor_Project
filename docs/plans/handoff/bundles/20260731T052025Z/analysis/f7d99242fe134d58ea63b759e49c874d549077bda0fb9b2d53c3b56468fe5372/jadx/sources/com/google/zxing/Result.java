package com.google.zxing;

import java.util.EnumMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Result {
    public final byte[] rawBytes;
    public EnumMap resultMetadata;
    public final String text;

    public Result(String str, byte[] bArr) {
        System.currentTimeMillis();
        this.text = str;
        this.rawBytes = bArr;
        this.resultMetadata = null;
    }

    public final void putMetadata(ResultMetadataType resultMetadataType, Object obj) {
        if (this.resultMetadata == null) {
            this.resultMetadata = new EnumMap(ResultMetadataType.class);
        }
        this.resultMetadata.put((EnumMap) resultMetadataType, (ResultMetadataType) obj);
    }

    public final String toString() {
        return this.text;
    }
}
