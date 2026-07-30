package defpackage;

import com.google.protobuf.Ccatch;
import j$.util.Iterator;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* renamed from: o6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3429o6 implements Iterable<Byte>, Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final Ctry f14685do = new Ctry(Ccatch.f12046do);

    /* renamed from: for, reason: not valid java name */
    public int f14686for = 0;

    /* renamed from: o6$case, reason: invalid class name */
    public static final class Ccase {
    }

    /* renamed from: o6$do, reason: invalid class name */
    public static abstract class Cdo implements Iterator, j$.util.Iterator {
        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            C3252l6 c3252l6 = (C3252l6) this;
            int i = c3252l6.f14093for;
            if (i >= c3252l6.f14094new) {
                throw new NoSuchElementException();
            }
            c3252l6.f14093for = i + 1;
            return Byte.valueOf(c3252l6.f14092do.mo7683else(i));
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: o6$for, reason: invalid class name */
    public static final class Cfor extends Ctry {

        /* renamed from: new, reason: not valid java name */
        public final int f14687new;

        /* renamed from: try, reason: not valid java name */
        public final int f14688try;

        public Cfor(byte[] bArr, int i, int i2) {
            super(bArr);
            AbstractC3429o6.m7679case(i, i + i2, bArr.length);
            this.f14687new = i;
            this.f14688try = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // defpackage.AbstractC3429o6.Ctry, defpackage.AbstractC3429o6
        /* renamed from: else */
        public final byte mo7683else(int i) {
            return this.f14689do[this.f14687new + i];
        }

        @Override // defpackage.AbstractC3429o6.Ctry
        /* renamed from: final, reason: not valid java name */
        public final int mo7687final() {
            return this.f14687new;
        }

        @Override // defpackage.AbstractC3429o6.Ctry, defpackage.AbstractC3429o6
        public final int size() {
            return this.f14688try;
        }

        /* renamed from: super, reason: not valid java name */
        public final void m7688super(byte[] bArr, int i) {
            System.arraycopy(this.f14689do, this.f14687new + 0, bArr, 0, i);
        }

        @Override // defpackage.AbstractC3429o6.Ctry, defpackage.AbstractC3429o6
        /* renamed from: try */
        public final byte mo7686try(int i) {
            int i2 = this.f14688try;
            if (((i2 - (i + 1)) | i) >= 0) {
                return this.f14689do[this.f14687new + i];
            }
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(V1.m2494case("Index < 0: ", i));
            }
            throw new ArrayIndexOutOfBoundsException(defpackage.Cif.m6918new("Index > length: ", i, ", ", i2));
        }

        public Object writeReplace() {
            byte[] bArr;
            int i = this.f14688try;
            if (i == 0) {
                bArr = Ccatch.f12046do;
            } else {
                byte[] bArr2 = new byte[i];
                m7688super(bArr2, i);
                bArr = bArr2;
            }
            return new Ctry(bArr);
        }
    }

    /* renamed from: o6$if, reason: invalid class name */
    public static final class Cif {
    }

    /* renamed from: o6$new, reason: invalid class name */
    public static abstract class Cnew extends AbstractC3429o6 {
        @Override // defpackage.AbstractC3429o6, java.lang.Iterable
        public final java.util.Iterator<Byte> iterator() {
            return new C3252l6(this);
        }
    }

    /* renamed from: o6$try, reason: invalid class name */
    public static class Ctry extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f14689do;

        public Ctry(byte[] bArr) {
            bArr.getClass();
            this.f14689do = bArr;
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: break */
        public final Ctry mo7680break(int i) {
            int m7679case = AbstractC3429o6.m7679case(0, i, size());
            if (m7679case == 0) {
                return AbstractC3429o6.f14685do;
            }
            return new Cfor(this.f14689do, mo7687final() + 0, m7679case);
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: catch */
        public final String mo7681catch(Charset charset) {
            return new String(this.f14689do, mo7687final(), size(), charset);
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: const */
        public final void mo7682const(AbstractC3134j6 abstractC3134j6) {
            abstractC3134j6.mo7037super(this.f14689do, mo7687final(), size());
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: else */
        public byte mo7683else(int i) {
            return this.f14689do[i];
        }

        @Override // defpackage.AbstractC3429o6
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC3429o6) || size() != ((AbstractC3429o6) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof Ctry)) {
                return obj.equals(this);
            }
            Ctry ctry = (Ctry) obj;
            int i = this.f14686for;
            int i2 = ctry.f14686for;
            if (i != 0 && i2 != 0 && i != i2) {
                return false;
            }
            int size = size();
            if (size > ctry.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (0 + size > ctry.size()) {
                StringBuilder m7821else = Cpublic.m7821else("Ran off end of other: 0, ", size, ", ");
                m7821else.append(ctry.size());
                throw new IllegalArgumentException(m7821else.toString());
            }
            int mo7687final = mo7687final() + size;
            int mo7687final2 = mo7687final();
            int mo7687final3 = ctry.mo7687final() + 0;
            while (mo7687final2 < mo7687final) {
                if (this.f14689do[mo7687final2] != ctry.f14689do[mo7687final3]) {
                    return false;
                }
                mo7687final2++;
                mo7687final3++;
            }
            return true;
        }

        /* renamed from: final */
        public int mo7687final() {
            return 0;
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: goto */
        public final boolean mo7684goto() {
            int mo7687final = mo7687final();
            return PJ.f2772do.mo1767if(this.f14689do, mo7687final, size() + mo7687final) == 0;
        }

        @Override // defpackage.AbstractC3429o6
        public int size() {
            return this.f14689do.length;
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: this */
        public final int mo7685this(int i, int i2) {
            int mo7687final = mo7687final() + 0;
            Charset charset = Ccatch.f12045do;
            for (int i3 = mo7687final; i3 < mo7687final + i2; i3++) {
                i = (i * 31) + this.f14689do[i3];
            }
            return i;
        }

        @Override // defpackage.AbstractC3429o6
        /* renamed from: try */
        public byte mo7686try(int i) {
            return this.f14689do[i];
        }
    }

    static {
        if (J0.m997do()) {
            new Ccase();
        } else {
            new Cif();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m7679case(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(Creturn.m7981if("Beginning index: ", i, " < 0"));
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(defpackage.Cif.m6918new("Beginning index larger than ending index: ", i, ", ", i2));
        }
        throw new IndexOutOfBoundsException(defpackage.Cif.m6918new("End index: ", i2, " >= ", i3));
    }

    /* renamed from: break, reason: not valid java name */
    public abstract Ctry mo7680break(int i);

    /* renamed from: catch, reason: not valid java name */
    public abstract String mo7681catch(Charset charset);

    /* renamed from: const, reason: not valid java name */
    public abstract void mo7682const(AbstractC3134j6 abstractC3134j6);

    /* renamed from: else, reason: not valid java name */
    public abstract byte mo7683else(int i);

    public abstract boolean equals(Object obj);

    /* renamed from: goto, reason: not valid java name */
    public abstract boolean mo7684goto();

    public final int hashCode() {
        int i = this.f14686for;
        if (i == 0) {
            int size = size();
            i = mo7685this(size, size);
            if (i == 0) {
                i = 1;
            }
            this.f14686for = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<Byte> iterator() {
        return new C3252l6(this);
    }

    public abstract int size();

    /* renamed from: this, reason: not valid java name */
    public abstract int mo7685this(int i, int i2);

    public final String toString() {
        String str;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            str = C0315Kc.m1171native(this);
        } else {
            str = C0315Kc.m1171native(mo7680break(47)) + "...";
        }
        objArr[2] = str;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    /* renamed from: try, reason: not valid java name */
    public abstract byte mo7686try(int i);
}
