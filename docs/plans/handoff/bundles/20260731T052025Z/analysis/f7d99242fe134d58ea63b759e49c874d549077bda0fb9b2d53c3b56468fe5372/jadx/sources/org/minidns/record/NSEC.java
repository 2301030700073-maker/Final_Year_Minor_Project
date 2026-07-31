package org.minidns.record;

import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NSEC extends Data {
    public static final Logger LOGGER = Logger.getLogger(NSEC.class.getName());
    public final DnsName next;
    public final byte[] typeBitmap;
    public final List types;

    public NSEC(DnsName dnsName, ArrayList arrayList) {
        this.next = dnsName;
        this.types = DesugarCollections.unmodifiableList(arrayList);
        this.typeBitmap = createTypeBitMap(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
    
        writeOutBlock(r5, r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] createTypeBitMap(java.util.ArrayList r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r10.size()
            r0.<init>(r1)
            java.util.Iterator r10 = r10.iterator()
        Ld:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L23
            java.lang.Object r1 = r10.next()
            org.minidns.record.Record$TYPE r1 = (org.minidns.record.Record.TYPE) r1
            int r1 = r1.value
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.add(r1)
            goto Ld
        L23:
            java.util.Collections.sort(r0)
            java.io.ByteArrayOutputStream r10 = new java.io.ByteArrayOutputStream
            r10.<init>()
            java.io.DataOutputStream r1 = new java.io.DataOutputStream
            r1.<init>(r10)
            r2 = 0
            java.util.Iterator r0 = r0.iterator()     // Catch: java.io.IOException -> L51
            r3 = -1
            r5 = r2
            r4 = r3
        L38:
            boolean r6 = r0.hasNext()     // Catch: java.io.IOException -> L51
            if (r6 == 0) goto L7c
            java.lang.Object r6 = r0.next()     // Catch: java.io.IOException -> L51
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.io.IOException -> L51
            r7 = 32
            if (r4 == r3) goto L53
            int r8 = r6.intValue()     // Catch: java.io.IOException -> L51
            int r8 = r8 >> 8
            if (r8 == r4) goto L63
            goto L53
        L51:
            r10 = move-exception
            goto L86
        L53:
            if (r4 == r3) goto L58
            writeOutBlock(r5, r1)     // Catch: java.io.IOException -> L51
        L58:
            int r4 = r6.intValue()     // Catch: java.io.IOException -> L51
            int r4 = r4 >> 8
            r1.writeByte(r4)     // Catch: java.io.IOException -> L51
            byte[] r5 = new byte[r7]     // Catch: java.io.IOException -> L51
        L63:
            int r8 = r6.intValue()     // Catch: java.io.IOException -> L51
            int r8 = r8 >> 3
            int r8 = r8 % r7
            int r6 = r6.intValue()     // Catch: java.io.IOException -> L51
            int r6 = r6 % 8
            r7 = r5[r8]     // Catch: java.io.IOException -> L51
            r9 = 128(0x80, float:1.8E-43)
            int r6 = r9 >> r6
            byte r6 = (byte) r6     // Catch: java.io.IOException -> L51
            r6 = r6 | r7
            byte r6 = (byte) r6     // Catch: java.io.IOException -> L51
            r5[r8] = r6     // Catch: java.io.IOException -> L51
            goto L38
        L7c:
            if (r4 == r3) goto L81
            writeOutBlock(r5, r1)     // Catch: java.io.IOException -> L51
        L81:
            byte[] r10 = r10.toByteArray()
            return r10
        L86:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r10)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.minidns.record.NSEC.createTypeBitMap(java.util.ArrayList):byte[]");
    }

    public static ArrayList readTypeBitMap(byte[] bArr) {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (bArr.length > i) {
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            int readUnsignedByte2 = dataInputStream.readUnsignedByte();
            for (int i2 = 0; i2 < readUnsignedByte2; i2++) {
                int readUnsignedByte3 = dataInputStream.readUnsignedByte();
                for (int i3 = 0; i3 < 8; i3++) {
                    if (((readUnsignedByte3 >> i3) & 1) > 0) {
                        int i4 = (7 - i3) + (i2 * 8) + (readUnsignedByte << 8);
                        Record.TYPE type = Record.TYPE.getType(i4);
                        if (type == Record.TYPE.UNKNOWN) {
                            LOGGER.warning("Skipping unknown type in type bitmap: " + i4);
                        } else {
                            arrayList.add(type);
                        }
                    }
                }
            }
            i += readUnsignedByte2 + 2;
        }
        return arrayList;
    }

    public static void writeOutBlock(byte[] bArr, DataOutputStream dataOutputStream) {
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] != 0) {
                i = i2 + 1;
            }
        }
        dataOutputStream.writeByte(i);
        for (int i3 = 0; i3 < i; i3++) {
            dataOutputStream.writeByte(bArr[i3]);
        }
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        this.next.writeToStream(dataOutputStream);
        dataOutputStream.write(this.typeBitmap);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) this.next);
        sb.append('.');
        for (Record.TYPE type : this.types) {
            sb.append(' ');
            sb.append(type);
        }
        return sb.toString();
    }
}
