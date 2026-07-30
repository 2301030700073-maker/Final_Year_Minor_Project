package defpackage;

import com.facebook.GraphRequest;
import com.facebook.internal.NativeProtocol;
import defpackage.Cinterface;
import org.json.JSONObject;

/* renamed from: strictfp, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cstrictfp implements GraphRequest.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f15564do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f15565do;

    public /* synthetic */ Cstrictfp(Cinterface.Cnew cnew, int i) {
        this.f15564do = i;
        this.f15565do = cnew;
    }

    @Override // com.facebook.GraphRequest.Cif
    /* renamed from: if */
    public final void mo78if(C0346Ll c0346Ll) {
        int i = this.f15564do;
        Object obj = this.f15565do;
        switch (i) {
            case 0:
                Cinterface.Cnew cnew = (Cinterface.Cnew) obj;
                C0173Do.m401try(cnew, "$refreshResult");
                JSONObject jSONObject = c0346Ll.f1998if;
                if (jSONObject != null) {
                    cnew.f13574do = jSONObject.optString("access_token");
                    cnew.f13572do = jSONObject.optInt("expires_at");
                    cnew.f13575if = jSONObject.optInt("expires_in");
                    cnew.f13573do = Long.valueOf(jSONObject.optLong("data_access_expiration_time"));
                    cnew.f13576if = jSONObject.optString(NativeProtocol.RESULT_ARGS_GRAPH_DOMAIN, null);
                    break;
                }
                break;
            default:
                C4122zt.m8817break(obj);
                break;
        }
    }
}
