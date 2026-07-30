package defpackage;

import com.google.protobuf.Ccatch;
import java.nio.charset.Charset;

/* renamed from: ur, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3825ur {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f15956do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0462Qs f15957do;

    /* renamed from: ur$do, reason: invalid class name */
    public class Cdo implements InterfaceC0462Qs {
        @Override // defpackage.InterfaceC0462Qs
        /* renamed from: do */
        public final boolean mo1797do(Class<?> cls) {
            return false;
        }

        @Override // defpackage.InterfaceC0462Qs
        /* renamed from: if */
        public final InterfaceC0418Os mo1798if(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* renamed from: ur$if, reason: invalid class name */
    public static class Cif implements InterfaceC0462Qs {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0462Qs[] f15958do;

        public Cif(InterfaceC0462Qs... interfaceC0462QsArr) {
            this.f15958do = interfaceC0462QsArr;
        }

        @Override // defpackage.InterfaceC0462Qs
        /* renamed from: do */
        public final boolean mo1797do(Class<?> cls) {
            for (InterfaceC0462Qs interfaceC0462Qs : this.f15958do) {
                if (interfaceC0462Qs.mo1797do(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // defpackage.InterfaceC0462Qs
        /* renamed from: if */
        public final InterfaceC0418Os mo1798if(Class<?> cls) {
            for (InterfaceC0462Qs interfaceC0462Qs : this.f15958do) {
                if (interfaceC0462Qs.mo1797do(cls)) {
                    return interfaceC0462Qs.mo1798if(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
        }
    }

    public C3825ur() {
        InterfaceC0462Qs interfaceC0462Qs;
        InterfaceC0462Qs[] interfaceC0462QsArr = new InterfaceC0462Qs[2];
        interfaceC0462QsArr[0] = C0432Pk.f2821do;
        try {
            interfaceC0462Qs = (InterfaceC0462Qs) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC0462Qs = f15956do;
        }
        interfaceC0462QsArr[1] = interfaceC0462Qs;
        Cif cif = new Cif(interfaceC0462QsArr);
        Charset charset = Ccatch.f12045do;
        this.f15957do = cif;
    }
}
