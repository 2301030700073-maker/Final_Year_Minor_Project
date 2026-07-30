package com.google.protobuf;

import com.google.android.gms.common.api.Api;
import com.google.protobuf.Ccatch;
import com.google.protobuf.Cdo;
import com.google.protobuf.Cgoto;
import com.google.protobuf.Cstatic;
import com.google.protobuf.Cthis;
import com.google.protobuf.Cthis.Cdo;
import defpackage.AB;
import defpackage.AbstractC3725t8;
import defpackage.C2862hJ;
import defpackage.C2956iy;
import defpackage.C3677sJ;
import defpackage.EnumC3445oM;
import defpackage.InterfaceC0506Ss;
import defpackage.V1;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* renamed from: com.google.protobuf.this, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthis<MessageType extends Cthis<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> extends com.google.protobuf.Cdo<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, Cthis<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected Ccontinue unknownFields = Ccontinue.f12050do;

    /* renamed from: com.google.protobuf.this$do, reason: invalid class name */
    public static abstract class Cdo<MessageType extends Cthis<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> extends Cdo.AbstractC0079do<MessageType, BuilderType> {

        /* renamed from: do, reason: not valid java name */
        public final MessageType f12106do;

        /* renamed from: if, reason: not valid java name */
        public MessageType f12107if;

        public Cdo(MessageType messagetype) {
            this.f12106do = messagetype;
            if (messagetype.m6298finally()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.f12107if = (MessageType) messagetype.m6303switch();
        }

        /* renamed from: while, reason: not valid java name */
        public static void m6304while(Cthis cthis, Object obj) {
            C2956iy c2956iy = C2956iy.f13602do;
            c2956iy.getClass();
            c2956iy.m6984do(cthis.getClass()).mo48do(cthis, obj);
        }

        public final Object clone() {
            Cdo cdo = (Cdo) this.f12106do.mo523static(Ctry.NEW_BUILDER);
            cdo.f12107if = m6306final();
            return cdo;
        }

        /* renamed from: const, reason: not valid java name */
        public final MessageType m6305const() {
            MessageType m6306final = m6306final();
            m6306final.getClass();
            if (Cthis.m6295extends(m6306final, true)) {
                return m6306final;
            }
            throw new C2862hJ();
        }

        /* renamed from: final, reason: not valid java name */
        public final MessageType m6306final() {
            if (!this.f12107if.m6298finally()) {
                return this.f12107if;
            }
            MessageType messagetype = this.f12107if;
            messagetype.getClass();
            C2956iy c2956iy = C2956iy.f13602do;
            c2956iy.getClass();
            c2956iy.m6984do(messagetype.getClass()).mo49else(messagetype);
            messagetype.m6300package();
            return this.f12107if;
        }

        @Override // defpackage.InterfaceC0506Ss
        public final boolean isInitialized() {
            return Cthis.m6295extends(this.f12107if, false);
        }

        /* renamed from: super, reason: not valid java name */
        public final void m6307super() {
            if (this.f12107if.m6298finally()) {
                return;
            }
            MessageType messagetype = (MessageType) this.f12106do.m6303switch();
            m6304while(messagetype, this.f12107if);
            this.f12107if = messagetype;
        }

        @Override // defpackage.InterfaceC0506Ss
        /* renamed from: this */
        public final Cthis mo2198this() {
            return this.f12106do;
        }

        /* renamed from: throw, reason: not valid java name */
        public final void m6308throw(Cthis cthis) {
            if (this.f12106do.equals(cthis)) {
                return;
            }
            m6307super();
            m6304while(this.f12107if, cthis);
        }
    }

    /* renamed from: com.google.protobuf.this$for, reason: invalid class name */
    public static abstract class Cfor<MessageType extends Cfor<MessageType, BuilderType>, BuilderType> extends Cthis<MessageType, BuilderType> implements InterfaceC0506Ss {
        protected Cgoto<Cnew> extensions = Cgoto.f12069do;

        @Override // com.google.protobuf.Cthis, com.google.protobuf.Cstatic
        /* renamed from: case */
        public final Cdo mo6286case() {
            return (Cdo) mo523static(Ctry.NEW_BUILDER);
        }

        @Override // com.google.protobuf.Cthis, defpackage.InterfaceC0506Ss
        /* renamed from: this */
        public final Cthis mo2198this() {
            return (Cthis) mo523static(Ctry.GET_DEFAULT_INSTANCE);
        }

        @Override // com.google.protobuf.Cthis, com.google.protobuf.Cstatic
        /* renamed from: try */
        public final Cdo mo6289try() {
            Cdo cdo = (Cdo) mo523static(Ctry.NEW_BUILDER);
            cdo.m6308throw(this);
            return cdo;
        }
    }

    /* renamed from: com.google.protobuf.this$if, reason: invalid class name */
    public static class Cif<T extends Cthis<T, ?>> extends com.google.protobuf.Cif<T> {
        public Cif(T t) {
        }
    }

    /* renamed from: com.google.protobuf.this$new, reason: invalid class name */
    public static final class Cnew implements Cgoto.Cdo<Cnew> {
        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: catch */
        public final EnumC3445oM mo6260catch() {
            throw null;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            ((Cnew) obj).getClass();
            return 0;
        }

        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: final */
        public final Cdo mo6261final(Cstatic.Cdo cdo, Cstatic cstatic) {
            Cdo cdo2 = (Cdo) cdo;
            cdo2.m6308throw((Cthis) cstatic);
            return cdo2;
        }

        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: for */
        public final void mo6262for() {
        }

        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: if */
        public final void mo6263if() {
        }

        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: new */
        public final void mo6264new() {
        }

        @Override // com.google.protobuf.Cgoto.Cdo
        /* renamed from: try */
        public final void mo6265try() {
        }
    }

    /* renamed from: com.google.protobuf.this$try, reason: invalid class name */
    public enum Ctry {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        /* JADX INFO: Fake field, exist only in values array */
        GET_PARSER
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T extends Cthis<?, ?>> void m6293abstract(Class<T> cls, T t) {
        t.m6300package();
        defaultInstanceMap.put(cls, t);
    }

    /* renamed from: default, reason: not valid java name */
    static Object m6294default(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static final <T extends Cthis<T, ?>> boolean m6295extends(T t, boolean z) {
        byte byteValue = ((Byte) t.mo523static(Ctry.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        C2956iy c2956iy = C2956iy.f13602do;
        c2956iy.getClass();
        boolean mo47case = c2956iy.m6984do(t.getClass()).mo47case(t);
        if (z) {
            t.mo523static(Ctry.SET_MEMOIZED_IS_INITIALIZED);
        }
        return mo47case;
    }

    /* renamed from: private, reason: not valid java name */
    public static <E> Ccatch.Cfor<E> m6296private(Ccatch.Cfor<E> cfor) {
        int size = cfor.size();
        return cfor.mo6180instanceof(size == 0 ? 10 : size * 2);
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T extends Cthis<?, ?>> T m6297throws(Class<T> cls) {
        Cthis<?, ?> cthis = defaultInstanceMap.get(cls);
        if (cthis == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                cthis = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (cthis == null) {
            cthis = (T) ((Cthis) C3677sJ.m8098if(cls)).mo523static(Ctry.GET_DEFAULT_INSTANCE);
            if (cthis == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, cthis);
        }
        return (T) cthis;
    }

    @Override // com.google.protobuf.Cstatic
    /* renamed from: case */
    public Cdo mo6286case() {
        return (Cdo) mo523static(Ctry.NEW_BUILDER);
    }

    @Override // com.google.protobuf.Cstatic
    /* renamed from: class */
    public final void mo6287class(AbstractC3725t8 abstractC3725t8) {
        C2956iy c2956iy = C2956iy.f13602do;
        c2956iy.getClass();
        AB m6984do = c2956iy.m6984do(getClass());
        com.google.protobuf.Ctry ctry = abstractC3725t8.f15625do;
        if (ctry == null) {
            ctry = new com.google.protobuf.Ctry(abstractC3725t8);
        }
        m6984do.mo51goto(this, ctry);
    }

    @Override // com.google.protobuf.Cstatic
    /* renamed from: do */
    public final int mo6288do() {
        return mo6199super(null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2956iy c2956iy = C2956iy.f13602do;
        c2956iy.getClass();
        return c2956iy.m6984do(getClass()).mo50for(this, (Cthis) obj);
    }

    @Override // com.google.protobuf.Cdo
    /* renamed from: final */
    final int mo6197final() {
        return this.memoizedSerializedSize & Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: finally, reason: not valid java name */
    final boolean m6298finally() {
        return (this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0;
    }

    public final int hashCode() {
        if (m6298finally()) {
            C2956iy c2956iy = C2956iy.f13602do;
            c2956iy.getClass();
            return c2956iy.m6984do(getClass()).mo52if(this);
        }
        if (this.memoizedHashCode == 0) {
            C2956iy c2956iy2 = C2956iy.f13602do;
            c2956iy2.getClass();
            this.memoizedHashCode = c2956iy2.m6984do(getClass()).mo52if(this);
        }
        return this.memoizedHashCode;
    }

    @Override // defpackage.InterfaceC0506Ss
    public final boolean isInitialized() {
        return m6295extends(this, true);
    }

    /* renamed from: native, reason: not valid java name */
    public final void m6299native() {
        this.memoizedHashCode = 0;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m6300package() {
        this.memoizedSerializedSize &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m6301public() {
        mo6200while(Api.BaseClientBuilder.API_PRIORITY_OTHER);
    }

    /* renamed from: return, reason: not valid java name */
    public final <MessageType extends Cthis<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> BuilderType m6302return() {
        return (BuilderType) mo523static(Ctry.NEW_BUILDER);
    }

    /* renamed from: static */
    public abstract Object mo523static(Ctry ctry);

    @Override // com.google.protobuf.Cdo
    /* renamed from: super */
    public final int mo6199super(AB ab) {
        int mo53new;
        int mo53new2;
        if (m6298finally()) {
            if (ab == null) {
                C2956iy c2956iy = C2956iy.f13602do;
                c2956iy.getClass();
                mo53new2 = c2956iy.m6984do(getClass()).mo53new(this);
            } else {
                mo53new2 = ab.mo53new(this);
            }
            if (mo53new2 >= 0) {
                return mo53new2;
            }
            throw new IllegalStateException(V1.m2494case("serialized size must be non-negative, was ", mo53new2));
        }
        if (mo6197final() != Integer.MAX_VALUE) {
            return mo6197final();
        }
        if (ab == null) {
            C2956iy c2956iy2 = C2956iy.f13602do;
            c2956iy2.getClass();
            mo53new = c2956iy2.m6984do(getClass()).mo53new(this);
        } else {
            mo53new = ab.mo53new(this);
        }
        mo6200while(mo53new);
        return mo53new;
    }

    /* renamed from: switch, reason: not valid java name */
    public final Object m6303switch() {
        return mo523static(Ctry.NEW_MUTABLE_INSTANCE);
    }

    @Override // defpackage.InterfaceC0506Ss
    /* renamed from: this */
    public Cthis mo2198this() {
        return (Cthis) mo523static(Ctry.GET_DEFAULT_INSTANCE);
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = Cswitch.f12105do;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        Cswitch.m6291for(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.protobuf.Cstatic
    /* renamed from: try */
    public Cdo mo6289try() {
        Cdo cdo = (Cdo) mo523static(Ctry.NEW_BUILDER);
        cdo.m6308throw(this);
        return cdo;
    }

    @Override // com.google.protobuf.Cdo
    /* renamed from: while */
    final void mo6200while(int i) {
        if (i < 0) {
            throw new IllegalStateException(V1.m2494case("serialized size must be non-negative, was ", i));
        }
        this.memoizedSerializedSize = (i & Api.BaseClientBuilder.API_PRIORITY_OTHER) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
    }
}
