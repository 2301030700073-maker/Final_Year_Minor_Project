package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public class J2 extends C3645ro {
    public static final List d(Object[] objArr) {
        C0173Do.m401try(objArr, "<this>");
        List asList = Arrays.asList(objArr);
        C0173Do.m399new(asList, "asList(this)");
        return asList;
    }

    public static final <T> boolean e(T[] tArr, T t) {
        int i;
        C0173Do.m401try(tArr, "<this>");
        if (t == null) {
            int length = tArr.length;
            i = 0;
            while (i < length) {
                if (tArr[i] == null) {
                    break;
                }
                i++;
            }
            i = -1;
        } else {
            int length2 = tArr.length;
            for (int i2 = 0; i2 < length2; i2++) {
                if (C0173Do.m394do(t, tArr[i2])) {
                    i = i2;
                    break;
                }
            }
            i = -1;
        }
        return i >= 0;
    }

    public static final void f(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        C0173Do.m401try(objArr, "<this>");
        C0173Do.m401try(objArr2, "destination");
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    public static final char g(char[] cArr) {
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static final void h(HashSet hashSet, Object[] objArr) {
        for (Object obj : objArr) {
            hashSet.add(obj);
        }
    }

    public static final <T> List<T> i(T[] tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? new ArrayList(new C4073z2(tArr, false)) : O4.m1617package(tArr[0]) : C0471Rf.f3217do;
    }
}
