package defpackage;

import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cstrictfp;
import androidx.datastore.preferences.protobuf.Cthrow;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* renamed from: yx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4067yx extends Cfinal<C4067yx, Cdo> implements InterfaceC0528Ts {
    private static final C4067yx DEFAULT_INSTANCE;
    private static volatile InterfaceC4125zw<C4067yx> PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Cthrow.Cfor<String> strings_ = Cstrictfp.f6638do;

    /* renamed from: yx$do, reason: invalid class name */
    public static final class Cdo extends Cfinal.Cdo<C4067yx, Cdo> implements InterfaceC0528Ts {
        public Cdo() {
            super(C4067yx.DEFAULT_INSTANCE);
        }
    }

    static {
        C4067yx c4067yx = new C4067yx();
        DEFAULT_INSTANCE = c4067yx;
        Cfinal.m3868final(C4067yx.class, c4067yx);
    }

    /* renamed from: native, reason: not valid java name */
    public static Cdo m8777native() {
        return (Cdo) ((Cfinal.Cdo) DEFAULT_INSTANCE.mo3869break(Cfinal.Ccase.NEW_BUILDER));
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8779throw(C4067yx c4067yx, Set set) {
        if (!c4067yx.strings_.mo3879do()) {
            Cthrow.Cfor<String> cfor = c4067yx.strings_;
            int size = cfor.size();
            c4067yx.strings_ = cfor.mo3833class(size == 0 ? 10 : size * 2);
        }
        List list = c4067yx.strings_;
        Charset charset = Cthrow.f6655do;
        set.getClass();
        if (set instanceof InterfaceC0569Vp) {
            List<?> mo2667for = ((InterfaceC0569Vp) set).mo2667for();
            InterfaceC0569Vp interfaceC0569Vp = (InterfaceC0569Vp) list;
            int size2 = list.size();
            for (Object obj : mo2667for) {
                if (obj == null) {
                    String str = "Element at index " + (interfaceC0569Vp.size() - size2) + " is null.";
                    int size3 = interfaceC0569Vp.size();
                    while (true) {
                        size3--;
                        if (size3 < size2) {
                            throw new NullPointerException(str);
                        }
                        interfaceC0569Vp.remove(size3);
                    }
                } else if (obj instanceof AbstractC3370n6) {
                    interfaceC0569Vp.mo2670strictfp((AbstractC3370n6) obj);
                } else {
                    interfaceC0569Vp.add((String) obj);
                }
            }
            return;
        }
        if (set instanceof Dx) {
            list.addAll(set);
            return;
        }
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(set.size() + list.size());
        }
        int size4 = list.size();
        for (Object obj2 : set) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size4) + " is null.";
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size4) {
                        throw new NullPointerException(str2);
                    }
                    list.remove(size5);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static C4067yx m8780while() {
        return DEFAULT_INSTANCE;
    }

    @Override // androidx.datastore.preferences.protobuf.Cfinal
    /* renamed from: break */
    public final Object mo3869break(Cfinal.Ccase ccase) {
        switch (ccase) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new Qy(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case NEW_MUTABLE_INSTANCE:
                return new C4067yx();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4125zw<C4067yx> interfaceC4125zw = PARSER;
                if (interfaceC4125zw == null) {
                    synchronized (C4067yx.class) {
                        try {
                            interfaceC4125zw = PARSER;
                            if (interfaceC4125zw == null) {
                                interfaceC4125zw = new Cfinal.Cif<>(DEFAULT_INSTANCE);
                                PARSER = interfaceC4125zw;
                            }
                        } finally {
                        }
                    }
                }
                return interfaceC4125zw;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final Cthrow.Cfor m8781import() {
        return this.strings_;
    }
}
