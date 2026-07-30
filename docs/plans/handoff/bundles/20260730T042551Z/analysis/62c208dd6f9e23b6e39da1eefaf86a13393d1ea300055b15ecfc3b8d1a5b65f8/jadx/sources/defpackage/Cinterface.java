package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.CurrentAccessTokenExpirationBroadcastReceiver;
import com.facebook.GraphRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import defpackage.C0324Kl;
import defpackage.Cinterface;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

/* renamed from: interface, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cinterface {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f13565do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Cinterface f13566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AccessToken f13567do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprivate f13570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4119zq f13571do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f13569do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Date f13568do = new Date(0);

    /* renamed from: interface$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public final Cinterface m6940do() {
            Cinterface cinterface;
            Cinterface cinterface2 = Cinterface.f13566do;
            if (cinterface2 != null) {
                return cinterface2;
            }
            synchronized (this) {
                cinterface = Cinterface.f13566do;
                if (cinterface == null) {
                    C4119zq m8809do = C4119zq.m8809do(C3756th.m8299do());
                    C0173Do.m399new(m8809do, "getInstance(applicationContext)");
                    Cinterface cinterface3 = new Cinterface(m8809do, new Cprivate());
                    Cinterface.f13566do = cinterface3;
                    cinterface = cinterface3;
                }
            }
            return cinterface;
        }
    }

    /* renamed from: interface$for, reason: invalid class name */
    public static final class Cfor implements Ctry {
        @Override // defpackage.Cinterface.Ctry
        /* renamed from: do, reason: not valid java name */
        public final String mo6941do() {
            return "ig_refresh_token";
        }

        @Override // defpackage.Cinterface.Ctry
        /* renamed from: if, reason: not valid java name */
        public final String mo6942if() {
            return "refresh_access_token";
        }
    }

    /* renamed from: interface$if, reason: invalid class name */
    public static final class Cif implements Ctry {
        @Override // defpackage.Cinterface.Ctry
        /* renamed from: do */
        public final String mo6941do() {
            return "fb_extend_sso_token";
        }

        @Override // defpackage.Cinterface.Ctry
        /* renamed from: if */
        public final String mo6942if() {
            return "oauth/access_token";
        }
    }

    /* renamed from: interface$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public int f13572do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f13573do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f13574do;

        /* renamed from: if, reason: not valid java name */
        public int f13575if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f13576if;
    }

    /* renamed from: interface$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do */
        String mo6941do();

        /* renamed from: if */
        String mo6942if();
    }

    public Cinterface(C4119zq c4119zq, Cprivate cprivate) {
        this.f13571do = c4119zq;
        this.f13570do = cprivate;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6937do() {
        final AccessToken accessToken = this.f13567do;
        if (accessToken == null) {
            return;
        }
        int i = 0;
        if (this.f13569do.compareAndSet(false, true)) {
            this.f13568do = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final HashSet hashSet3 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final Cnew cnew = new Cnew();
            GraphRequest[] graphRequestArr = new GraphRequest[2];
            Ccontinue ccontinue = new Ccontinue(atomicBoolean, hashSet, hashSet2, hashSet3, 0);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "permission,status");
            String str = GraphRequest.f9271for;
            GraphRequest m5286else = GraphRequest.Cfor.m5286else(accessToken, "me/permissions", ccontinue);
            m5286else.f9274do = bundle;
            EnumC0171Dm enumC0171Dm = EnumC0171Dm.GET;
            m5286else.m5264break(enumC0171Dm);
            graphRequestArr[0] = m5286else;
            Cstrictfp cstrictfp = new Cstrictfp(cnew, i);
            String str2 = accessToken.f9203const;
            if (str2 == null) {
                str2 = "facebook";
            }
            Ctry cfor = C0173Do.m394do(str2, "instagram") ? new Cfor() : new Cif();
            Bundle bundle2 = new Bundle();
            bundle2.putString("grant_type", cfor.mo6941do());
            bundle2.putString("client_id", accessToken.f9201catch);
            bundle2.putString("fields", "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain");
            GraphRequest m5286else2 = GraphRequest.Cfor.m5286else(accessToken, cfor.mo6942if(), cstrictfp);
            m5286else2.f9274do = bundle2;
            m5286else2.m5264break(enumC0171Dm);
            graphRequestArr[1] = m5286else2;
            C0324Kl c0324Kl = new C0324Kl(graphRequestArr);
            C0324Kl.Cdo cdo = new C0324Kl.Cdo() { // from class: volatile
                @Override // defpackage.C0324Kl.Cdo
                /* renamed from: if */
                public final void mo1205if(C0324Kl c0324Kl2) {
                    Cinterface.Cdo cdo2;
                    AccessToken accessToken2 = accessToken;
                    Cinterface.Cnew cnew2 = Cinterface.Cnew.this;
                    C0173Do.m401try(cnew2, "$refreshResult");
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    C0173Do.m401try(atomicBoolean2, "$permissionsCallSucceeded");
                    Set<String> set = hashSet;
                    C0173Do.m401try(set, "$permissions");
                    Set<String> set2 = hashSet2;
                    C0173Do.m401try(set2, "$declinedPermissions");
                    Set<String> set3 = hashSet3;
                    C0173Do.m401try(set3, "$expiredPermissions");
                    Cinterface cinterface = this;
                    C0173Do.m401try(cinterface, "this$0");
                    AtomicBoolean atomicBoolean3 = cinterface.f13569do;
                    String str3 = cnew2.f13574do;
                    int i2 = cnew2.f13572do;
                    Long l = cnew2.f13573do;
                    String str4 = cnew2.f13576if;
                    try {
                        Cinterface.Cdo cdo3 = Cinterface.f13565do;
                        if (cdo3.m6940do().f13567do != null) {
                            AccessToken accessToken3 = cdo3.m6940do().f13567do;
                            if ((accessToken3 == null ? null : accessToken3.f9202class) == accessToken2.f9202class) {
                                if (!atomicBoolean2.get() && str3 == null && i2 == 0) {
                                    atomicBoolean3.set(false);
                                    return;
                                }
                                Date date = accessToken2.f9204do;
                                if (cnew2.f13572do != 0) {
                                    cdo2 = cdo3;
                                    date = new Date(cnew2.f13572do * 1000);
                                } else {
                                    cdo2 = cdo3;
                                    if (cnew2.f13575if != 0) {
                                        date = new Date((cnew2.f13575if * 1000) + new Date().getTime());
                                    }
                                }
                                Date date2 = date;
                                if (str3 == null) {
                                    str3 = accessToken2.f9200break;
                                }
                                String str5 = str3;
                                String str6 = accessToken2.f9201catch;
                                String str7 = accessToken2.f9202class;
                                if (!atomicBoolean2.get()) {
                                    set = accessToken2.f9205do;
                                }
                                Set<String> set4 = set;
                                if (!atomicBoolean2.get()) {
                                    set2 = accessToken2.f9210if;
                                }
                                Set<String> set5 = set2;
                                if (!atomicBoolean2.get()) {
                                    set3 = accessToken2.f9208for;
                                }
                                Set<String> set6 = set3;
                                Cprotected cprotected = accessToken2.f9206do;
                                Date date3 = new Date();
                                Date date4 = l != null ? new Date(l.longValue() * 1000) : accessToken2.f9207for;
                                if (str4 == null) {
                                    str4 = accessToken2.f9203const;
                                }
                                cdo2.m6940do().m6938for(new AccessToken(str5, str6, str7, set4, set5, set6, cprotected, date2, date3, date4, str4), true);
                            }
                        }
                    } finally {
                        atomicBoolean3.set(false);
                    }
                }
            };
            ArrayList arrayList = c0324Kl.f1876if;
            if (!arrayList.contains(cdo)) {
                arrayList.add(cdo);
            }
            Validate.notEmptyAndContainsNoNulls(c0324Kl, "requests");
            new AsyncTaskC0302Jl(c0324Kl).executeOnExecutor(C3756th.m8304new(), new Void[0]);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m6938for(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.f13567do;
        this.f13567do = accessToken;
        this.f13569do.set(false);
        this.f13568do = new Date(0L);
        if (z) {
            Cprivate cprivate = this.f13570do;
            if (accessToken != null) {
                cprivate.getClass();
                try {
                    cprivate.f14995do.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.m5255if().toString()).apply();
                } catch (JSONException unused) {
                }
            } else {
                cprivate.f14995do.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
                C3756th c3756th = C3756th.f15751do;
                Utility utility = Utility.INSTANCE;
                Utility.clearFacebookCookies(C3756th.m8299do());
            }
        }
        if (Utility.areObjectsEqual(accessToken2, accessToken)) {
            return;
        }
        m6939if(accessToken2, accessToken);
        Context m8299do = C3756th.m8299do();
        Date date = AccessToken.f9198new;
        AccessToken m5258if = AccessToken.Cif.m5258if();
        AlarmManager alarmManager = (AlarmManager) m8299do.getSystemService("alarm");
        if (AccessToken.Cif.m5257for()) {
            if ((m5258if == null ? null : m5258if.f9204do) == null || alarmManager == null) {
                return;
            }
            Intent intent = new Intent(m8299do, (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
            intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
            try {
                alarmManager.set(1, m5258if.f9204do.getTime(), Build.VERSION.SDK_INT >= 23 ? PendingIntent.getBroadcast(m8299do, 0, intent, 67108864) : PendingIntent.getBroadcast(m8299do, 0, intent, 0));
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6939if(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(C3756th.m8299do(), (Class<?>) CurrentAccessTokenExpirationBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.f13571do.m8810for(intent);
    }
}
