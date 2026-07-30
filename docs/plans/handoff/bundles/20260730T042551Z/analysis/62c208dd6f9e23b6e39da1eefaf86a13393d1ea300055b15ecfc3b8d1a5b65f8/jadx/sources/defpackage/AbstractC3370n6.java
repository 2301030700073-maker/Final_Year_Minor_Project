package defpackage;

import androidx.datastore.preferences.protobuf.Cthrow;
import j$.util.Iterator;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* renamed from: n6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3370n6 implements Iterable<Byte>, Serializable {

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f14460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f14461do = new Ctry(Cthrow.f6656do);

    /* renamed from: for, reason: not valid java name */
    public int f14462for = 0;

    /* renamed from: n6$case, reason: invalid class name */
    public static final class Ccase implements Cfor {
        @Override // defpackage.AbstractC3370n6.Cfor
        /* renamed from: do, reason: not valid java name */
        public final byte[] mo7557do(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    /* renamed from: n6$do, reason: invalid class name */
    public static abstract class Cdo implements Iterator, j$.util.Iterator {
        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            C3311m6 c3311m6 = (C3311m6) this;
            int i = c3311m6.f14312for;
            if (i >= c3311m6.f14313new) {
                throw new NoSuchElementException();
            }
            c3311m6.f14312for = i + 1;
            return Byte.valueOf(c3311m6.f14311do.mo7554goto(i));
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: n6$for, reason: invalid class name */
    public interface Cfor {
        /* renamed from: do */
        byte[] mo7557do(byte[] bArr, int i, int i2);
    }

    /* renamed from: n6$if, reason: invalid class name */
    public static final class Cif implements Cfor {
        @Override // defpackage.AbstractC3370n6.Cfor
        /* renamed from: do */
        public final byte[] mo7557do(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* renamed from: n6$new, reason: invalid class name */
    public static abstract class Cnew extends AbstractC3370n6 {
        @Override // defpackage.AbstractC3370n6, java.lang.Iterable
        public final java.util.Iterator<Byte> iterator() {
            return new C3311m6(this);
        }
    }

    /* renamed from: n6$try, reason: invalid class name */
    public static class Ctry extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final byte[] f14463do;

        public Ctry(byte[] bArr) {
            bArr.getClass();
            this.f14463do = bArr;
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: break */
        public final int mo7551break(int i, int i2) {
            int m7558final = m7558final() + 0;
            Charset charset = Cthrow.f6655do;
            for (int i3 = m7558final; i3 < m7558final + i2; i3++) {
                i = (i * 31) + this.f14463do[i3];
            }
            return i;
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: catch */
        public final String mo7552catch(Charset charset) {
            return new String(this.f14463do, m7558final(), size(), charset);
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: const */
        public final void mo7553const(AbstractC3134j6 abstractC3134j6) {
            abstractC3134j6.mo7037super(this.f14463do, m7558final(), size());
        }

        @Override // defpackage.AbstractC3370n6
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC3370n6) || size() != ((AbstractC3370n6) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof Ctry)) {
                return obj.equals(this);
            }
            Ctry ctry = (Ctry) obj;
            int i = this.f14462for;
            int i2 = ctry.f14462for;
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
            int m7558final = m7558final() + size;
            int m7558final2 = m7558final();
            int m7558final3 = ctry.m7558final() + 0;
            while (m7558final2 < m7558final) {
                if (this.f14463do[m7558final2] != ctry.f14463do[m7558final3]) {
                    return false;
                }
                m7558final2++;
                m7558final3++;
            }
            return true;
        }

        /* renamed from: final, reason: not valid java name */
        public int m7558final() {
            return 0;
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: goto */
        public byte mo7554goto(int i) {
            return this.f14463do[i];
        }

        @Override // defpackage.AbstractC3370n6
        public int size() {
            return this.f14463do.length;
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: this */
        public final boolean mo7555this() {
            int m7558final = m7558final();
            return OJ.f2633do.mo1667for(this.f14463do, m7558final, size() + m7558final) == 0;
        }

        @Override // defpackage.AbstractC3370n6
        /* renamed from: try */
        public byte mo7556try(int i) {
            return this.f14463do[i];
        }
    }

    static {
        f14460do = K0.m1100do() ? new Ccase() : new Cif();
    }

    /* renamed from: case, reason: not valid java name */
    public static int m7549case(int i, int i2, int i3) {
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

    /* renamed from: else, reason: not valid java name */
    public static Ctry m7550else(byte[] bArr, int i, int i2) {
        m7549case(i, i + i2, bArr.length);
        return new Ctry(f14460do.mo7557do(bArr, i, i2));
    }

    /* renamed from: break, reason: not valid java name */
    public abstract int mo7551break(int i, int i2);

    /* renamed from: catch, reason: not valid java name */
    public abstract String mo7552catch(Charset charset);

    /* renamed from: const, reason: not valid java name */
    public abstract void mo7553const(AbstractC3134j6 abstractC3134j6);

    public abstract boolean equals(Object obj);

    /* renamed from: goto, reason: not valid java name */
    public abstract byte mo7554goto(int i);

    public final int hashCode() {
        int i = this.f14462for;
        if (i == 0) {
            int size = size();
            i = mo7551break(size, size);
            if (i == 0) {
                i = 1;
            }
            this.f14462for = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<Byte> iterator() {
        return new C3311m6(this);
    }

    public abstract int size();

    /* renamed from: this, reason: not valid java name */
    public abstract boolean mo7555this();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    /* renamed from: try, reason: not valid java name */
    public abstract byte mo7556try(int i);
}
