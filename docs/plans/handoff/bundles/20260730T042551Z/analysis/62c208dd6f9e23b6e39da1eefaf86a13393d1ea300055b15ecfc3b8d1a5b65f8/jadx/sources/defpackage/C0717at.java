package defpackage;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* renamed from: at, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0717at implements D4 {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f8291do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8292do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3280lc f8293do;

    /* renamed from: at$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Context f8294do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Map<String, String> f8295do = null;

        public Cdo(Context context) {
            this.f8294do = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.C4 m4784do(java.lang.String r14) {
            /*
                r13 = this;
                java.lang.String r0 = "Could not instantiate %s"
                java.lang.String r1 = "Could not instantiate %s."
                java.util.Map<java.lang.String, java.lang.String> r2 = r13.f8295do
                r3 = 0
                r4 = 0
                if (r2 != 0) goto L81
                android.content.Context r2 = r13.f8294do
                android.content.pm.PackageManager r5 = r2.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
                if (r5 != 0) goto L13
                goto L27
            L13:
                android.content.ComponentName r6 = new android.content.ComponentName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
                java.lang.Class<com.google.android.datatransport.runtime.backends.TransportBackendDiscovery> r7 = com.google.android.datatransport.runtime.backends.TransportBackendDiscovery.class
                r6.<init>(r2, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
                r2 = 128(0x80, float:1.8E-43)
                android.content.pm.ServiceInfo r2 = r5.getServiceInfo(r6, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
                if (r2 != 0) goto L23
                goto L27
            L23:
                android.os.Bundle r2 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
                goto L28
            L26:
            L27:
                r2 = r3
            L28:
                if (r2 != 0) goto L2f
                java.util.Map r2 = java.util.Collections.emptyMap()
                goto L7f
            L2f:
                java.util.HashMap r5 = new java.util.HashMap
                r5.<init>()
                java.util.Set r6 = r2.keySet()
                java.util.Iterator r6 = r6.iterator()
            L3c:
                boolean r7 = r6.hasNext()
                if (r7 == 0) goto L7e
                java.lang.Object r7 = r6.next()
                java.lang.String r7 = (java.lang.String) r7
                java.lang.Object r8 = r2.get(r7)
                boolean r9 = r8 instanceof java.lang.String
                if (r9 == 0) goto L3c
                java.lang.String r9 = "backend:"
                boolean r9 = r7.startsWith(r9)
                if (r9 == 0) goto L3c
                java.lang.String r8 = (java.lang.String) r8
                java.lang.String r9 = ","
                r10 = -1
                java.lang.String[] r8 = r8.split(r9, r10)
                int r9 = r8.length
                r10 = 0
            L63:
                if (r10 >= r9) goto L3c
                r11 = r8[r10]
                java.lang.String r11 = r11.trim()
                boolean r12 = r11.isEmpty()
                if (r12 == 0) goto L72
                goto L7b
            L72:
                r12 = 8
                java.lang.String r12 = r7.substring(r12)
                r5.put(r11, r12)
            L7b:
                int r10 = r10 + 1
                goto L63
            L7e:
                r2 = r5
            L7f:
                r13.f8295do = r2
            L81:
                java.util.Map<java.lang.String, java.lang.String> r2 = r13.f8295do
                java.lang.Object r14 = r2.get(r14)
                java.lang.String r14 = (java.lang.String) r14
                if (r14 != 0) goto L8c
                return r3
            L8c:
                r2 = 1
                java.lang.Class r5 = java.lang.Class.forName(r14)     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                java.lang.Class<C4> r6 = defpackage.C4.class
                java.lang.Class r5 = r5.asSubclass(r6)     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                java.lang.reflect.Constructor r5 = r5.getDeclaredConstructor(r6)     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                java.lang.Object[] r6 = new java.lang.Object[r4]     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                java.lang.Object r5 = r5.newInstance(r6)     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                C4 r5 = (defpackage.C4) r5     // Catch: java.lang.reflect.InvocationTargetException -> La6 java.lang.NoSuchMethodException -> Lae java.lang.InstantiationException -> Lb6 java.lang.IllegalAccessException -> Lbe java.lang.ClassNotFoundException -> Lc6
                return r5
            La6:
                java.lang.Object[] r1 = new java.lang.Object[r2]
                r1[r4] = r14
                java.lang.String.format(r0, r1)
                goto Lcf
            Lae:
                java.lang.Object[] r1 = new java.lang.Object[r2]
                r1[r4] = r14
                java.lang.String.format(r0, r1)
                goto Lcf
            Lb6:
                java.lang.Object[] r0 = new java.lang.Object[r2]
                r0[r4] = r14
                java.lang.String.format(r1, r0)
                goto Lcf
            Lbe:
                java.lang.Object[] r0 = new java.lang.Object[r2]
                r0[r4] = r14
                java.lang.String.format(r1, r0)
                goto Lcf
            Lc6:
                java.lang.Object[] r0 = new java.lang.Object[r2]
                r0[r4] = r14
                java.lang.String r14 = "Class %s is not found."
                java.lang.String.format(r14, r0)
            Lcf:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0717at.Cdo.m4784do(java.lang.String):C4");
        }
    }

    public C0717at(Context context, C3280lc c3280lc) {
        Cdo cdo = new Cdo(context);
        this.f8292do = new HashMap();
        this.f8291do = cdo;
        this.f8293do = c3280lc;
    }

    @Override // defpackage.D4
    /* renamed from: do */
    public final synchronized InterfaceC3735tI mo348do(String str) {
        if (this.f8292do.containsKey(str)) {
            return (InterfaceC3735tI) this.f8292do.get(str);
        }
        C4 m4784do = this.f8291do.m4784do(str);
        if (m4784do == null) {
            return null;
        }
        C3280lc c3280lc = this.f8293do;
        InterfaceC3735tI create = m4784do.create(new U3(c3280lc.f14171do, c3280lc.f14172do, c3280lc.f14173if, str));
        this.f8292do.put(str, create);
        return create;
    }
}
