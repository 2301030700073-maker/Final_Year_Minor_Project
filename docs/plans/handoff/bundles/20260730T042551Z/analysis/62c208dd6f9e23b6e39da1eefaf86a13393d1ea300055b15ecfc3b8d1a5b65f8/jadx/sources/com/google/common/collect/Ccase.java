package com.google.common.collect;

import com.google.common.collect.Cclass;
import com.google.common.collect.Celse;
import com.google.common.collect.Cfor;
import com.google.common.collect.Cnew;
import com.google.common.collect.Ctry;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.common.collect.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase<K, V> extends Cnew<K, V> {

    /* renamed from: do, reason: not valid java name */
    public final transient Ctry<V> f11806do;

    /* renamed from: com.google.common.collect.case$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Cclass.Cdo<Ccase> f11807do = Cclass.m6048do(Ccase.class, "emptySet");
    }

    public Ccase(Cthis cthis, int i) {
        super(cthis);
        int i2 = Ctry.f11857for;
        this.f11806do = Cbreak.f11799do;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        Object m6052native;
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Invalid key count ");
            sb.append(readInt);
            throw new InvalidObjectException(sb.toString());
        }
        Cfor.Cdo cdo = new Cfor.Cdo(4);
        int i = 0;
        for (int i2 = 0; i2 < readInt; i2++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            if (readInt2 <= 0) {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("Invalid value count ");
                sb2.append(readInt2);
                throw new InvalidObjectException(sb2.toString());
            }
            Ctry.Cdo cdo2 = comparator == null ? new Ctry.Cdo() : new Celse.Cdo(comparator);
            for (int i3 = 0; i3 < readInt2; i3++) {
                cdo2.mo6054new(objectInputStream.readObject());
            }
            Ctry mo6055try = cdo2.mo6055try();
            if (mo6055try.size() != readInt2) {
                String valueOf = String.valueOf(readObject);
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 40);
                sb3.append("Duplicate key-value pairs exist for key ");
                sb3.append(valueOf);
                throw new InvalidObjectException(sb3.toString());
            }
            cdo.m6061if(readObject, mo6055try);
            i += readInt2;
        }
        try {
            Cthis m6060do = cdo.m6060do();
            Cclass.Cdo<Cnew> cdo3 = Cnew.Cdo.f11841do;
            cdo3.getClass();
            try {
                cdo3.f11810do.set(this, m6060do);
                Cclass.Cdo<Cnew> cdo4 = Cnew.Cdo.f11842if;
                cdo4.getClass();
                try {
                    cdo4.f11810do.set(this, Integer.valueOf(i));
                    Cclass.Cdo<Ccase> cdo5 = Cdo.f11807do;
                    if (comparator == null) {
                        int i4 = Ctry.f11857for;
                        m6052native = Cbreak.f11799do;
                    } else {
                        m6052native = Celse.m6052native(comparator);
                    }
                    cdo5.getClass();
                    try {
                        cdo5.f11810do.set(this, m6052native);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    }
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        } catch (IllegalArgumentException e4) {
            throw ((InvalidObjectException) new InvalidObjectException(e4.getMessage()).initCause(e4));
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        Ctry<V> ctry = this.f11806do;
        objectOutputStream.writeObject(ctry instanceof Celse ? ((Celse) ctry).f11818do : null);
        Cfor<K, ? extends com.google.common.collect.Cdo<V>> cfor = super.f11840do;
        objectOutputStream.writeInt(cfor.size());
        for (Map.Entry entry : cfor.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }
}
