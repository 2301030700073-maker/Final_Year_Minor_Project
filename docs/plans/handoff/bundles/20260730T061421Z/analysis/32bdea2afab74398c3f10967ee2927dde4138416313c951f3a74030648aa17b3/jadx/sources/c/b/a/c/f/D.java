package c.b.a.c.f;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class D implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public B f3018a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3019b;

    /* renamed from: c, reason: collision with root package name */
    public List f3020c = new ArrayList();

    public final int a() {
        if (this.f3019b != null) {
            throw null;
        }
        Iterator it = this.f3020c.iterator();
        if (!it.hasNext()) {
            return 0;
        }
        int i = ((G) it.next()).f3023a;
        throw null;
    }

    public final void b(z zVar) {
        if (this.f3019b != null) {
            throw null;
        }
        Iterator it = this.f3020c.iterator();
        if (it.hasNext()) {
            int i = ((G) it.next()).f3023a;
            zVar.p(0);
            throw null;
        }
    }

    public final byte[] c() {
        a();
        byte[] bArr = new byte[0];
        b(new z(bArr, 0, 0));
        return bArr;
    }

    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final D clone() {
        D d2 = new D();
        d2.f3018a = null;
        try {
            if (this.f3020c == null) {
                d2.f3020c = null;
            } else {
                d2.f3020c.addAll(this.f3020c);
            }
            if (this.f3019b != null) {
                if (this.f3019b instanceof F) {
                    d2.f3019b = (F) ((F) this.f3019b).clone();
                } else if (this.f3019b instanceof byte[]) {
                    d2.f3019b = ((byte[]) this.f3019b).clone();
                } else {
                    int i = 0;
                    if (this.f3019b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f3019b;
                        byte[][] bArr2 = new byte[bArr.length][];
                        d2.f3019b = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.f3019b instanceof boolean[]) {
                        d2.f3019b = ((boolean[]) this.f3019b).clone();
                    } else if (this.f3019b instanceof int[]) {
                        d2.f3019b = ((int[]) this.f3019b).clone();
                    } else if (this.f3019b instanceof long[]) {
                        d2.f3019b = ((long[]) this.f3019b).clone();
                    } else if (this.f3019b instanceof float[]) {
                        d2.f3019b = ((float[]) this.f3019b).clone();
                    } else if (this.f3019b instanceof double[]) {
                        d2.f3019b = ((double[]) this.f3019b).clone();
                    } else if (this.f3019b instanceof F[]) {
                        F[] fArr = (F[]) this.f3019b;
                        F[] fArr2 = new F[fArr.length];
                        d2.f3019b = fArr2;
                        while (i < fArr.length) {
                            fArr2[i] = (F) fArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return d2;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d2 = (D) obj;
        if (this.f3019b != null && d2.f3019b != null) {
            throw null;
        }
        List list2 = this.f3020c;
        if (list2 != null && (list = d2.f3020c) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(c(), d2.c());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(c()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
