package com.google.protobuf.nano;

import java.io.IOException;

/* loaded from: classes.dex */
public class CodedOutputByteBufferNano$OutOfSpaceException extends IOException {
    public static final long serialVersionUID = -6947486886997889499L;

    public CodedOutputByteBufferNano$OutOfSpaceException(int i, int i2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
    }
}
