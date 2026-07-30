package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: Ca, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0137Ca<T> {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f388do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IG f389do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f391do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f392do = new LinkedHashSet();

    /* renamed from: if, reason: not valid java name */
    public T f393if;

    /* renamed from: Ca$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ List f395do;

        public Cdo(ArrayList arrayList) {
            this.f395do = arrayList;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Iterator it = this.f395do.iterator();
            while (it.hasNext()) {
                ((InterfaceC0115Ba) it.next()).mo190do(AbstractC0137Ca.this.f393if);
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("ConstraintTracker");
    }

    public AbstractC0137Ca(Context context, IG ig) {
        this.f390do = context.getApplicationContext();
        this.f389do = ig;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract T mo272do();

    /* renamed from: for, reason: not valid java name */
    public final void m273for(T t) {
        synchronized (this.f391do) {
            T t2 = this.f393if;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f393if = t;
                ((HM) this.f389do).f1344do.execute(new Cdo(new ArrayList(this.f392do)));
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m274if(AbstractC4103za abstractC4103za) {
        synchronized (this.f391do) {
            if (this.f392do.remove(abstractC4103za) && this.f392do.isEmpty()) {
                mo276try();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void mo275new();

    /* renamed from: try, reason: not valid java name */
    public abstract void mo276try();
}
