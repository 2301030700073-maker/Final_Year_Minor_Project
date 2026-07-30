package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.os.Looper;
import androidx.work.impl.WorkDatabase;
import defpackage.InterfaceC0741bG;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: wA, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3904wA {

    /* renamed from: do, reason: not valid java name */
    public final C0349Lo f16280do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @Deprecated
    public volatile InterfaceC0681aG f16281do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC0741bG f16282do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @Deprecated
    public List<Cif> f16284do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Executor f16285do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16287do;

    /* renamed from: if, reason: not valid java name */
    public boolean f16288if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ReentrantReadWriteLock f16286do = new ReentrantReadWriteLock();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ThreadLocal<Integer> f16283do = new ThreadLocal<>();

    /* renamed from: wA$do, reason: invalid class name */
    public static class Cdo<T extends AbstractC3904wA> {

        /* renamed from: do, reason: not valid java name */
        public final Context f16289do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC0741bG.Cfor f16290do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f16292do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList<Cif> f16293do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public HashSet f16294do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Executor f16295do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f16297do;

        /* renamed from: for, reason: not valid java name */
        public boolean f16298for;

        /* renamed from: if, reason: not valid java name */
        public Executor f16299if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Class<T> f16291do = WorkDatabase.class;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f16300if = true;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cfor f16296do = new Cfor();

        public Cdo(Context context, String str) {
            this.f16289do = context;
            this.f16292do = str;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m8563do(AbstractC3179jt... abstractC3179jtArr) {
            if (this.f16294do == null) {
                this.f16294do = new HashSet();
            }
            for (AbstractC3179jt abstractC3179jt : abstractC3179jtArr) {
                this.f16294do.add(Integer.valueOf(abstractC3179jt.f13813do));
                this.f16294do.add(Integer.valueOf(abstractC3179jt.f13814if));
            }
            Cfor cfor = this.f16296do;
            cfor.getClass();
            for (AbstractC3179jt abstractC3179jt2 : abstractC3179jtArr) {
                int i = abstractC3179jt2.f13813do;
                HashMap<Integer, TreeMap<Integer, AbstractC3179jt>> hashMap = cfor.f16301do;
                TreeMap<Integer, AbstractC3179jt> treeMap = hashMap.get(Integer.valueOf(i));
                if (treeMap == null) {
                    treeMap = new TreeMap<>();
                    hashMap.put(Integer.valueOf(i), treeMap);
                }
                int i2 = abstractC3179jt2.f13814if;
                AbstractC3179jt abstractC3179jt3 = treeMap.get(Integer.valueOf(i2));
                if (abstractC3179jt3 != null) {
                    abstractC3179jt3.toString();
                    abstractC3179jt2.toString();
                }
                treeMap.put(Integer.valueOf(i2), abstractC3179jt2);
            }
        }
    }

    /* renamed from: wA$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final HashMap<Integer, TreeMap<Integer, AbstractC3179jt>> f16301do = new HashMap<>();
    }

    /* renamed from: wA$if, reason: invalid class name */
    public static abstract class Cif {
        /* renamed from: do, reason: not valid java name */
        public void mo8564do(C0519Tj c0519Tj) {
        }
    }

    public AbstractC3904wA() {
        new ConcurrentHashMap();
        this.f16280do = mo4732new();
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public final void m8557case() {
        ((C0519Tj) this.f16282do.mo2460else()).m2284if();
        if (((C0519Tj) this.f16282do.mo2460else()).f3741do.inTransaction()) {
            return;
        }
        C0349Lo c0349Lo = this.f16280do;
        if (c0349Lo.f2007do.compareAndSet(false, true)) {
            c0349Lo.f2008do.f16285do.execute(c0349Lo.f2002do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8558do() {
        if (this.f16287do) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final Cursor m8559else(InterfaceC0800cG interfaceC0800cG) {
        m8558do();
        m8562if();
        return ((C0519Tj) this.f16282do.mo2460else()).m2285new(interfaceC0800cG);
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public final void m8560for() {
        m8558do();
        InterfaceC0681aG mo2460else = this.f16282do.mo2460else();
        this.f16280do.m1347for(mo2460else);
        ((C0519Tj) mo2460else).m2281do();
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public final void m8561goto() {
        ((C0519Tj) this.f16282do.mo2460else()).m2283goto();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8562if() {
        if (!((C0519Tj) this.f16282do.mo2460else()).f3741do.inTransaction() && this.f16283do.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    /* renamed from: new */
    public abstract C0349Lo mo4732new();

    /* renamed from: try */
    public abstract InterfaceC0741bG mo4733try(C0556Vc c0556Vc);
}
