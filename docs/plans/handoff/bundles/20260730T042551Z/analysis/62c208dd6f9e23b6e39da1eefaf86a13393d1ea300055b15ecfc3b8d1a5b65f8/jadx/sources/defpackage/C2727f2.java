package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Trace;
import com.joeykrim.rootcheck.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: f2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2727f2 {

    /* renamed from: do, reason: not valid java name */
    public static volatile C2727f2 f12795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f12796do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f12797do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f12799do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f12798do = new HashMap();

    public C2727f2(Context context) {
        this.f12797do = context.getApplicationContext();
    }

    /* renamed from: for, reason: not valid java name */
    public static C2727f2 m6630for(Context context) {
        if (f12795do == null) {
            synchronized (f12796do) {
                if (f12795do == null) {
                    f12795do = new C2727f2(context);
                }
            }
        }
        return f12795do;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6631do(Bundle bundle) {
        HashSet hashSet;
        String string = this.f12797do.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = this.f12799do;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (InterfaceC0260Hn.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    m6632if((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e) {
                throw new ZE(e);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final Object m6632if(Class cls, HashSet hashSet) {
        Object obj;
        if (C0802cI.m4897do()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } finally {
                Trace.endSection();
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        HashMap hashMap = this.f12798do;
        if (hashMap.containsKey(cls)) {
            obj = hashMap.get(cls);
        } else {
            hashSet.add(cls);
            try {
                InterfaceC0260Hn interfaceC0260Hn = (InterfaceC0260Hn) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends InterfaceC0260Hn<?>>> mo884if = interfaceC0260Hn.mo884if();
                if (!mo884if.isEmpty()) {
                    for (Class<? extends InterfaceC0260Hn<?>> cls2 : mo884if) {
                        if (!hashMap.containsKey(cls2)) {
                            m6632if(cls2, hashSet);
                        }
                    }
                }
                obj = interfaceC0260Hn.mo883do(this.f12797do);
                hashSet.remove(cls);
                hashMap.put(cls, obj);
            } catch (Throwable th) {
                throw new ZE(th);
            }
        }
        return obj;
    }
}
