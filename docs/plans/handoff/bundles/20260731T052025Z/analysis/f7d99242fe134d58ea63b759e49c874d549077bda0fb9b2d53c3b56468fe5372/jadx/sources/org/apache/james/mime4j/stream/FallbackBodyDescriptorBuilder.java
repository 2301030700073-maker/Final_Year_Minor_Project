package org.apache.james.mime4j.stream;

import org.apache.james.mime4j.codec.DecodeMonitor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FallbackBodyDescriptorBuilder {
    public String boundary;
    public String charset;
    public long contentLength;
    public String mediaType;
    public String mimeType;
    public final DecodeMonitor monitor;
    public final String parentMimeType;
    public String subType;
    public String transferEncoding;

    public FallbackBodyDescriptorBuilder(String str, DecodeMonitor decodeMonitor) {
        this.parentMimeType = str;
        this.monitor = decodeMonitor == null ? DecodeMonitor.SILENT : decodeMonitor;
        this.mimeType = null;
        this.subType = null;
        this.mediaType = null;
        this.boundary = null;
        this.charset = null;
        this.transferEncoding = null;
        this.contentLength = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x02e7 A[LOOP:0: B:41:0x02e1->B:43:0x02e7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0338  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addField(org.apache.james.mime4j.stream.RawField r20) {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.stream.FallbackBodyDescriptorBuilder.addField(org.apache.james.mime4j.stream.RawField):void");
    }
}
