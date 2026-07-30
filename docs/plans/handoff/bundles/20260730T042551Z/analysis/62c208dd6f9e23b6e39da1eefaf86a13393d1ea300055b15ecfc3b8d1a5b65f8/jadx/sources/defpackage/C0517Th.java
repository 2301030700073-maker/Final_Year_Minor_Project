package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;

/* renamed from: Th, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0517Th implements InterfaceC3140jC<File> {

    /* renamed from: do, reason: not valid java name */
    public final int f3722do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f3723do;

    /* renamed from: if, reason: not valid java name */
    public final int f3724if;

    /* renamed from: Th$do, reason: invalid class name */
    public static abstract class Cdo extends Cfor {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(File file) {
            super(file);
            C0173Do.m401try(file, "rootDir");
        }
    }

    /* renamed from: Th$for, reason: invalid class name */
    public static abstract class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final File f3725do;

        public Cfor(File file) {
            C0173Do.m401try(file, "root");
            this.f3725do = file;
        }

        /* renamed from: do, reason: not valid java name */
        public abstract File mo2278do();
    }

    /* renamed from: Th$if, reason: invalid class name */
    public final class Cif extends Cfinal<File> {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayDeque<Cfor> f3727do;

        /* renamed from: Th$if$do, reason: invalid class name */
        public final class Cdo extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public int f3728do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ Cif f3729do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f3730do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public File[] f3731do;

            /* renamed from: if, reason: not valid java name */
            public boolean f3732if;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(Cif cif, File file) {
                super(file);
                C0173Do.m401try(file, "rootDir");
                this.f3729do = cif;
            }

            @Override // defpackage.C0517Th.Cfor
            /* renamed from: do */
            public final File mo2278do() {
                boolean z = this.f3732if;
                File file = ((Cfor) this).f3725do;
                Cif cif = this.f3729do;
                if (!z && this.f3731do == null) {
                    C0517Th.this.getClass();
                    File[] listFiles = file.listFiles();
                    this.f3731do = listFiles;
                    if (listFiles == null) {
                        C0517Th.this.getClass();
                        this.f3732if = true;
                    }
                }
                File[] fileArr = this.f3731do;
                if (fileArr != null) {
                    int i = this.f3728do;
                    C0173Do.m398if(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.f3731do;
                        C0173Do.m398if(fileArr2);
                        int i2 = this.f3728do;
                        this.f3728do = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (this.f3730do) {
                    C0517Th.this.getClass();
                    return null;
                }
                this.f3730do = true;
                return file;
            }
        }

        /* renamed from: Th$if$for, reason: invalid class name */
        public final class Cfor extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public int f3733do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ Cif f3734do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f3735do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public File[] f3736do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cfor(Cif cif, File file) {
                super(file);
                C0173Do.m401try(file, "rootDir");
                this.f3734do = cif;
            }

            /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
            
                if (r0.length == 0) goto L22;
             */
            @Override // defpackage.C0517Th.Cfor
            /* renamed from: do */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.io.File mo2278do() {
                /*
                    r5 = this;
                    boolean r0 = r5.f3735do
                    java.io.File r1 = r5.f3725do
                    Th$if r2 = r5.f3734do
                    if (r0 != 0) goto L11
                    Th r0 = defpackage.C0517Th.this
                    r0.getClass()
                    r0 = 1
                    r5.f3735do = r0
                    return r1
                L11:
                    java.io.File[] r0 = r5.f3736do
                    r3 = 0
                    if (r0 == 0) goto L25
                    int r4 = r5.f3733do
                    defpackage.C0173Do.m398if(r0)
                    int r0 = r0.length
                    if (r4 >= r0) goto L1f
                    goto L25
                L1f:
                    Th r0 = defpackage.C0517Th.this
                    r0.getClass()
                    return r3
                L25:
                    java.io.File[] r0 = r5.f3736do
                    if (r0 != 0) goto L46
                    java.io.File[] r0 = r1.listFiles()
                    r5.f3736do = r0
                    if (r0 != 0) goto L36
                    Th r0 = defpackage.C0517Th.this
                    r0.getClass()
                L36:
                    java.io.File[] r0 = r5.f3736do
                    if (r0 == 0) goto L40
                    defpackage.C0173Do.m398if(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L46
                L40:
                    Th r0 = defpackage.C0517Th.this
                    r0.getClass()
                    return r3
                L46:
                    java.io.File[] r0 = r5.f3736do
                    defpackage.C0173Do.m398if(r0)
                    int r1 = r5.f3733do
                    int r2 = r1 + 1
                    r5.f3733do = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.C0517Th.Cif.Cfor.mo2278do():java.io.File");
            }
        }

        /* renamed from: Th$if$if, reason: invalid class name and collision with other inner class name */
        public final class C0007if extends Cfor {

            /* renamed from: do, reason: not valid java name */
            public boolean f3737do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0007if(File file) {
                super(file);
                C0173Do.m401try(file, "rootFile");
            }

            @Override // defpackage.C0517Th.Cfor
            /* renamed from: do */
            public final File mo2278do() {
                if (this.f3737do) {
                    return null;
                }
                this.f3737do = true;
                return super.f3725do;
            }
        }

        public Cif() {
            ArrayDeque<Cfor> arrayDeque = new ArrayDeque<>();
            this.f3727do = arrayDeque;
            boolean isDirectory = C0517Th.this.f3723do.isDirectory();
            File file = C0517Th.this.f3723do;
            if (isDirectory) {
                arrayDeque.push(m2279do(file));
            } else if (file.isFile()) {
                arrayDeque.push(new C0007if(file));
            } else {
                this.f12970for = 3;
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final Cdo m2279do(File file) {
            int m8819catch = C4122zt.m8819catch(C0517Th.this.f3722do);
            if (m8819catch == 0) {
                return new Cfor(this, file);
            }
            if (m8819catch == 1) {
                return new Cdo(this, file);
            }
            throw new C0623Yd();
        }
    }

    public C0517Th(File file) {
        Creturn.m7978else(2, "direction");
        this.f3723do = file;
        this.f3722do = 2;
        this.f3724if = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    @Override // defpackage.InterfaceC3140jC
    public final Iterator<File> iterator() {
        return new Cif();
    }
}
