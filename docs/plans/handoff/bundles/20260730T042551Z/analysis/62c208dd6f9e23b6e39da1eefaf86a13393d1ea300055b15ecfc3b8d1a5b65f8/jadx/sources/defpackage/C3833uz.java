package defpackage;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

@InterfaceC0761bd(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {68, 70, 73}, m = "invokeSuspend")
/* renamed from: uz, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3833uz extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Map<String, String> f15969do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk<JSONObject, InterfaceC0576Wa<? super C3206kJ>, Object> f15970do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3892vz f15971do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ InterfaceC3641rk<String, InterfaceC0576Wa<? super C3206kJ>, Object> f15972if;

    /* renamed from: new, reason: not valid java name */
    public int f15973new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C3833uz(C3892vz c3892vz, Map<String, String> map, InterfaceC3641rk<? super JSONObject, ? super InterfaceC0576Wa<? super C3206kJ>, ? extends Object> interfaceC3641rk, InterfaceC3641rk<? super String, ? super InterfaceC0576Wa<? super C3206kJ>, ? extends Object> interfaceC3641rk2, InterfaceC0576Wa<? super C3833uz> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f15971do = c3892vz;
        this.f15969do = map;
        this.f15970do = interfaceC3641rk;
        this.f15972if = interfaceC3641rk2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [T, java.lang.String] */
    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f15973new;
        InterfaceC3641rk<String, InterfaceC0576Wa<? super C3206kJ>, Object> interfaceC3641rk = this.f15972if;
        try {
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                URLConnection openConnection = C3892vz.m8492if(this.f15971do).openConnection();
                C0173Do.m396for(openConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                for (Map.Entry<String, String> entry : this.f15969do.entrySet()) {
                    httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
                int responseCode = httpsURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb = new StringBuilder();
                    C2723ez c2723ez = new C2723ez();
                    while (true) {
                        ?? readLine = bufferedReader.readLine();
                        c2723ez.f12779do = readLine;
                        if (readLine == 0) {
                            break;
                        }
                        sb.append((String) readLine);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    InterfaceC3641rk<JSONObject, InterfaceC0576Wa<? super C3206kJ>, Object> interfaceC3641rk2 = this.f15970do;
                    this.f15973new = 1;
                    if (interfaceC3641rk2.invoke(jSONObject, this) == enumC3750tb) {
                        return enumC3750tb;
                    }
                } else {
                    String str = "Bad response code: " + responseCode;
                    this.f15973new = 2;
                    if (interfaceC3641rk.invoke(str, this) == enumC3750tb) {
                        return enumC3750tb;
                    }
                }
            } else if (i == 1 || i == 2) {
                C3645ro.m8017synchronized(obj);
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C3645ro.m8017synchronized(obj);
            }
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = e.toString();
            }
            this.f15973new = 3;
            if (interfaceC3641rk.invoke(message, this) == enumC3750tb) {
                return enumC3750tb;
            }
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        return new C3833uz(this.f15971do, this.f15969do, this.f15970do, this.f15972if, interfaceC0576Wa);
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C3833uz) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
