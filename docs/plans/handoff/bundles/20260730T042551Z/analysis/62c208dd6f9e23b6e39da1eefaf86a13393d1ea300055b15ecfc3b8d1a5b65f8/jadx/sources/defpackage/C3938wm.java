package defpackage;

import com.google.android.gms.common.api.Api;
import defpackage.C2945im;
import defpackage.C3408nm;
import defpackage.C3408nm.Ctry;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: wm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3938wm implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f16396do = Logger.getLogger(C3231km.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0671a6 f16397do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2945im.Cdo f16398do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16399do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16400do;

    /* renamed from: wm$do, reason: invalid class name */
    public static final class Cdo implements KE {

        /* renamed from: do, reason: not valid java name */
        public byte f16401do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC0671a6 f16402do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public short f16403do;

        /* renamed from: for, reason: not valid java name */
        public int f16404for;

        /* renamed from: new, reason: not valid java name */
        public int f16405new;

        /* renamed from: try, reason: not valid java name */
        public int f16406try;

        public Cdo(InterfaceC0671a6 interfaceC0671a6) {
            this.f16402do = interfaceC0671a6;
        }

        @Override // defpackage.KE, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // defpackage.KE
        /* renamed from: throw */
        public final long mo631throw(U5 u5, long j) {
            int i;
            int readInt;
            do {
                int i2 = this.f16406try;
                InterfaceC0671a6 interfaceC0671a6 = this.f16402do;
                if (i2 != 0) {
                    long mo631throw = interfaceC0671a6.mo631throw(u5, Math.min(j, i2));
                    if (mo631throw == -1) {
                        return -1L;
                    }
                    this.f16406try = (int) (this.f16406try - mo631throw);
                    return mo631throw;
                }
                interfaceC0671a6.mo2334implements(this.f16403do);
                this.f16403do = (short) 0;
                if ((this.f16401do & 4) != 0) {
                    return -1L;
                }
                i = this.f16405new;
                int readByte = ((interfaceC0671a6.readByte() & 255) << 16) | ((interfaceC0671a6.readByte() & 255) << 8) | (interfaceC0671a6.readByte() & 255);
                this.f16406try = readByte;
                this.f16404for = readByte;
                byte readByte2 = (byte) (interfaceC0671a6.readByte() & 255);
                this.f16401do = (byte) (interfaceC0671a6.readByte() & 255);
                Logger logger = C3938wm.f16396do;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(C3231km.m7276do(true, this.f16405new, this.f16404for, readByte2, this.f16401do));
                }
                readInt = interfaceC0671a6.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
                this.f16405new = readInt;
                if (readByte2 != 9) {
                    C3231km.m7277if("%s != TYPE_CONTINUATION", Byte.valueOf(readByte2));
                    throw null;
                }
            } while (readInt == i);
            C3231km.m7277if("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }

        @Override // defpackage.KE
        /* renamed from: try */
        public final C3675sH mo632try() {
            return this.f16402do.mo632try();
        }
    }

    /* renamed from: wm$if, reason: invalid class name */
    public interface Cif {
    }

    public C3938wm(InterfaceC0671a6 interfaceC0671a6, boolean z) {
        this.f16397do = interfaceC0671a6;
        this.f16400do = z;
        Cdo cdo = new Cdo(interfaceC0671a6);
        this.f16399do = cdo;
        this.f16398do = new C2945im.Cdo(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m8583do(int i, byte b, short s) {
        if ((b & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        C3231km.m7277if("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        throw null;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m8584break(Cif cif, int i, byte b, int i2) {
        if (i2 == 0) {
            C3231km.m7277if("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short readByte = (b & 8) != 0 ? (short) (this.f16397do.readByte() & 255) : (short) 0;
        int readInt = this.f16397do.readInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER;
        ArrayList m8585case = m8585case(m8583do(i - 4, b, readByte), readByte, b, i2);
        C3408nm c3408nm = C3408nm.this;
        synchronized (c3408nm) {
            if (c3408nm.f14565do.contains(Integer.valueOf(readInt))) {
                c3408nm.m7607const(readInt, 2);
                return;
            }
            c3408nm.f14565do.add(Integer.valueOf(readInt));
            try {
                c3408nm.m7605case(new C3526pm(c3408nm, new Object[]{c3408nm.f14558break, Integer.valueOf(readInt)}, readInt, m8585case));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ec, code lost:
    
        throw new java.io.IOException("Invalid dynamic table size update " + r3.f13550if);
     */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList m8585case(int r3, short r4, byte r5, int r6) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3938wm.m8585case(int, short, byte, int):java.util.ArrayList");
    }

    /* renamed from: class, reason: not valid java name */
    public final void m8586class(Cif cif, int i, int i2) {
        if (i != 4) {
            C3231km.m7277if("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
        long readInt = this.f16397do.readInt() & 2147483647L;
        if (readInt == 0) {
            C3231km.m7277if("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
        C3408nm.Ccase ccase = (C3408nm.Ccase) cif;
        if (i2 == 0) {
            synchronized (C3408nm.this) {
                C3408nm c3408nm = C3408nm.this;
                c3408nm.f14572else += readInt;
                c3408nm.notifyAll();
            }
            return;
        }
        C3997xm m7609for = C3408nm.this.m7609for(i2);
        if (m7609for != null) {
            synchronized (m7609for) {
                m7609for.f16607if += readInt;
                if (readInt > 0) {
                    m7609for.notifyAll();
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f16397do.close();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8587for(Cif cif) {
        if (this.f16400do) {
            if (m8589if(true, cif)) {
                return;
            }
            C3231km.m7277if("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        C3488p6 c3488p6 = C3231km.f14037do;
        C3488p6 g = this.f16397do.g(c3488p6.f14882do.length);
        Level level = Level.FINE;
        Logger logger = f16396do;
        if (logger.isLoggable(level)) {
            logger.fine(SJ.m2132class("<< CONNECTION %s", g.mo2894const()));
        }
        if (c3488p6.equals(g)) {
            return;
        }
        C3231km.m7277if("Expected a connection header but was %s", g.mo2900return());
        throw null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8588goto(Cif cif, int i, byte b, int i2) {
        if (i2 == 0) {
            C3231km.m7277if("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }
        boolean z = (b & 1) != 0;
        short readByte = (b & 8) != 0 ? (short) (this.f16397do.readByte() & 255) : (short) 0;
        if ((b & 32) != 0) {
            InterfaceC0671a6 interfaceC0671a6 = this.f16397do;
            interfaceC0671a6.readInt();
            interfaceC0671a6.readByte();
            cif.getClass();
            i -= 5;
        }
        ArrayList m8585case = m8585case(m8583do(i, b, readByte), readByte, b, i2);
        C3408nm.Ccase ccase = (C3408nm.Ccase) cif;
        C3408nm.this.getClass();
        if (i2 != 0 && (i2 & 1) == 0) {
            C3408nm c3408nm = C3408nm.this;
            c3408nm.getClass();
            try {
                c3408nm.m7605case(new C3585qm(c3408nm, new Object[]{c3408nm.f14558break, Integer.valueOf(i2)}, i2, m8585case, z));
                return;
            } catch (RejectedExecutionException unused) {
                return;
            }
        }
        synchronized (C3408nm.this) {
            try {
                C3997xm m7609for = C3408nm.this.m7609for(i2);
                if (m7609for == null) {
                    C3408nm c3408nm2 = C3408nm.this;
                    if (!c3408nm2.f14577if) {
                        if (i2 > c3408nm2.f14573for) {
                            if (i2 % 2 != c3408nm2.f14578new % 2) {
                                C3997xm c3997xm = new C3997xm(i2, C3408nm.this, false, z, SJ.m2144return(m8585case));
                                C3408nm c3408nm3 = C3408nm.this;
                                c3408nm3.f14573for = i2;
                                c3408nm3.f14564do.put(Integer.valueOf(i2), c3997xm);
                                C3408nm.f14557if.execute(new C3761tm(ccase, new Object[]{C3408nm.this.f14558break, Integer.valueOf(i2)}, c3997xm));
                            }
                        }
                    }
                } else {
                    m7609for.m8664goto(m8585case);
                    if (z) {
                        m7609for.m8662else();
                    }
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x0324, code lost:
    
        if (r18 == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0326, code lost:
    
        r7.m8662else();
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8589if(boolean r21, defpackage.C3938wm.Cif r22) {
        /*
            Method dump skipped, instructions count: 874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3938wm.m8589if(boolean, wm$if):boolean");
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8590new(Cif cif, int i, int i2) {
        int i3;
        C3997xm[] c3997xmArr;
        if (i < 8) {
            C3231km.m7277if("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        }
        if (i2 != 0) {
            C3231km.m7277if("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
        int readInt = this.f16397do.readInt();
        int readInt2 = this.f16397do.readInt();
        int i4 = i - 8;
        int[] _values = V1._values();
        int length = _values.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                i3 = 0;
                break;
            }
            i3 = _values[i5];
            if (V1.m2498do(i3) == readInt2) {
                break;
            } else {
                i5++;
            }
        }
        if (i3 == 0) {
            C3231km.m7277if("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            throw null;
        }
        C3488p6 c3488p6 = C3488p6.f14879do;
        if (i4 > 0) {
            c3488p6 = this.f16397do.g(i4);
        }
        C3408nm.Ccase ccase = (C3408nm.Ccase) cif;
        ccase.getClass();
        c3488p6.mo2897import();
        synchronized (C3408nm.this) {
            c3997xmArr = (C3997xm[]) C3408nm.this.f14564do.values().toArray(new C3997xm[C3408nm.this.f14564do.size()]);
            C3408nm.this.f14577if = true;
        }
        for (C3997xm c3997xm : c3997xmArr) {
            if (c3997xm.f16598do > readInt && c3997xm.m8668try()) {
                c3997xm.m8667this(5);
                C3408nm.this.m7610goto(c3997xm.f16598do);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m8591this(Cif cif, int i, byte b, int i2) {
        if (i != 8) {
            C3231km.m7277if("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        }
        if (i2 != 0) {
            C3231km.m7277if("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
        int readInt = this.f16397do.readInt();
        int readInt2 = this.f16397do.readInt();
        boolean z = (b & 1) != 0;
        C3408nm.Ccase ccase = (C3408nm.Ccase) cif;
        ccase.getClass();
        if (!z) {
            try {
                C3408nm c3408nm = C3408nm.this;
                c3408nm.f14566do.execute(c3408nm.new Ctry(readInt, readInt2));
                return;
            } catch (RejectedExecutionException unused) {
                return;
            }
        }
        synchronized (C3408nm.this) {
            try {
                if (readInt == 1) {
                    C3408nm.this.f14575if++;
                } else if (readInt == 2) {
                    C3408nm.this.f14579new++;
                } else if (readInt == 3) {
                    C3408nm c3408nm2 = C3408nm.this;
                    c3408nm2.getClass();
                    c3408nm2.notifyAll();
                }
            } finally {
            }
        }
    }
}
