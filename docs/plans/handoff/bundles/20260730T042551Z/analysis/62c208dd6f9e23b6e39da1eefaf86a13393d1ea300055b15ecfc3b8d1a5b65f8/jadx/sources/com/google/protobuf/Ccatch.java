package com.google.protobuf;

import com.google.protobuf.Cnew;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f12045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f12046do;

    /* renamed from: com.google.protobuf.catch$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        int mo1834do();
    }

    /* renamed from: com.google.protobuf.catch$for, reason: invalid class name */
    public interface Cfor<E> extends List<E>, RandomAccess {
        /* renamed from: do, reason: not valid java name */
        boolean mo6188do();

        /* renamed from: if, reason: not valid java name */
        void mo6189if();

        /* renamed from: instanceof */
        Cfor<E> mo6180instanceof(int i);
    }

    /* renamed from: com.google.protobuf.catch$if, reason: invalid class name */
    public interface Cif extends Cfor<Integer> {
    }

    static {
        Charset.forName("US-ASCII");
        f12045do = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f12046do = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new Cnew.Cdo(bArr, 0, 0, false).m6270do(0);
        } catch (Cclass e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m6187do(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
