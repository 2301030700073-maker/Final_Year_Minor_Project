package defpackage;

import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public abstract class W<I, O> {

    /* renamed from: W$do, reason: invalid class name */
    public static final class Cdo<T> {

        /* renamed from: do, reason: not valid java name */
        public final T f4285do;

        public Cdo(T t) {
            this.f4285do = t;
        }
    }

    public abstract Intent createIntent(Context context, I i);

    public Cdo<O> getSynchronousResult(Context context, I i) {
        C0173Do.m401try(context, "context");
        return null;
    }

    public abstract O parseResult(int i, Intent intent);
}
