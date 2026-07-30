package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.messaging.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.InterfaceC3380nG;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: sd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3693sd implements InterfaceC3380nG.Cdo, NF {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f15504do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f15505for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f15506if;

    public /* synthetic */ C3693sd(Object obj, Object obj2, Object obj3) {
        this.f15504do = obj;
        this.f15506if = obj2;
        this.f15505for = obj3;
    }

    @Override // defpackage.NF
    public final FG then(Object obj) {
        String str;
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f15504do;
        String str2 = (String) this.f15506if;
        Cdo.C0077do c0077do = (Cdo.C0077do) this.f15505for;
        String str3 = (String) obj;
        Cdo m6082for = FirebaseMessaging.m6082for(firebaseMessaging.f11896do);
        C0706ai c0706ai = firebaseMessaging.f11895do;
        c0706ai.m3147do();
        String m3150new = "[DEFAULT]".equals(c0706ai.f4986do) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : c0706ai.m3150new();
        String m3075do = firebaseMessaging.f11894do.m3075do();
        synchronized (m6082for) {
            long currentTimeMillis = System.currentTimeMillis();
            int i = Cdo.C0077do.f11911do;
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str3);
                jSONObject.put("appVersion", m3075do);
                jSONObject.put("timestamp", currentTimeMillis);
                str = jSONObject.toString();
            } catch (JSONException e) {
                e.toString();
                str = null;
            }
            if (str != null) {
                SharedPreferences.Editor edit = m6082for.f11910do.edit();
                edit.putString(m3150new + "|T|" + str2 + "|*", str);
                edit.commit();
            }
        }
        if (c0077do == null || !str3.equals(c0077do.f11914do)) {
            C0706ai c0706ai2 = firebaseMessaging.f11895do;
            c0706ai2.m3147do();
            if ("[DEFAULT]".equals(c0706ai2.f4986do)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    c0706ai2.m3147do();
                }
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", str3);
                new C0276Ih(firebaseMessaging.f11896do).m961if(intent);
            }
        }
        return LG.m1320try(str3);
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        C3811ud c3811ud = (C3811ud) this.f15504do;
        AbstractC3794uI abstractC3794uI = (AbstractC3794uI) this.f15506if;
        c3811ud.f15941do.mo6439native(abstractC3794uI, (AbstractC3696sg) this.f15505for);
        c3811ud.f15938do.mo2151do(abstractC3794uI, 1);
        return null;
    }
}
