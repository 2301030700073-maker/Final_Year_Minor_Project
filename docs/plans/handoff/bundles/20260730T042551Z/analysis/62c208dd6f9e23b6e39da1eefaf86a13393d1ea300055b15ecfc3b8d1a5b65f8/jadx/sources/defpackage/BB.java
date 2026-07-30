package defpackage;

import androidx.datastore.preferences.protobuf.Celse;
import androidx.datastore.preferences.protobuf.Cthis;
import androidx.datastore.preferences.protobuf.Cvolatile;

/* loaded from: classes.dex */
public interface BB<T> {
    /* renamed from: case, reason: not valid java name */
    boolean mo147case(T t);

    /* renamed from: do, reason: not valid java name */
    void mo148do(T t, T t2);

    /* renamed from: else, reason: not valid java name */
    void mo149else(T t);

    /* renamed from: for, reason: not valid java name */
    boolean mo150for(T t, T t2);

    /* renamed from: goto, reason: not valid java name */
    void mo151goto(T t, Cvolatile cvolatile, Cthis cthis);

    /* renamed from: if, reason: not valid java name */
    int mo152if(T t);

    /* renamed from: new, reason: not valid java name */
    int mo153new(T t);

    /* renamed from: this, reason: not valid java name */
    void mo154this(Object obj, Celse celse);

    /* renamed from: try, reason: not valid java name */
    T mo155try();
}
