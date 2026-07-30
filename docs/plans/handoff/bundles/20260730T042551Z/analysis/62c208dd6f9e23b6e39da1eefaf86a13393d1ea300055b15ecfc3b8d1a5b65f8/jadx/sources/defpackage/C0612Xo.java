package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: Xo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0612Xo extends Ow {

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f4604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Method f4605do;

    /* renamed from: for, reason: not valid java name */
    public final Method f4606for;

    /* renamed from: if, reason: not valid java name */
    public final Class<?> f4607if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Method f4608if;

    /* renamed from: Xo$do, reason: invalid class name */
    public static class Cdo implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        public String f4609do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final List<String> f4610do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f4611do;

        public Cdo(ArrayList arrayList) {
            this.f4610do = arrayList;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = SJ.f3496do;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f4611do = true;
                return null;
            }
            boolean equals = name.equals("protocols");
            List<String> list = this.f4610do;
            if (equals && objArr.length == 0) {
                return list;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list2 = (List) obj2;
                    int size = list2.size();
                    for (int i = 0; i < size; i++) {
                        if (list.contains(list2.get(i))) {
                            String str = (String) list2.get(i);
                            this.f4609do = str;
                            return str;
                        }
                    }
                    String str2 = list.get(0);
                    this.f4609do = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f4609do = (String) objArr[0];
            return null;
        }
    }

    public C0612Xo(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f4605do = method;
        this.f4608if = method2;
        this.f4606for = method3;
        this.f4604do = cls;
        this.f4607if = cls2;
    }

    @Override // defpackage.Ow
    /* renamed from: case */
    public final void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
        try {
            this.f4605do.invoke(null, sSLSocket, Proxy.newProxyInstance(Ow.class.getClassLoader(), new Class[]{this.f4604do, this.f4607if}, new Cdo(Ow.m1704if(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw SJ.m2134do("unable to set alpn", e);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: do */
    public final void mo1709do(SSLSocket sSLSocket) {
        try {
            this.f4606for.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw SJ.m2134do("unable to remove alpn", e);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: this */
    public final String mo903this(SSLSocket sSLSocket) {
        try {
            Cdo cdo = (Cdo) Proxy.getInvocationHandler(this.f4608if.invoke(null, sSLSocket));
            boolean z = cdo.f4611do;
            if (!z && cdo.f4609do == null) {
                Ow.f2691do.mo1707class(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (z) {
                return null;
            }
            return cdo.f4609do;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw SJ.m2134do("unable to get selected protocol", e);
        }
    }
}
