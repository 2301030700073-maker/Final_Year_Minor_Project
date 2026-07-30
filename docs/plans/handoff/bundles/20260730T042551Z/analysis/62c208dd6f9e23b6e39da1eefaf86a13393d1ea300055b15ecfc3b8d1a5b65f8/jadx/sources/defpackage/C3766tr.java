package defpackage;

import androidx.datastore.preferences.protobuf.Cthrow;
import java.nio.charset.Charset;

/* renamed from: tr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3766tr {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f15799do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0484Rs f15800do;

    /* renamed from: tr$do, reason: invalid class name */
    public static class Cdo implements InterfaceC0484Rs {
        @Override // defpackage.InterfaceC0484Rs
        /* renamed from: do */
        public final boolean mo1991do(Class<?> cls) {
            return false;
        }

        @Override // defpackage.InterfaceC0484Rs
        /* renamed from: if */
        public final InterfaceC0440Ps mo1992if(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* renamed from: tr$if, reason: invalid class name */
    public static class Cif implements InterfaceC0484Rs {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0484Rs[] f15801do;

        public Cif(InterfaceC0484Rs... interfaceC0484RsArr) {
            this.f15801do = interfaceC0484RsArr;
        }

        @Override // defpackage.InterfaceC0484Rs
        /* renamed from: do */
        public final boolean mo1991do(Class<?> cls) {
            for (InterfaceC0484Rs interfaceC0484Rs : this.f15801do) {
                if (interfaceC0484Rs.mo1991do(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // defpackage.InterfaceC0484Rs
        /* renamed from: if */
        public final InterfaceC0440Ps mo1992if(Class<?> cls) {
            for (InterfaceC0484Rs interfaceC0484Rs : this.f15801do) {
                if (interfaceC0484Rs.mo1991do(cls)) {
                    return interfaceC0484Rs.mo1992if(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
        }
    }

    public C3766tr() {
        InterfaceC0484Rs interfaceC0484Rs;
        InterfaceC0484Rs[] interfaceC0484RsArr = new InterfaceC0484Rs[2];
        interfaceC0484RsArr[0] = C0454Qk.f3040do;
        try {
            interfaceC0484Rs = (InterfaceC0484Rs) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC0484Rs = f15799do;
        }
        interfaceC0484RsArr[1] = interfaceC0484Rs;
        Cif cif = new Cif(interfaceC0484RsArr);
        Charset charset = Cthrow.f6655do;
        this.f15800do = cif;
    }
}
