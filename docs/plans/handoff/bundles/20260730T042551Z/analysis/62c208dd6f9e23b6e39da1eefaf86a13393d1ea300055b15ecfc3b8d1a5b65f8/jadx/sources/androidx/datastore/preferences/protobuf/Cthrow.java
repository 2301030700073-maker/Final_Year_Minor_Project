package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Ctry;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.throw, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthrow {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f6655do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f6656do;

    /* renamed from: androidx.datastore.preferences.protobuf.throw$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do, reason: not valid java name */
        int m3997do();
    }

    /* renamed from: androidx.datastore.preferences.protobuf.throw$for, reason: invalid class name */
    public interface Cfor<E> extends List<E>, RandomAccess {
        /* renamed from: class */
        Cfor<E> mo3833class(int i);

        /* renamed from: do */
        boolean mo3879do();

        /* renamed from: if */
        void mo3880if();
    }

    /* renamed from: androidx.datastore.preferences.protobuf.throw$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do, reason: not valid java name */
        boolean m3998do();
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f6656do = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new Ctry.Cdo(bArr, 0, 0, false).mo4033try(0);
        } catch (Cwhile e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3995do(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cfinal m3996if(Object obj, Object obj2) {
        Cfinal.Cdo mo3873new = ((Cfinally) obj).mo3873new();
        Cfinally cfinally = (Cfinally) obj2;
        mo3873new.getClass();
        if (!mo3873new.f6591do.getClass().isInstance(cfinally)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        mo3873new.m3875break((Cfinal) ((androidx.datastore.preferences.protobuf.Cdo) cfinally));
        return mo3873new.m3877goto();
    }
}
