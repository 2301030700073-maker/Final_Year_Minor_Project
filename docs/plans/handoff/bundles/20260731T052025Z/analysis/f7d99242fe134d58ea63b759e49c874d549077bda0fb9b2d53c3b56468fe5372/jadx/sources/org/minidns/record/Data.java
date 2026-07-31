package org.minidns.record;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Data {
    public byte[] bytes;
    public transient Integer hashCodeCache;

    public final boolean equals(Object obj) {
        if (!(obj instanceof Data)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        Data data = (Data) obj;
        data.setBytes();
        setBytes();
        return Arrays.equals(this.bytes, data.bytes);
    }

    public final int hashCode() {
        if (this.hashCodeCache == null) {
            setBytes();
            this.hashCodeCache = Integer.valueOf(Arrays.hashCode(this.bytes));
        }
        return this.hashCodeCache.intValue();
    }

    public abstract void serialize(DataOutputStream dataOutputStream);

    public final void setBytes() {
        if (this.bytes != null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            serialize(new DataOutputStream(byteArrayOutputStream));
            this.bytes = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
        }
    }
}
