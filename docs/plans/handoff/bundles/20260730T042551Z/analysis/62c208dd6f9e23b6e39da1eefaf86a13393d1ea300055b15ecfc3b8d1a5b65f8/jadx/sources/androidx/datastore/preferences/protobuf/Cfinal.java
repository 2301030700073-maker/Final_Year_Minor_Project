package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cclass;
import androidx.datastore.preferences.protobuf.Cdo;
import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cfinal.Cdo;
import androidx.datastore.preferences.protobuf.Cfinally;
import defpackage.AbstractC3666s8;
import defpackage.BB;
import defpackage.C2921iJ;
import defpackage.C3184jy;
import defpackage.C3736tJ;
import defpackage.EnumC3504pM;
import defpackage.FM;
import defpackage.InterfaceC0528Ts;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.final, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfinal<MessageType extends Cfinal<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> extends androidx.datastore.preferences.protobuf.Cdo<MessageType, BuilderType> {
    private static Map<Object, Cfinal<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    protected Cinstanceof unknownFields = Cinstanceof.f6599do;
    protected int memoizedSerializedSize = -1;

    /* renamed from: androidx.datastore.preferences.protobuf.final$case, reason: invalid class name */
    public enum Ccase {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        /* JADX INFO: Fake field, exist only in values array */
        GET_PARSER
    }

    /* renamed from: androidx.datastore.preferences.protobuf.final$do, reason: invalid class name */
    public static abstract class Cdo<MessageType extends Cfinal<MessageType, BuilderType>, BuilderType extends Cdo<MessageType, BuilderType>> extends Cdo.AbstractC0034do<MessageType, BuilderType> {

        /* renamed from: do, reason: not valid java name */
        public final MessageType f6591do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6592do = false;

        /* renamed from: if, reason: not valid java name */
        public MessageType f6593if;

        public Cdo(MessageType messagetype) {
            this.f6591do = messagetype;
            this.f6593if = (MessageType) messagetype.mo3869break(Ccase.NEW_MUTABLE_INSTANCE);
        }

        /* renamed from: catch, reason: not valid java name */
        public static void m3874catch(Cfinal cfinal, Cfinal cfinal2) {
            C3184jy c3184jy = C3184jy.f13856do;
            c3184jy.getClass();
            c3184jy.m7180do(cfinal.getClass()).mo148do(cfinal, cfinal2);
        }

        /* renamed from: break, reason: not valid java name */
        public final BuilderType m3875break(MessageType messagetype) {
            m3878this();
            m3874catch(this.f6593if, messagetype);
            return this;
        }

        public final Object clone() {
            Cdo cdo = (Cdo) this.f6591do.mo3869break(Ccase.NEW_BUILDER);
            cdo.m3875break(m3877goto());
            return cdo;
        }

        /* renamed from: else, reason: not valid java name */
        public final MessageType m3876else() {
            MessageType m3877goto = m3877goto();
            if (m3877goto.isInitialized()) {
                return m3877goto;
            }
            throw new C2921iJ();
        }

        /* renamed from: goto, reason: not valid java name */
        public final MessageType m3877goto() {
            if (this.f6592do) {
                return this.f6593if;
            }
            MessageType messagetype = this.f6593if;
            messagetype.getClass();
            C3184jy c3184jy = C3184jy.f13856do;
            c3184jy.getClass();
            c3184jy.m7180do(messagetype.getClass()).mo149else(messagetype);
            this.f6592do = true;
            return this.f6593if;
        }

        /* renamed from: this, reason: not valid java name */
        public final void m3878this() {
            if (this.f6592do) {
                MessageType messagetype = (MessageType) this.f6593if.mo3869break(Ccase.NEW_MUTABLE_INSTANCE);
                MessageType messagetype2 = this.f6593if;
                C3184jy c3184jy = C3184jy.f13856do;
                c3184jy.getClass();
                c3184jy.m7180do(messagetype.getClass()).mo148do(messagetype, messagetype2);
                this.f6593if = messagetype;
                this.f6592do = false;
            }
        }

        @Override // defpackage.InterfaceC0528Ts
        /* renamed from: try */
        public final Cfinal mo2293try() {
            return this.f6591do;
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.final$for, reason: invalid class name */
    public static abstract class Cfor<MessageType extends Cfor<MessageType, BuilderType>, BuilderType> extends Cfinal<MessageType, BuilderType> implements InterfaceC0528Ts {
        protected Cclass<Cnew> extensions = Cclass.f6577do;

        @Override // androidx.datastore.preferences.protobuf.Cfinal, androidx.datastore.preferences.protobuf.Cfinally
        /* renamed from: for */
        public final Cdo mo3872for() {
            return (Cdo) mo3869break(Ccase.NEW_BUILDER);
        }

        @Override // androidx.datastore.preferences.protobuf.Cfinal, androidx.datastore.preferences.protobuf.Cfinally
        /* renamed from: new */
        public final Cdo mo3873new() {
            Cdo cdo = (Cdo) mo3869break(Ccase.NEW_BUILDER);
            cdo.m3875break(this);
            return cdo;
        }

        @Override // androidx.datastore.preferences.protobuf.Cfinal, defpackage.InterfaceC0528Ts
        /* renamed from: try */
        public final Cfinal mo2293try() {
            return (Cfinal) mo3869break(Ccase.GET_DEFAULT_INSTANCE);
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.final$if, reason: invalid class name */
    public static class Cif<T extends Cfinal<T, ?>> extends androidx.datastore.preferences.protobuf.Cif<T> {
        public Cif(T t) {
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.final$new, reason: invalid class name */
    public static final class Cnew implements Cclass.Cdo<Cnew> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: class */
        public final Cdo mo3826class(Cfinally.Cdo cdo, Cfinally cfinally) {
            Cdo cdo2 = (Cdo) cdo;
            cdo2.m3875break((Cfinal) cfinally);
            return cdo2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            ((Cnew) obj).getClass();
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: else */
        public final EnumC3504pM mo3827else() {
            throw null;
        }

        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: for */
        public final void mo3828for() {
        }

        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: if */
        public final void mo3829if() {
        }

        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: new */
        public final void mo3830new() {
        }

        @Override // androidx.datastore.preferences.protobuf.Cclass.Cdo
        /* renamed from: try */
        public final void mo3831try() {
        }
    }

    /* renamed from: androidx.datastore.preferences.protobuf.final$try, reason: invalid class name */
    public static class Ctry<ContainingType extends Cfinally, Type> extends FM {
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T extends Cfinal<?, ?>> T m3865catch(Class<T> cls) {
        Cfinal<?, ?> cfinal = defaultInstanceMap.get(cls);
        if (cfinal == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                cfinal = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (cfinal == null) {
            cfinal = (T) ((Cfinal) C3736tJ.m8246do(cls)).mo3869break(Ccase.GET_DEFAULT_INSTANCE);
            if (cfinal == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, cfinal);
        }
        return (T) cfinal;
    }

    /* renamed from: class, reason: not valid java name */
    static Object m3866class(Method method, Object obj, Object... objArr) {
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

    /* renamed from: const, reason: not valid java name */
    public static <T extends Cfinal<T, ?>> T m3867const(T t, androidx.datastore.preferences.protobuf.Ctry ctry, Cthis cthis) {
        T t2 = (T) t.mo3869break(Ccase.NEW_MUTABLE_INSTANCE);
        try {
            C3184jy c3184jy = C3184jy.f13856do;
            c3184jy.getClass();
            BB m7180do = c3184jy.m7180do(t2.getClass());
            androidx.datastore.preferences.protobuf.Ccase ccase = ctry.f6677do;
            if (ccase == null) {
                ccase = new androidx.datastore.preferences.protobuf.Ccase(ctry);
            }
            m7180do.mo151goto(t2, ccase, cthis);
            m7180do.mo149else(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof Cwhile) {
                throw ((Cwhile) e.getCause());
            }
            throw new Cwhile(e.getMessage());
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof Cwhile) {
                throw ((Cwhile) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static <T extends Cfinal<?, ?>> void m3868final(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    /* renamed from: break, reason: not valid java name */
    public abstract Object mo3869break(Ccase ccase);

    @Override // androidx.datastore.preferences.protobuf.Cfinally
    /* renamed from: case, reason: not valid java name */
    public final void mo3870case(AbstractC3666s8 abstractC3666s8) {
        C3184jy c3184jy = C3184jy.f13856do;
        c3184jy.getClass();
        BB m7180do = c3184jy.m7180do(getClass());
        Celse celse = abstractC3666s8.f15401do;
        if (celse == null) {
            celse = new Celse(abstractC3666s8);
        }
        m7180do.mo154this(this, celse);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinally
    /* renamed from: do, reason: not valid java name */
    public final int mo3871do() {
        if (this.memoizedSerializedSize == -1) {
            C3184jy c3184jy = C3184jy.f13856do;
            c3184jy.getClass();
            this.memoizedSerializedSize = c3184jy.m7180do(getClass()).mo153new(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdo
    /* renamed from: else */
    final int mo3843else() {
        return this.memoizedSerializedSize;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((Cfinal) mo3869break(Ccase.GET_DEFAULT_INSTANCE)).getClass().isInstance(obj)) {
            return false;
        }
        C3184jy c3184jy = C3184jy.f13856do;
        c3184jy.getClass();
        return c3184jy.m7180do(getClass()).mo150for(this, (Cfinal) obj);
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinally
    /* renamed from: for, reason: not valid java name */
    public Cdo mo3872for() {
        return (Cdo) mo3869break(Ccase.NEW_BUILDER);
    }

    public final int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        C3184jy c3184jy = C3184jy.f13856do;
        c3184jy.getClass();
        int mo152if = c3184jy.m7180do(getClass()).mo152if(this);
        this.memoizedHashCode = mo152if;
        return mo152if;
    }

    @Override // defpackage.InterfaceC0528Ts
    public final boolean isInitialized() {
        byte byteValue = ((Byte) mo3869break(Ccase.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        C3184jy c3184jy = C3184jy.f13856do;
        c3184jy.getClass();
        boolean mo147case = c3184jy.m7180do(getClass()).mo147case(this);
        mo3869break(Ccase.SET_MEMOIZED_IS_INITIALIZED);
        return mo147case;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinally
    /* renamed from: new, reason: not valid java name */
    public Cdo mo3873new() {
        Cdo cdo = (Cdo) mo3869break(Ccase.NEW_BUILDER);
        cdo.m3875break(this);
        return cdo;
    }

    @Override // androidx.datastore.preferences.protobuf.Cdo
    /* renamed from: this */
    final void mo3846this(int i) {
        this.memoizedSerializedSize = i;
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        Cpackage.m3950for(this, sb, 0);
        return sb.toString();
    }

    @Override // defpackage.InterfaceC0528Ts
    /* renamed from: try */
    public Cfinal mo2293try() {
        return (Cfinal) mo3869break(Ccase.GET_DEFAULT_INSTANCE);
    }
}
