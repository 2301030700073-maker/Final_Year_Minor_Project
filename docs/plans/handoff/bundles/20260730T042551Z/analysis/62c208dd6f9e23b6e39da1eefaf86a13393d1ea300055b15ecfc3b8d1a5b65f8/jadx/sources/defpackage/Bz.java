package defpackage;

import defpackage.C0237Gm;
import defpackage.C0587Wl;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Bz {

    /* renamed from: do, reason: not valid java name */
    public final C0237Gm f296do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0587Wl f297do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3134j6 f298do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f299do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Class<?>, Object> f300do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C3664s6 f301do;

    public Bz(Cdo cdo) {
        this.f296do = cdo.f302do;
        this.f299do = cdo.f305do;
        C0587Wl.Cdo cdo2 = cdo.f303do;
        cdo2.getClass();
        this.f297do = new C0587Wl(cdo2);
        this.f298do = cdo.f304do;
        byte[] bArr = SJ.f3495do;
        Map<Class<?>, Object> map = cdo.f306do;
        this.f300do = map.isEmpty() ? Collections.emptyMap() : DesugarCollections.unmodifiableMap(new LinkedHashMap(map));
    }

    /* renamed from: do, reason: not valid java name */
    public final String m244do(String str) {
        return this.f297do.m2768for(str);
    }

    public final String toString() {
        return "Request{method=" + this.f299do + ", url=" + this.f296do + ", tags=" + this.f300do + '}';
    }

    /* renamed from: Bz$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public C0237Gm f302do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0587Wl.Cdo f303do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC3134j6 f304do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f305do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Map<Class<?>, Object> f306do;

        public Cdo() {
            this.f306do = Collections.emptyMap();
            this.f305do = "GET";
            this.f303do = new C0587Wl.Cdo();
        }

        /* renamed from: do, reason: not valid java name */
        public final Bz m245do() {
            if (this.f302do != null) {
                return new Bz(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: for, reason: not valid java name */
        public final void m246for(String str) {
            this.f303do.m2773if(str);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m247if(String str, AbstractC3134j6 abstractC3134j6) {
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (abstractC3134j6 != null && !C3850vF.m8466while(str)) {
                throw new IllegalArgumentException(Cif.m6908case("method ", str, " must not have a request body."));
            }
            if (abstractC3134j6 == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                    throw new IllegalArgumentException(Cif.m6908case("method ", str, " must have a request body."));
                }
            }
            this.f305do = str;
            this.f304do = abstractC3134j6;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m248new(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            C0237Gm.Cdo cdo = new C0237Gm.Cdo();
            cdo.m760if(null, str);
            this.f302do = cdo.m759do();
        }

        public Cdo(Bz bz) {
            Map<Class<?>, Object> linkedHashMap;
            this.f306do = Collections.emptyMap();
            this.f302do = bz.f296do;
            this.f305do = bz.f299do;
            this.f304do = bz.f298do;
            Map<Class<?>, Object> map = bz.f300do;
            if (map.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap(map);
            }
            this.f306do = linkedHashMap;
            this.f303do = bz.f297do.m2770try();
        }
    }
}
