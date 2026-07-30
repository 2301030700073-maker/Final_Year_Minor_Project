package com.google.protobuf;

import c.b.b.AbstractC0457i;
import c.b.b.C0447d;
import c.b.b.C0455h;
import c.b.b.C0459j;
import c.b.b.C0463l;
import c.b.b.C0465m;
import c.b.b.InterfaceC0461k;
import c.b.b.P;
import java.io.Serializable;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class ByteString implements Iterable, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteString f3492a = new LiteralByteString(P.f3142b);

    /* renamed from: b, reason: collision with root package name */
    public static final InterfaceC0461k f3493b;
    public int hash = 0;

    public abstract class LeafByteString extends ByteString {
    }

    public class LiteralByteString extends LeafByteString {
        public static final long serialVersionUID = 1;
        public final byte[] bytes;

        public LiteralByteString(byte[] bArr) {
            if (bArr == null) {
                throw null;
            }
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int i = this.hash;
            int i2 = literalByteString.hash;
            if (i != 0 && i2 != 0 && i != i2) {
                return false;
            }
            int size = size();
            if (size > literalByteString.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (0 + size > literalByteString.size()) {
                throw new IllegalArgumentException("Ran off end of other: 0, " + size + ", " + literalByteString.size());
            }
            byte[] bArr = this.bytes;
            byte[] bArr2 = literalByteString.bytes;
            int o = o() + size;
            int o2 = o();
            int o3 = literalByteString.o() + 0;
            while (o2 < o) {
                if (bArr[o2] != bArr2[o3]) {
                    return false;
                }
                o2++;
                o3++;
            }
            return true;
        }

        @Override // com.google.protobuf.ByteString
        public byte g(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public byte k(int i) {
            return this.bytes[i];
        }

        public int o() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }
    }

    static {
        f3493b = C0447d.a() ? new C0465m(null) : new C0459j(null);
    }

    public static int h(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
    }

    public static ByteString i(byte[] bArr, int i, int i2) {
        h(i, i + i2, bArr.length);
        return new LiteralByteString(f3493b.a(bArr, i, i2));
    }

    public static ByteString j(String str) {
        return new LiteralByteString(str.getBytes(P.f3141a));
    }

    public static C0463l m(int i) {
        return new C0463l(i, null);
    }

    public abstract boolean equals(Object obj);

    public abstract byte g(int i);

    public final int hashCode() {
        int i = this.hash;
        if (i == 0) {
            int size = size();
            LiteralByteString literalByteString = (LiteralByteString) this;
            i = P.g(size, literalByteString.bytes, literalByteString.o() + 0, size);
            if (i == 0) {
                i = 1;
            }
            this.hash = i;
        }
        return i;
    }

    public abstract byte k(int i);

    @Override // java.lang.Iterable
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public AbstractC0457i iterator() {
        return new C0455h(this);
    }

    public final String n() {
        Charset charset = P.f3141a;
        if (size() == 0) {
            return "";
        }
        LiteralByteString literalByteString = (LiteralByteString) this;
        return new String(literalByteString.bytes, literalByteString.o(), literalByteString.size(), charset);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
