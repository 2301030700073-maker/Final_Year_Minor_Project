package defpackage;

import java.util.Collections;
import java.util.Map;

/* renamed from: Nh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0385Nh {

    /* renamed from: do, reason: not valid java name */
    public final String f2421do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Class<?>, Object> f2422do;

    public C0385Nh(String str, Map<Class<?>, Object> map) {
        this.f2421do = str;
        this.f2422do = map;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0385Nh m1544do(String str) {
        return new C0385Nh(str, Collections.emptyMap());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0385Nh)) {
            return false;
        }
        C0385Nh c0385Nh = (C0385Nh) obj;
        return this.f2421do.equals(c0385Nh.f2421do) && this.f2422do.equals(c0385Nh.f2422do);
    }

    public final int hashCode() {
        return this.f2422do.hashCode() + (this.f2421do.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f2421do + ", properties=" + this.f2422do.values() + "}";
    }
}
