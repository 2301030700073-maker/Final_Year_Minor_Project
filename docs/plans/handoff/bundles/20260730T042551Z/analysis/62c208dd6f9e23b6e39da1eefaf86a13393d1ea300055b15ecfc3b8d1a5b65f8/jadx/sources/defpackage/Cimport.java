package defpackage;

import java.util.AbstractList;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: import, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cimport<E> extends AbstractList<E> implements List<E>, InterfaceC4000xp {
    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        A2 a2 = (A2) this;
        int i2 = a2.f20new;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(Cif.m6918new("index: ", i, ", size: ", i2));
        }
        if (i == O4.m1633while(a2)) {
            if (a2.isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            int m27goto = a2.m27goto(O4.m1633while(a2) + a2.f19for);
            Object[] objArr = a2.f18do;
            E e = (E) objArr[m27goto];
            objArr[m27goto] = null;
            a2.f20new--;
            return e;
        }
        if (i == 0) {
            return (E) a2.removeFirst();
        }
        int m27goto2 = a2.m27goto(a2.f19for + i);
        Object[] objArr2 = a2.f18do;
        E e2 = (E) objArr2[m27goto2];
        if (i < (a2.f20new >> 1)) {
            int i3 = a2.f19for;
            if (m27goto2 >= i3) {
                J2.f(objArr2, i3 + 1, objArr2, i3, m27goto2);
            } else {
                J2.f(objArr2, 1, objArr2, 0, m27goto2);
                Object[] objArr3 = a2.f18do;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i4 = a2.f19for;
                J2.f(objArr3, i4 + 1, objArr3, i4, objArr3.length - 1);
            }
            Object[] objArr4 = a2.f18do;
            int i5 = a2.f19for;
            objArr4[i5] = null;
            a2.f19for = a2.m26else(i5);
        } else {
            int m27goto3 = a2.m27goto(O4.m1633while(a2) + a2.f19for);
            if (m27goto2 <= m27goto3) {
                Object[] objArr5 = a2.f18do;
                J2.f(objArr5, m27goto2, objArr5, m27goto2 + 1, m27goto3 + 1);
            } else {
                Object[] objArr6 = a2.f18do;
                J2.f(objArr6, m27goto2, objArr6, m27goto2 + 1, objArr6.length);
                Object[] objArr7 = a2.f18do;
                objArr7[objArr7.length - 1] = objArr7[0];
                J2.f(objArr7, 0, objArr7, 1, m27goto3 + 1);
            }
            a2.f18do[m27goto3] = null;
        }
        a2.f20new--;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return ((A2) this).f20new;
    }
}
