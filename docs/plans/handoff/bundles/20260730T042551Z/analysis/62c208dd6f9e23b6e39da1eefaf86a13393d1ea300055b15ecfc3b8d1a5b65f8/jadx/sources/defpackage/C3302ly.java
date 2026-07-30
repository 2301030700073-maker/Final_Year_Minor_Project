package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: ly, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3302ly implements InterfaceC3594qv {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OutputStream f14274do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Class<?>, InterfaceC3535pv<?>> f14275do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3479oy f14276do = new C3479oy(this);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3535pv<Object> f14277do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Map<Class<?>, InterfaceC2628dK<?>> f14278if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Charset f14271do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name */
    public static final C0385Nh f14270do = new C0385Nh("key", V1.m2495catch(C4122zt.m8823else(InterfaceC2899hy.class, new N2(1))));

    /* renamed from: if, reason: not valid java name */
    public static final C0385Nh f14273if = new C0385Nh("value", V1.m2495catch(C4122zt.m8823else(InterfaceC2899hy.class, new N2(2))));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3243ky f14272do = new InterfaceC3535pv() { // from class: ky
        @Override // defpackage.InterfaceC0647Zf
        /* renamed from: do */
        public final void mo2012do(Object obj, InterfaceC3594qv interfaceC3594qv) {
            Map.Entry entry = (Map.Entry) obj;
            InterfaceC3594qv interfaceC3594qv2 = interfaceC3594qv;
            interfaceC3594qv2.mo7416new(C3302ly.f14270do, entry.getKey());
            interfaceC3594qv2.mo7416new(C3302ly.f14273if, entry.getValue());
        }
    };

    public C3302ly(ByteArrayOutputStream byteArrayOutputStream, Map map, Map map2, InterfaceC3535pv interfaceC3535pv) {
        this.f14274do = byteArrayOutputStream;
        this.f14275do = map;
        this.f14278if = map2;
        this.f14277do = interfaceC3535pv;
    }

    /* renamed from: break, reason: not valid java name */
    public static int m7407break(C0385Nh c0385Nh) {
        InterfaceC2899hy interfaceC2899hy = (InterfaceC2899hy) ((Annotation) c0385Nh.f2422do.get(InterfaceC2899hy.class));
        if (interfaceC2899hy != null) {
            return ((N2) interfaceC2899hy).f2285do;
        }
        throw new C2646dg("Field has no @Protobuf config");
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: case, reason: not valid java name */
    public final InterfaceC3594qv mo7408case(C0385Nh c0385Nh, boolean z) {
        m7414goto(c0385Nh, z ? 1 : 0, true);
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m7409catch(int i) {
        while ((i & (-128)) != 0) {
            this.f14274do.write((i & ModuleDescriptor.MODULE_VERSION) | 128);
            i >>>= 7;
        }
        this.f14274do.write(i & ModuleDescriptor.MODULE_VERSION);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m7410class(long j) {
        while (((-128) & j) != 0) {
            this.f14274do.write((((int) j) & ModuleDescriptor.MODULE_VERSION) | 128);
            j >>>= 7;
        }
        this.f14274do.write(((int) j) & ModuleDescriptor.MODULE_VERSION);
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3594qv mo7411do(C0385Nh c0385Nh, int i) {
        m7414goto(c0385Nh, i, true);
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7412else(C0385Nh c0385Nh, double d, boolean z) {
        if (z && d == 0.0d) {
            return;
        }
        m7409catch((m7407break(c0385Nh) << 3) | 1);
        this.f14274do.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: for, reason: not valid java name */
    public final InterfaceC3594qv mo7413for(C0385Nh c0385Nh, double d) {
        m7412else(c0385Nh, d, true);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7414goto(C0385Nh c0385Nh, int i, boolean z) {
        if (z && i == 0) {
            return;
        }
        InterfaceC2899hy interfaceC2899hy = (InterfaceC2899hy) ((Annotation) c0385Nh.f2422do.get(InterfaceC2899hy.class));
        if (interfaceC2899hy == null) {
            throw new C2646dg("Field has no @Protobuf config");
        }
        m7409catch(((N2) interfaceC2899hy).f2285do << 3);
        m7409catch(i);
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3594qv mo7415if(C0385Nh c0385Nh, long j) {
        if (j != 0) {
            InterfaceC2899hy interfaceC2899hy = (InterfaceC2899hy) ((Annotation) c0385Nh.f2422do.get(InterfaceC2899hy.class));
            if (interfaceC2899hy == null) {
                throw new C2646dg("Field has no @Protobuf config");
            }
            m7409catch(((N2) interfaceC2899hy).f2285do << 3);
            m7410class(j);
        }
        return this;
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: new, reason: not valid java name */
    public final InterfaceC3594qv mo7416new(C0385Nh c0385Nh, Object obj) {
        m7418try(c0385Nh, obj, true);
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m7417this(InterfaceC3535pv interfaceC3535pv, C0385Nh c0385Nh, Object obj, boolean z) {
        C0635Yp c0635Yp = new C0635Yp();
        try {
            OutputStream outputStream = this.f14274do;
            this.f14274do = c0635Yp;
            try {
                interfaceC3535pv.mo2012do(obj, this);
                this.f14274do = outputStream;
                long j = c0635Yp.f4764do;
                c0635Yp.close();
                if (z && j == 0) {
                    return;
                }
                m7409catch((m7407break(c0385Nh) << 3) | 2);
                m7410class(j);
                interfaceC3535pv.mo2012do(obj, this);
            } catch (Throwable th) {
                this.f14274do = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                c0635Yp.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final C3302ly m7418try(C0385Nh c0385Nh, Object obj, boolean z) {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            m7409catch((m7407break(c0385Nh) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f14271do);
            m7409catch(bytes.length);
            this.f14274do.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                m7418try(c0385Nh, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m7417this(f14272do, c0385Nh, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            m7412else(c0385Nh, ((Double) obj).doubleValue(), z);
            return this;
        }
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            if (!z || floatValue != 0.0f) {
                m7409catch((m7407break(c0385Nh) << 3) | 5);
                this.f14274do.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
            }
            return this;
        }
        if (obj instanceof Number) {
            long longValue = ((Number) obj).longValue();
            if (!z || longValue != 0) {
                InterfaceC2899hy interfaceC2899hy = (InterfaceC2899hy) ((Annotation) c0385Nh.f2422do.get(InterfaceC2899hy.class));
                if (interfaceC2899hy == null) {
                    throw new C2646dg("Field has no @Protobuf config");
                }
                m7409catch(((N2) interfaceC2899hy).f2285do << 3);
                m7410class(longValue);
            }
            return this;
        }
        if (obj instanceof Boolean) {
            m7414goto(c0385Nh, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return this;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return this;
            }
            m7409catch((m7407break(c0385Nh) << 3) | 2);
            m7409catch(bArr.length);
            this.f14274do.write(bArr);
            return this;
        }
        InterfaceC3535pv<?> interfaceC3535pv = this.f14275do.get(obj.getClass());
        if (interfaceC3535pv != null) {
            m7417this(interfaceC3535pv, c0385Nh, obj, z);
            return this;
        }
        InterfaceC2628dK<?> interfaceC2628dK = this.f14278if.get(obj.getClass());
        if (interfaceC2628dK != null) {
            C3479oy c3479oy = this.f14276do;
            c3479oy.f14873do = false;
            c3479oy.f14871do = c0385Nh;
            c3479oy.f14874if = z;
            interfaceC2628dK.mo2012do(obj, c3479oy);
            return this;
        }
        if (obj instanceof InterfaceC2840gy) {
            m7414goto(c0385Nh, ((InterfaceC2840gy) obj).mo1993do(), true);
            return this;
        }
        if (obj instanceof Enum) {
            m7414goto(c0385Nh, ((Enum) obj).ordinal(), true);
            return this;
        }
        m7417this(this.f14277do, c0385Nh, obj, z);
        return this;
    }
}
