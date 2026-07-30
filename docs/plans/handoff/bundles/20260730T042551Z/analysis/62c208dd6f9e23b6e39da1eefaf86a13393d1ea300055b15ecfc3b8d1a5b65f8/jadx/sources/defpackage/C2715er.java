package defpackage;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.login.CustomTabLoginMethodHandler;
import com.facebook.login.DeviceAuthMethodHandler;
import com.facebook.login.GetTokenLoginMethodHandler;
import com.facebook.login.InstagramAppLoginMethodHandler;
import com.facebook.login.KatanaProxyLoginMethodHandler;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.facebook.login.WebViewLoginMethodHandler;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.Date;

/* renamed from: er, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2715er extends Fragment {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f12726for = 0;

    /* renamed from: break, reason: not valid java name */
    public String f12727break;

    /* renamed from: do, reason: not valid java name */
    public AbstractC0665a0<Intent> f12728do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f12729do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LoginClient.Request f12730do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LoginClient f12731do;

    /* renamed from: er$do, reason: invalid class name */
    public static final class Cdo implements LoginClient.Cdo {
        public Cdo() {
        }

        @Override // com.facebook.login.LoginClient.Cdo
        /* renamed from: do */
        public final void mo5514do() {
            View view = C2715er.this.f12729do;
            if (view != null) {
                view.setVisibility(0);
            } else {
                C0173Do.m400this("progressBar");
                throw null;
            }
        }

        @Override // com.facebook.login.LoginClient.Cdo
        /* renamed from: if */
        public final void mo5515if() {
            View view = C2715er.this.f12729do;
            if (view != null) {
                view.setVisibility(8);
            } else {
                C0173Do.m400this("progressBar");
                throw null;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final LoginClient m6591new() {
        LoginClient loginClient = this.f12731do;
        if (loginClient != null) {
            return loginClient;
        }
        C0173Do.m400this("loginClient");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        m6591new().m5507final(i, i2, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        LoginClient loginClient = bundle == null ? null : (LoginClient) bundle.getParcelable("loginClient");
        if (loginClient == null) {
            loginClient = new LoginClient(this);
        } else {
            if (loginClient.f9341do != null) {
                throw new C3344mh("Can't set fragment once it is already set.");
            }
            loginClient.f9341do = this;
        }
        this.f12731do = loginClient;
        m6591new().f9344do = new C0775br(this);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f12727break = callingActivity.getPackageName();
        }
        Intent intent = activity.getIntent();
        if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
            this.f12730do = (LoginClient.Request) bundleExtra.getParcelable("request");
        }
        AbstractC0665a0<Intent> registerForActivityResult = registerForActivityResult(new Y(), new C2598cr(new C2656dr(this, activity)));
        C0173Do.m399new(registerForActivityResult, "registerForActivityResult(\n            ActivityResultContracts.StartActivityForResult(),\n            getLoginMethodHandlerCallback(activity))");
        this.f12728do = registerForActivityResult;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C0173Do.m401try(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(R.layout.com_facebook_login_fragment, viewGroup, false);
        View findViewById = inflate.findViewById(R.id.com_facebook_login_fragment_progress_bar);
        C0173Do.m399new(findViewById, "view.findViewById<View>(R.id.com_facebook_login_fragment_progress_bar)");
        this.f12729do = findViewById;
        m6591new().f9343do = new Cdo();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        LoginMethodHandler m5506else = m6591new().m5506else();
        if (m5506else != null) {
            m5506else.mo5500if();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        View view = getView();
        View findViewById = view == null ? null : view.findViewById(R.id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f12727break == null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                return;
            }
            activity.finish();
            return;
        }
        LoginClient m6591new = m6591new();
        LoginClient.Request request = this.f12730do;
        LoginClient.Request request2 = m6591new.f9342do;
        if ((request2 != null && m6591new.f9350for >= 0) || request == null) {
            return;
        }
        if (request2 != null) {
            throw new C3344mh("Attempted to authorize while a request is pending.");
        }
        Date date = AccessToken.f9198new;
        if (!AccessToken.Cif.m5257for() || m6591new.m5509if()) {
            m6591new.f9342do = request;
            ArrayList arrayList = new ArrayList();
            EnumC2892hr enumC2892hr = EnumC2892hr.INSTAGRAM;
            EnumC2892hr enumC2892hr2 = request.f9359do;
            boolean z = enumC2892hr2 == enumC2892hr;
            EnumC0715ar enumC0715ar = request.f9357do;
            if (!z) {
                if (enumC0715ar.f8240do) {
                    arrayList.add(new GetTokenLoginMethodHandler(m6591new));
                }
                if (!C3756th.f15755for && enumC0715ar.f8242if) {
                    arrayList.add(new KatanaProxyLoginMethodHandler(m6591new));
                }
            } else if (!C3756th.f15755for && enumC0715ar.f8239case) {
                arrayList.add(new InstagramAppLoginMethodHandler(m6591new));
            }
            if (enumC0715ar.f8244try) {
                arrayList.add(new CustomTabLoginMethodHandler(m6591new));
            }
            if (enumC0715ar.f8241for) {
                arrayList.add(new WebViewLoginMethodHandler(m6591new));
            }
            if (!(enumC2892hr2 == enumC2892hr) && enumC0715ar.f8243new) {
                arrayList.add(new DeviceAuthMethodHandler(m6591new));
            }
            Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            m6591new.f9349do = (LoginMethodHandler[]) array;
            m6591new.m5511super();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        C0173Do.m401try(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", m6591new());
    }
}
