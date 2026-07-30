package defpackage;

import android.os.Bundle;
import com.facebook.share.model.CameraEffectArguments;
import java.util.HashMap;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class K6 {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap<Class<?>, Cnew> f1766do = C4120zr.m8816transient(new C3653rw(String.class, new Cdo()), new C3653rw(String[].class, new Cif()), new C3653rw(JSONArray.class, new Cfor()));

    /* renamed from: K6$do, reason: invalid class name */
    public static final class Cdo implements Cnew {
        @Override // defpackage.K6.Cnew
        public final void setOnJSON(JSONObject jSONObject, String str, Object obj) {
            C0173Do.m401try(str, "key");
            jSONObject.put(str, obj);
        }
    }

    /* renamed from: K6$for, reason: invalid class name */
    public static final class Cfor implements Cnew {
        @Override // defpackage.K6.Cnew
        public final void setOnJSON(JSONObject jSONObject, String str, Object obj) {
            C0173Do.m401try(str, "key");
            throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
        }
    }

    /* renamed from: K6$if, reason: invalid class name */
    public static final class Cif implements Cnew {
        @Override // defpackage.K6.Cnew
        public final void setOnJSON(JSONObject jSONObject, String str, Object obj) {
            C0173Do.m401try(str, "key");
            JSONArray jSONArray = new JSONArray();
            String[] strArr = (String[]) obj;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str2 = strArr[i];
                i++;
                jSONArray.put(str2);
            }
            jSONObject.put(str, jSONArray);
        }
    }

    /* renamed from: K6$new, reason: invalid class name */
    public interface Cnew {
        void setOnJSON(JSONObject jSONObject, String str, Object obj);
    }

    /* renamed from: do, reason: not valid java name */
    public static final JSONObject m1124do(CameraEffectArguments cameraEffectArguments) {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        Bundle bundle = cameraEffectArguments.f9417do;
        Set<String> keySet = bundle == null ? null : bundle.keySet();
        if (keySet == null) {
            keySet = C0515Tf.f3720do;
        }
        for (String str : keySet) {
            Object obj = bundle == null ? null : bundle.get(str);
            if (obj != null) {
                Cnew cnew = f1766do.get(obj.getClass());
                if (cnew == null) {
                    throw new IllegalArgumentException(C0173Do.m397goto(obj.getClass(), "Unsupported type: "));
                }
                cnew.setOnJSON(jSONObject, str, obj);
            }
        }
        return jSONObject;
    }
}
