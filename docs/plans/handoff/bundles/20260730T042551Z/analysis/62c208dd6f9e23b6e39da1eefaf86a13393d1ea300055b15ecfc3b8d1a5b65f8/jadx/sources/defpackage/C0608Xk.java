package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.GetTokenLoginMethodHandler;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: Xk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0608Xk implements Utility.GraphMeRequestWithCacheCallback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Bundle f4596do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ GetTokenLoginMethodHandler f4597do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ LoginClient.Request f4598do;

    public C0608Xk(Bundle bundle, GetTokenLoginMethodHandler getTokenLoginMethodHandler, LoginClient.Request request) {
        this.f4596do = bundle;
        this.f4597do = getTokenLoginMethodHandler;
        this.f4598do = request;
    }

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public final void onFailure(C3344mh c3344mh) {
        GetTokenLoginMethodHandler getTokenLoginMethodHandler = this.f4597do;
        LoginClient m5520new = getTokenLoginMethodHandler.m5520new();
        LoginClient.Request request = getTokenLoginMethodHandler.m5520new().f9342do;
        String message = c3344mh == null ? null : c3344mh.getMessage();
        ArrayList arrayList = new ArrayList();
        arrayList.add("Caught exception");
        if (message != null) {
            arrayList.add(message);
        }
        m5520new.m5508for(new LoginClient.Result(request, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
    }

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public final void onSuccess(JSONObject jSONObject) {
        String string;
        Bundle bundle = this.f4596do;
        GetTokenLoginMethodHandler getTokenLoginMethodHandler = this.f4597do;
        if (jSONObject == null) {
            string = null;
        } else {
            try {
                string = jSONObject.getString("id");
            } catch (JSONException e) {
                LoginClient m5520new = getTokenLoginMethodHandler.m5520new();
                LoginClient.Request request = getTokenLoginMethodHandler.m5520new().f9342do;
                String message = e.getMessage();
                ArrayList arrayList = new ArrayList();
                arrayList.add("Caught exception");
                if (message != null) {
                    arrayList.add(message);
                }
                m5520new.m5508for(new LoginClient.Result(request, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
                return;
            }
        }
        bundle.putString(NativeProtocol.EXTRA_USER_ID, string);
        getTokenLoginMethodHandler.m5501while(bundle, this.f4598do);
    }
}
