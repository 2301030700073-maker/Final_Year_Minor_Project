package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: qp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3588qp implements InterfaceC3594qv, InterfaceC2686eK {

    /* renamed from: do, reason: not valid java name */
    public final JsonWriter f15158do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Class<?>, InterfaceC3535pv<?>> f15159do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3535pv<Object> f15160do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15161do = true;

    /* renamed from: if, reason: not valid java name */
    public final Map<Class<?>, InterfaceC2628dK<?>> f15162if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f15163if;

    public C3588qp(Writer writer, HashMap hashMap, HashMap hashMap2, C2948ip c2948ip, boolean z) {
        this.f15158do = new JsonWriter(writer);
        this.f15159do = hashMap;
        this.f15162if = hashMap2;
        this.f15160do = c2948ip;
        this.f15163if = z;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m7906break() {
        if (!this.f15161do) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: case */
    public final InterfaceC3594qv mo7408case(C0385Nh c0385Nh, boolean z) {
        String str = c0385Nh.f2421do;
        m7906break();
        JsonWriter jsonWriter = this.f15158do;
        jsonWriter.name(str);
        m7906break();
        jsonWriter.value(z);
        return this;
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: do */
    public final InterfaceC3594qv mo7411do(C0385Nh c0385Nh, int i) {
        String str = c0385Nh.f2421do;
        m7906break();
        JsonWriter jsonWriter = this.f15158do;
        jsonWriter.name(str);
        m7906break();
        jsonWriter.value(i);
        return this;
    }

    @Override // defpackage.InterfaceC2686eK
    /* renamed from: else */
    public final InterfaceC2686eK mo6557else(String str) {
        m7906break();
        this.f15158do.value(str);
        return this;
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: for */
    public final InterfaceC3594qv mo7413for(C0385Nh c0385Nh, double d) {
        String str = c0385Nh.f2421do;
        m7906break();
        JsonWriter jsonWriter = this.f15158do;
        jsonWriter.name(str);
        m7906break();
        jsonWriter.value(d);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public final C3588qp m7907goto(Object obj) {
        JsonWriter jsonWriter = this.f15158do;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        int i = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    m7907goto(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        m7908this(entry.getValue(), (String) key);
                    } catch (ClassCastException e) {
                        throw new C2646dg(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            InterfaceC3535pv<?> interfaceC3535pv = this.f15159do.get(obj.getClass());
            if (interfaceC3535pv != null) {
                jsonWriter.beginObject();
                interfaceC3535pv.mo2012do(obj, this);
                jsonWriter.endObject();
                return this;
            }
            InterfaceC2628dK<?> interfaceC2628dK = this.f15162if.get(obj.getClass());
            if (interfaceC2628dK != null) {
                interfaceC2628dK.mo2012do(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                jsonWriter.beginObject();
                this.f15160do.mo2012do(obj, this);
                jsonWriter.endObject();
                return this;
            }
            if (obj instanceof InterfaceC3417nv) {
                int mo491do = ((InterfaceC3417nv) obj).mo491do();
                m7906break();
                jsonWriter.value(mo491do);
            } else {
                String name = ((Enum) obj).name();
                m7906break();
                jsonWriter.value(name);
            }
            return this;
        }
        if (obj instanceof byte[]) {
            m7906break();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                jsonWriter.value(r7[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                m7906break();
                jsonWriter.value(j);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                jsonWriter.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                jsonWriter.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i < length5) {
                m7907goto(numberArr[i]);
                i++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i < length6) {
                m7907goto(objArr[i]);
                i++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: if */
    public final InterfaceC3594qv mo7415if(C0385Nh c0385Nh, long j) {
        String str = c0385Nh.f2421do;
        m7906break();
        JsonWriter jsonWriter = this.f15158do;
        jsonWriter.name(str);
        m7906break();
        jsonWriter.value(j);
        return this;
    }

    @Override // defpackage.InterfaceC3594qv
    /* renamed from: new */
    public final InterfaceC3594qv mo7416new(C0385Nh c0385Nh, Object obj) {
        return m7908this(obj, c0385Nh.f2421do);
    }

    /* renamed from: this, reason: not valid java name */
    public final C3588qp m7908this(Object obj, String str) {
        boolean z = this.f15163if;
        JsonWriter jsonWriter = this.f15158do;
        if (z) {
            if (obj == null) {
                return this;
            }
            m7906break();
            jsonWriter.name(str);
            return m7907goto(obj);
        }
        m7906break();
        jsonWriter.name(str);
        if (obj != null) {
            return m7907goto(obj);
        }
        jsonWriter.nullValue();
        return this;
    }

    @Override // defpackage.InterfaceC2686eK
    /* renamed from: try */
    public final InterfaceC2686eK mo6558try(boolean z) {
        m7906break();
        this.f15158do.value(z);
        return this;
    }
}
