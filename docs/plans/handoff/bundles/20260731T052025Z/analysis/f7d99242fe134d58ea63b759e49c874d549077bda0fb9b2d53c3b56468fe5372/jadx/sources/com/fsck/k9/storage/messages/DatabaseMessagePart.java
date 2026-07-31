package com.fsck.k9.storage.messages;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DatabaseMessagePart {
    public final String boundary;
    public final String charset;
    public final String contentId;
    public final byte[] data;
    public final int dataLocation;
    public final Long decodedBodySize;
    public final String displayName;
    public final String encoding;
    public final byte[] epilogue;
    public final byte[] header;
    public final long id;
    public final String mimeType;
    public final long parent;
    public final byte[] preamble;
    public final int seq;
    public final String serverExtra;
    public final int type;

    public DatabaseMessagePart(long j, int i, long j2, int i2, String str, Long l, String str2, byte[] bArr, String str3, String str4, int i3, byte[] bArr2, byte[] bArr3, byte[] bArr4, String str5, String str6, String str7) {
        this.id = j;
        this.type = i;
        this.parent = j2;
        this.seq = i2;
        this.mimeType = str;
        this.decodedBodySize = l;
        this.displayName = str2;
        this.header = bArr;
        this.encoding = str3;
        this.charset = str4;
        this.dataLocation = i3;
        this.data = bArr2;
        this.preamble = bArr3;
        this.epilogue = bArr4;
        this.boundary = str5;
        this.contentId = str6;
        this.serverExtra = str7;
    }
}
