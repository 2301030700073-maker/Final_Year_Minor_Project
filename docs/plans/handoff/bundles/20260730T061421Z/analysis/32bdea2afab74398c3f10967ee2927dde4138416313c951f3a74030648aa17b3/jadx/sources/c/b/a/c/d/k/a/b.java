package c.b.a.c.d.k.a;

import com.google.android.gms.common.server.response.FastJsonResponse$Field;
import com.google.android.gms.internal.zzbma;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class b {
    public abstract Map a();

    public Object b(FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.h != null) {
            throw new UnsupportedOperationException("Converting to JSON does not require this method.");
        }
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Object c(FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        a aVar = fastJsonResponse$Field.k;
        if (aVar == null) {
            return obj;
        }
        zzbma zzbmaVar = (zzbma) aVar;
        String str = (String) zzbmaVar.f3450c.get(((Integer) obj).intValue());
        return (str == null && zzbmaVar.f3449b.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public boolean d() {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public boolean e() {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public boolean f(FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.f3425d == 11) {
            return fastJsonResponse$Field.e ? d() : e();
        }
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public String toString() {
        Map a2 = a();
        StringBuilder sb = new StringBuilder(100);
        Iterator it = a2.keySet().iterator();
        while (it.hasNext()) {
            FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field) a2.get((String) it.next());
            if (f(fastJsonResponse$Field)) {
                b(fastJsonResponse$Field);
                throw null;
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
