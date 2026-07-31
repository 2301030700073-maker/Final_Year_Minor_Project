package com.google.protobuf;

import java.io.IOException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CodedOutputStream$OutOfSpaceException extends IOException {
    private static final long serialVersionUID = -6947486886997889499L;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CodedOutputStream$OutOfSpaceException(int r5, int r6, int r7, java.lang.IndexOutOfBoundsException r8) {
        /*
            r4 = this;
            long r0 = (long) r5
            long r5 = (long) r6
            java.util.Locale r2 = java.util.Locale.US
            java.lang.String r2 = "Pos: "
            java.lang.String r3 = ", limit: "
            java.lang.StringBuilder r0 = androidx.compose.ui.Modifier.CC.m(r0, r2, r3)
            r0.append(r5)
            java.lang.String r5 = ", len: "
            r0.append(r5)
            r0.append(r7)
            java.lang.String r5 = r0.toString()
            java.lang.String r6 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
            java.lang.String r5 = r6.concat(r5)
            r4.<init>(r5, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedOutputStream$OutOfSpaceException.<init>(int, int, int, java.lang.IndexOutOfBoundsException):void");
    }
}
