package defpackage;

import com.facebook.GraphRequest;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEventQueue;
import com.facebook.appevents.FlushStatistics;
import com.facebook.appevents.SessionEventsState;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.Utility;
import java.io.Serializable;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: continue, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Ccontinue implements GraphRequest.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f12381do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Serializable f12382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f12383do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f12384for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f12385if;

    public /* synthetic */ Ccontinue(Serializable serializable, Object obj, Object obj2, Object obj3, int i) {
        this.f12381do = i;
        this.f12382do = serializable;
        this.f12383do = obj;
        this.f12385if = obj2;
        this.f12384for = obj3;
    }

    @Override // com.facebook.GraphRequest.Cif
    /* renamed from: if */
    public final void mo78if(C0346Ll c0346Ll) {
        JSONArray optJSONArray;
        int i = this.f12381do;
        Object obj = this.f12384for;
        Object obj2 = this.f12385if;
        Object obj3 = this.f12383do;
        Serializable serializable = this.f12382do;
        switch (i) {
            case 0:
                AtomicBoolean atomicBoolean = (AtomicBoolean) serializable;
                Set set = (Set) obj3;
                Set set2 = (Set) obj2;
                Set set3 = (Set) obj;
                C0173Do.m401try(atomicBoolean, "$permissionsCallSucceeded");
                C0173Do.m401try(set, "$permissions");
                C0173Do.m401try(set2, "$declinedPermissions");
                C0173Do.m401try(set3, "$expiredPermissions");
                JSONObject jSONObject = c0346Ll.f1998if;
                if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
                    atomicBoolean.set(true);
                    int length = optJSONArray.length();
                    if (length > 0) {
                        int i2 = 0;
                        while (true) {
                            int i3 = i2 + 1;
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("permission");
                                String optString2 = optJSONObject.optString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS);
                                if (!Utility.isNullOrEmpty(optString) && !Utility.isNullOrEmpty(optString2)) {
                                    C0173Do.m399new(optString2, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS);
                                    Locale locale = Locale.US;
                                    C0173Do.m399new(locale, "US");
                                    String lowerCase = optString2.toLowerCase(locale);
                                    C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                                    int hashCode = lowerCase.hashCode();
                                    if (hashCode == -1309235419) {
                                        if (lowerCase.equals("expired")) {
                                            set3.add(optString);
                                        }
                                        C0173Do.m397goto(lowerCase, "Unexpected status: ");
                                    } else if (hashCode != 280295099) {
                                        if (hashCode == 568196142 && lowerCase.equals("declined")) {
                                            set2.add(optString);
                                        }
                                        C0173Do.m397goto(lowerCase, "Unexpected status: ");
                                    } else {
                                        if (lowerCase.equals("granted")) {
                                            set.add(optString);
                                        }
                                        C0173Do.m397goto(lowerCase, "Unexpected status: ");
                                    }
                                }
                            }
                            if (i3 >= length) {
                                break;
                            } else {
                                i2 = i3;
                            }
                        }
                    }
                }
                break;
            default:
                AppEventQueue.m5302buildRequestForSession$lambda4((AccessTokenAppIdPair) serializable, (GraphRequest) obj3, (SessionEventsState) obj2, (FlushStatistics) obj, c0346Ll);
                break;
        }
    }
}
