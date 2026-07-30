package com.google.protobuf;

import c.a.c.a.a;
import java.io.IOException;

/* loaded from: classes.dex */
public class CodedOutputStream$OutOfSpaceException extends IOException {
    public static final long serialVersionUID = -6947486886997889499L;

    public CodedOutputStream$OutOfSpaceException() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    public CodedOutputStream$OutOfSpaceException(String str) {
        super(a.e("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str));
    }

    public CodedOutputStream$OutOfSpaceException(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }

    public CodedOutputStream$OutOfSpaceException(String str, Throwable th) {
        super(a.e("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), th);
    }
}
