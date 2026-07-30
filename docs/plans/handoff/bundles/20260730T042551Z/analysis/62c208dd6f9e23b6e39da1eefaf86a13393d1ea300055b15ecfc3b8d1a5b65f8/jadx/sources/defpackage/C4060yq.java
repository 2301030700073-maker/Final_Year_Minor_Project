package defpackage;

import androidx.lifecycle.Cimport;
import java.io.PrintWriter;

/* renamed from: yq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4060yq extends AbstractC4001xq {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2714eq f16833do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f16834do;

    /* renamed from: yq$do, reason: invalid class name */
    public static class Cdo<D> extends C0419Ot<D> {
        @Override // androidx.lifecycle.LiveData
        /* renamed from: case */
        public final void mo4235case() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: else */
        public final void mo4236else(InterfaceC3711sv<? super D> interfaceC3711sv) {
            super.mo4236else(interfaceC3711sv);
        }

        @Override // defpackage.C0419Ot, androidx.lifecycle.LiveData
        /* renamed from: goto */
        public final void mo1685goto(D d) {
            super.mo1685goto(d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #0 : ");
            C3645ro.m8001goto(sb, null);
            sb.append("}}");
            return sb.toString();
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: try */
        public final void mo4240try() {
            throw null;
        }
    }

    /* renamed from: yq$if, reason: invalid class name */
    public static class Cif extends AbstractC0805cL {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f16835do = new Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ME<Cdo> f16836do = new ME<>();

        /* renamed from: yq$if$do, reason: invalid class name */
        public static class Cdo implements Cimport.Cif {
            @Override // androidx.lifecycle.Cimport.Cif
            /* renamed from: do */
            public final <T extends AbstractC0805cL> T mo1068do(Class<T> cls) {
                return new Cif();
            }

            @Override // androidx.lifecycle.Cimport.Cif
            /* renamed from: if */
            public final AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
                return mo1068do(cls);
            }
        }

        @Override // defpackage.AbstractC0805cL
        /* renamed from: if */
        public final void mo4218if() {
            ME<Cdo> me = this.f16836do;
            int i = me.f2143for;
            if (i > 0) {
                ((Cdo) me.f2142do[0]).getClass();
                throw null;
            }
            Object[] objArr = me.f2142do;
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = null;
            }
            me.f2143for = 0;
        }
    }

    public C4060yq(InterfaceC2714eq interfaceC2714eq, C2687eL c2687eL) {
        this.f16833do = interfaceC2714eq;
        this.f16834do = (Cif) new Cimport(c2687eL, Cif.f16835do).m4269do(Cif.class);
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public final void m8776if(String str, PrintWriter printWriter) {
        ME<Cdo> me = this.f16834do.f16836do;
        if (me.f2143for > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            if (me.f2143for <= 0) {
                return;
            }
            Cdo cdo = (Cdo) me.f2142do[0];
            printWriter.print(str);
            printWriter.print("  #");
            printWriter.print(me.f2141do[0]);
            printWriter.print(": ");
            printWriter.println(cdo.toString());
            printWriter.print(str2);
            printWriter.print("mId=");
            printWriter.print(0);
            printWriter.print(" mArgs=");
            printWriter.println((Object) null);
            printWriter.print(str2);
            printWriter.print("mLoader=");
            printWriter.println((Object) null);
            throw null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C3645ro.m8001goto(sb, this.f16833do);
        sb.append("}}");
        return sb.toString();
    }
}
