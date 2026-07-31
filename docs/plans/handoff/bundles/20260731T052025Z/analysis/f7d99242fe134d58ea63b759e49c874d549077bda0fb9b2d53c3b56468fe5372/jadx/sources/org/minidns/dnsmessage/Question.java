package org.minidns.dnsmessage;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Question {
    public byte[] byteArray;
    public final Record.CLASS clazz;
    public final DnsName name;
    public final Record.TYPE type;

    public Question(DataInputStream dataInputStream, byte[] bArr) {
        this.name = DnsName.parse(dataInputStream, bArr);
        this.type = Record.TYPE.getType(dataInputStream.readUnsignedShort());
        this.clazz = (Record.CLASS) Record.CLASS.INVERSE_LUT.get(Integer.valueOf(dataInputStream.readUnsignedShort()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Question) {
            return Arrays.equals(toByteArray(), ((Question) obj).toByteArray());
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(toByteArray());
    }

    public final byte[] toByteArray() {
        if (this.byteArray == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                this.name.writeToStream(dataOutputStream);
                dataOutputStream.writeShort(this.type.value);
                dataOutputStream.writeShort(this.clazz.value);
                dataOutputStream.flush();
                this.byteArray = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
        return this.byteArray;
    }

    public final String toString() {
        return this.name.rawAce + ".\t" + String.valueOf(this.clazz) + "\t" + String.valueOf(this.type);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Question(DnsName dnsName, Record.TYPE type) {
        this(dnsName, type, 0);
        Record.CLASS r0 = Record.CLASS.IN;
    }

    public Question(DnsName dnsName, Record.TYPE type, int i) {
        Record.CLASS r3 = Record.CLASS.IN;
        this.name = dnsName;
        this.type = type;
        this.clazz = r3;
    }
}
