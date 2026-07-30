package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Ccatch;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DeviceAuthDialog;
import com.facebook.login.LoginClient;
import com.joeykrim.rootcheck.R;
import defpackage.AsyncTaskC0302Jl;
import defpackage.C0173Do;
import defpackage.C0209Fg;
import defpackage.C0346Ll;
import defpackage.C2715er;
import defpackage.C3164je;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.Cprotected;
import defpackage.EnumC0171Dm;
import defpackage.Y1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceAuthDialog extends Ccatch {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f9312for = 0;

    /* renamed from: do, reason: not valid java name */
    public volatile AsyncTaskC0302Jl f9313do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f9314do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f9315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile RequestState f9316do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DeviceAuthMethodHandler f9317do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LoginClient.Request f9318do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile ScheduledFuture<?> f9319do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f9320do = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9321do;

    /* renamed from: if, reason: not valid java name */
    public TextView f9322if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9323if;

    public static final class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public String f9324break;

        /* renamed from: catch, reason: not valid java name */
        public String f9325catch;

        /* renamed from: class, reason: not valid java name */
        public String f9326class;

        /* renamed from: do, reason: not valid java name */
        public long f9327do;

        /* renamed from: if, reason: not valid java name */
        public long f9328if;

        /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$do, reason: invalid class name */
        public static final class Cdo implements Parcelable.Creator<RequestState> {
            @Override // android.os.Parcelable.Creator
            public final RequestState createFromParcel(Parcel parcel) {
                C0173Do.m401try(parcel, "parcel");
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        }

        public RequestState() {
        }

        public RequestState(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            this.f9324break = parcel.readString();
            this.f9325catch = parcel.readString();
            this.f9326class = parcel.readString();
            this.f9327do = parcel.readLong();
            this.f9328if = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            C0173Do.m401try(parcel, "dest");
            parcel.writeString(this.f9324break);
            parcel.writeString(this.f9325catch);
            parcel.writeString(this.f9326class);
            parcel.writeLong(this.f9327do);
            parcel.writeLong(this.f9328if);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static final Cif m5499do(JSONObject jSONObject) {
            String optString;
            int i = DeviceAuthDialog.f9312for;
            JSONArray jSONArray = jSONObject.getJSONObject(NativeProtocol.RESULT_ARGS_PERMISSIONS).getJSONArray("data");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int length = jSONArray.length();
            if (length > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                    String optString2 = optJSONObject.optString("permission");
                    C0173Do.m399new(optString2, "permission");
                    if (!(optString2.length() == 0) && !C0173Do.m394do(optString2, "installed") && (optString = optJSONObject.optString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS)) != null) {
                        int hashCode = optString.hashCode();
                        if (hashCode != -1309235419) {
                            if (hashCode != 280295099) {
                                if (hashCode == 568196142 && optString.equals("declined")) {
                                    arrayList2.add(optString2);
                                }
                            } else if (optString.equals("granted")) {
                                arrayList.add(optString2);
                            }
                        } else if (optString.equals("expired")) {
                            arrayList3.add(optString2);
                        }
                    }
                    if (i3 >= length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return new Cif(arrayList, arrayList2, arrayList3);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$for, reason: invalid class name */
    public static final class Cfor extends Dialog {
        public Cfor(FragmentActivity fragmentActivity) {
            super(fragmentActivity, R.style.com_facebook_auth_dialog);
        }

        @Override // android.app.Dialog
        public final void onBackPressed() {
            DeviceAuthDialog.this.getClass();
            super.onBackPressed();
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final List<String> f9330do;

        /* renamed from: for, reason: not valid java name */
        public final List<String> f9331for;

        /* renamed from: if, reason: not valid java name */
        public final List<String> f9332if;

        public Cif(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
            this.f9330do = arrayList;
            this.f9332if = arrayList2;
            this.f9331for = arrayList3;
        }
    }

    static {
        new Cdo();
    }

    /* renamed from: case, reason: not valid java name */
    public static String m5488case() {
        return Validate.hasAppID() + '|' + Validate.hasClientToken();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5489new(DeviceAuthDialog deviceAuthDialog, C0346Ll c0346Ll) {
        C0173Do.m401try(deviceAuthDialog, "this$0");
        if (deviceAuthDialog.f9320do.get()) {
            return;
        }
        FacebookRequestError facebookRequestError = c0346Ll.f1995do;
        if (facebookRequestError == null) {
            try {
                JSONObject jSONObject = c0346Ll.f1997do;
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                String string = jSONObject.getString("access_token");
                C0173Do.m399new(string, "resultObject.getString(\"access_token\")");
                deviceAuthDialog.m5490break(string, jSONObject.getLong("expires_in"), Long.valueOf(jSONObject.optLong("data_access_expiration_time")));
                return;
            } catch (JSONException e) {
                deviceAuthDialog.m5497this(new C3344mh(e));
                return;
            }
        }
        int i = facebookRequestError.f9265try;
        if (i == 1349174 || i == 1349172) {
            deviceAuthDialog.m5492class();
            return;
        }
        if (i != 1349152) {
            if (i == 1349173) {
                deviceAuthDialog.m5496goto();
                return;
            }
            C3344mh c3344mh = facebookRequestError.f9262do;
            if (c3344mh == null) {
                c3344mh = new C3344mh();
            }
            deviceAuthDialog.m5497this(c3344mh);
            return;
        }
        RequestState requestState = deviceAuthDialog.f9316do;
        if (requestState != null) {
            C3164je c3164je = C3164je.f13740do;
            C3164je.m7146do(requestState.f9325catch);
        }
        LoginClient.Request request = deviceAuthDialog.f9318do;
        if (request != null) {
            deviceAuthDialog.m5495final(request);
        } else {
            deviceAuthDialog.m5496goto();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5490break(final String str, long j, Long l) {
        final Date date;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        final Date date2 = null;
        if (j != 0) {
            date = new Date((j * 1000) + new Date().getTime());
        } else {
            date = null;
        }
        if ((l == null || l.longValue() != 0) && l != null) {
            date2 = new Date(l.longValue() * 1000);
        }
        AccessToken accessToken = new AccessToken(str, C3756th.m8303if(), AppEventsConstants.EVENT_PARAM_VALUE_NO, null, null, null, null, date, null, date2);
        String str2 = GraphRequest.f9271for;
        GraphRequest m5286else = GraphRequest.Cfor.m5286else(accessToken, "me", new GraphRequest.Cif() { // from class: com.facebook.login.if
            @Override // com.facebook.GraphRequest.Cif
            /* renamed from: if */
            public final void mo78if(C0346Ll c0346Ll) {
                EnumSet<SmartLoginOption> smartLoginOptions;
                final DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                final String str3 = str;
                final Date date3 = date;
                final Date date4 = date2;
                int i = DeviceAuthDialog.f9312for;
                C0173Do.m401try(deviceAuthDialog, "this$0");
                C0173Do.m401try(str3, "$accessToken");
                if (deviceAuthDialog.f9320do.get()) {
                    return;
                }
                FacebookRequestError facebookRequestError = c0346Ll.f1995do;
                if (facebookRequestError != null) {
                    C3344mh c3344mh = facebookRequestError.f9262do;
                    if (c3344mh == null) {
                        c3344mh = new C3344mh();
                    }
                    deviceAuthDialog.m5497this(c3344mh);
                    return;
                }
                try {
                    JSONObject jSONObject = c0346Ll.f1997do;
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    final String string = jSONObject.getString("id");
                    C0173Do.m399new(string, "jsonObject.getString(\"id\")");
                    final DeviceAuthDialog.Cif m5499do = DeviceAuthDialog.Cdo.m5499do(jSONObject);
                    String string2 = jSONObject.getString(FacebookRequestErrorClassification.KEY_NAME);
                    C0173Do.m399new(string2, "jsonObject.getString(\"name\")");
                    DeviceAuthDialog.RequestState requestState = deviceAuthDialog.f9316do;
                    if (requestState != null) {
                        C3164je c3164je = C3164je.f13740do;
                        C3164je.m7146do(requestState.f9325catch);
                    }
                    FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                    FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(C3756th.m8303if());
                    if (!C0173Do.m394do((appSettingsWithoutQuery == null || (smartLoginOptions = appSettingsWithoutQuery.getSmartLoginOptions()) == null) ? null : Boolean.valueOf(smartLoginOptions.contains(SmartLoginOption.RequireConfirm)), Boolean.TRUE) || deviceAuthDialog.f9323if) {
                        deviceAuthDialog.m5498try(string, m5499do, str3, date3, date4);
                        return;
                    }
                    deviceAuthDialog.f9323if = true;
                    String string3 = deviceAuthDialog.getResources().getString(R.string.com_facebook_smart_login_confirmation_title);
                    C0173Do.m399new(string3, "resources.getString(R.string.com_facebook_smart_login_confirmation_title)");
                    String string4 = deviceAuthDialog.getResources().getString(R.string.com_facebook_smart_login_confirmation_continue_as);
                    C0173Do.m399new(string4, "resources.getString(R.string.com_facebook_smart_login_confirmation_continue_as)");
                    String string5 = deviceAuthDialog.getResources().getString(R.string.com_facebook_smart_login_confirmation_cancel);
                    C0173Do.m399new(string5, "resources.getString(R.string.com_facebook_smart_login_confirmation_cancel)");
                    String m6913else = defpackage.Cif.m6913else(new Object[]{string2}, 1, string4, "java.lang.String.format(format, *args)");
                    AlertDialog.Builder builder = new AlertDialog.Builder(deviceAuthDialog.getContext());
                    builder.setMessage(string3).setCancelable(true).setNegativeButton(m6913else, new DialogInterface.OnClickListener() { // from class: fe
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            Date date5 = date3;
                            Date date6 = date4;
                            int i3 = DeviceAuthDialog.f9312for;
                            DeviceAuthDialog deviceAuthDialog2 = DeviceAuthDialog.this;
                            C0173Do.m401try(deviceAuthDialog2, "this$0");
                            String str4 = string;
                            C0173Do.m401try(str4, "$userId");
                            DeviceAuthDialog.Cif cif = m5499do;
                            C0173Do.m401try(cif, "$permissions");
                            String str5 = str3;
                            C0173Do.m401try(str5, "$accessToken");
                            deviceAuthDialog2.m5498try(str4, cif, str5, date5, date6);
                        }
                    }).setPositiveButton(string5, new DialogInterface.OnClickListener() { // from class: ge
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            int i3 = DeviceAuthDialog.f9312for;
                            DeviceAuthDialog deviceAuthDialog2 = DeviceAuthDialog.this;
                            C0173Do.m401try(deviceAuthDialog2, "this$0");
                            View m5494else = deviceAuthDialog2.m5494else(false);
                            Dialog dialog = deviceAuthDialog2.getDialog();
                            if (dialog != null) {
                                dialog.setContentView(m5494else);
                            }
                            LoginClient.Request request = deviceAuthDialog2.f9318do;
                            if (request == null) {
                                return;
                            }
                            deviceAuthDialog2.m5495final(request);
                        }
                    });
                    builder.create().show();
                } catch (JSONException e) {
                    deviceAuthDialog.m5497this(new C3344mh(e));
                }
            }
        });
        m5286else.m5264break(EnumC0171Dm.GET);
        m5286else.f9274do = bundle;
        m5286else.m5270new();
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5491catch() {
        RequestState requestState = this.f9316do;
        if (requestState != null) {
            requestState.f9328if = new Date().getTime();
        }
        Bundle bundle = new Bundle();
        RequestState requestState2 = this.f9316do;
        bundle.putString("code", requestState2 == null ? null : requestState2.f9326class);
        bundle.putString("access_token", m5488case());
        String str = GraphRequest.f9271for;
        this.f9313do = GraphRequest.Cfor.m5293this("device/login_status", bundle, new C0209Fg(this, 2)).m5270new();
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5492class() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        RequestState requestState = this.f9316do;
        Long valueOf = requestState == null ? null : Long.valueOf(requestState.f9327do);
        if (valueOf != null) {
            synchronized (DeviceAuthMethodHandler.f9333do) {
                if (DeviceAuthMethodHandler.f9334do == null) {
                    DeviceAuthMethodHandler.f9334do = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = DeviceAuthMethodHandler.f9334do;
                if (scheduledThreadPoolExecutor == null) {
                    C0173Do.m400this("backgroundExecutor");
                    throw null;
                }
            }
            this.f9319do = scheduledThreadPoolExecutor.schedule(new Y1(this, 4), valueOf.longValue(), TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0089  */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5493const(com.facebook.login.DeviceAuthDialog.RequestState r15) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.DeviceAuthDialog.m5493const(com.facebook.login.DeviceAuthDialog$RequestState):void");
    }

    /* renamed from: else, reason: not valid java name */
    public final View m5494else(boolean z) {
        LayoutInflater layoutInflater = requireActivity().getLayoutInflater();
        C0173Do.m399new(layoutInflater, "requireActivity().layoutInflater");
        View inflate = layoutInflater.inflate(z ? R.layout.com_facebook_smart_device_dialog_fragment : R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        C0173Do.m399new(inflate, "inflater.inflate(getLayoutResId(isSmartLogin), null)");
        View findViewById = inflate.findViewById(R.id.progress_bar);
        C0173Do.m399new(findViewById, "view.findViewById(R.id.progress_bar)");
        this.f9314do = findViewById;
        View findViewById2 = inflate.findViewById(R.id.confirmation_code);
        if (findViewById2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.f9315do = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.cancel_button);
        if (findViewById3 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.Button");
        }
        ((Button) findViewById3).setOnClickListener(new View.OnClickListener() { // from class: ee
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = DeviceAuthDialog.f9312for;
                DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                C0173Do.m401try(deviceAuthDialog, "this$0");
                deviceAuthDialog.m5496goto();
            }
        });
        View findViewById4 = inflate.findViewById(R.id.com_facebook_device_auth_instructions);
        if (findViewById4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
        }
        TextView textView = (TextView) findViewById4;
        this.f9322if = textView;
        textView.setText(Html.fromHtml(getString(R.string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5495final(LoginClient.Request request) {
        String jSONObject;
        this.f9318do = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.f9360do));
        Utility utility = Utility.INSTANCE;
        Utility.putNonEmptyString(bundle, ServerProtocol.DIALOG_PARAM_REDIRECT_URI, request.f9355class);
        Utility.putNonEmptyString(bundle, "target_user_id", request.f9363final);
        bundle.putString("access_token", m5488case());
        C3164je c3164je = C3164je.f13740do;
        if (!CrashShieldHandler.isObjectCrashing(C3164je.class)) {
            try {
                HashMap hashMap = new HashMap();
                String str = Build.DEVICE;
                C0173Do.m399new(str, "DEVICE");
                hashMap.put("device", str);
                String str2 = Build.MODEL;
                C0173Do.m399new(str2, "MODEL");
                hashMap.put("model", str2);
                jSONObject = new JSONObject(hashMap).toString();
                C0173Do.m399new(jSONObject, "JSONObject(deviceInfo as Map<*, *>).toString()");
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, C3164je.class);
            }
            bundle.putString("device_info", jSONObject);
            String str3 = GraphRequest.f9271for;
            GraphRequest.Cfor.m5293this("device/login", bundle, new GraphRequest.Cif() { // from class: com.facebook.login.do
                @Override // com.facebook.GraphRequest.Cif
                /* renamed from: if */
                public final void mo78if(C0346Ll c0346Ll) {
                    int i = DeviceAuthDialog.f9312for;
                    DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                    C0173Do.m401try(deviceAuthDialog, "this$0");
                    if (deviceAuthDialog.f9321do) {
                        return;
                    }
                    FacebookRequestError facebookRequestError = c0346Ll.f1995do;
                    if (facebookRequestError != null) {
                        C3344mh c3344mh = facebookRequestError.f9262do;
                        if (c3344mh == null) {
                            c3344mh = new C3344mh();
                        }
                        deviceAuthDialog.m5497this(c3344mh);
                        return;
                    }
                    JSONObject jSONObject2 = c0346Ll.f1997do;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    DeviceAuthDialog.RequestState requestState = new DeviceAuthDialog.RequestState();
                    try {
                        String string = jSONObject2.getString("user_code");
                        requestState.f9325catch = string;
                        String format = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{string}, 1));
                        C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                        requestState.f9324break = format;
                        requestState.f9326class = jSONObject2.getString("code");
                        requestState.f9327do = jSONObject2.getLong("interval");
                        deviceAuthDialog.m5493const(requestState);
                    } catch (JSONException e) {
                        deviceAuthDialog.m5497this(new C3344mh(e));
                    }
                }
            }).m5270new();
        }
        jSONObject = null;
        bundle.putString("device_info", jSONObject);
        String str32 = GraphRequest.f9271for;
        GraphRequest.Cfor.m5293this("device/login", bundle, new GraphRequest.Cif() { // from class: com.facebook.login.do
            @Override // com.facebook.GraphRequest.Cif
            /* renamed from: if */
            public final void mo78if(C0346Ll c0346Ll) {
                int i = DeviceAuthDialog.f9312for;
                DeviceAuthDialog deviceAuthDialog = DeviceAuthDialog.this;
                C0173Do.m401try(deviceAuthDialog, "this$0");
                if (deviceAuthDialog.f9321do) {
                    return;
                }
                FacebookRequestError facebookRequestError = c0346Ll.f1995do;
                if (facebookRequestError != null) {
                    C3344mh c3344mh = facebookRequestError.f9262do;
                    if (c3344mh == null) {
                        c3344mh = new C3344mh();
                    }
                    deviceAuthDialog.m5497this(c3344mh);
                    return;
                }
                JSONObject jSONObject2 = c0346Ll.f1997do;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                DeviceAuthDialog.RequestState requestState = new DeviceAuthDialog.RequestState();
                try {
                    String string = jSONObject2.getString("user_code");
                    requestState.f9325catch = string;
                    String format = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{string}, 1));
                    C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                    requestState.f9324break = format;
                    requestState.f9326class = jSONObject2.getString("code");
                    requestState.f9327do = jSONObject2.getLong("interval");
                    deviceAuthDialog.m5493const(requestState);
                } catch (JSONException e) {
                    deviceAuthDialog.m5497this(new C3344mh(e));
                }
            }
        }).m5270new();
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5496goto() {
        if (this.f9320do.compareAndSet(false, true)) {
            RequestState requestState = this.f9316do;
            if (requestState != null) {
                C3164je c3164je = C3164je.f13740do;
                C3164je.m7146do(requestState.f9325catch);
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f9317do;
            if (deviceAuthMethodHandler != null) {
                deviceAuthMethodHandler.m5520new().m5510new(new LoginClient.Result(deviceAuthMethodHandler.m5520new().f9342do, LoginClient.Result.Cdo.CANCEL, null, "User canceled log in.", null));
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    @Override // androidx.fragment.app.Ccatch
    public final Dialog onCreateDialog(Bundle bundle) {
        Cfor cfor = new Cfor(requireActivity());
        cfor.setContentView(m5494else(C3164je.m7147for() && !this.f9323if));
        return cfor;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        C0173Do.m401try(layoutInflater, "inflater");
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        C2715er c2715er = (C2715er) ((FacebookActivity) requireActivity()).f9254do;
        this.f9317do = (DeviceAuthMethodHandler) (c2715er == null ? null : c2715er.m6591new().m5506else());
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m5493const(requestState);
        }
        return onCreateView;
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f9321do = true;
        this.f9320do.set(true);
        super.onDestroyView();
        AsyncTaskC0302Jl asyncTaskC0302Jl = this.f9313do;
        if (asyncTaskC0302Jl != null) {
            asyncTaskC0302Jl.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture = this.f9319do;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(true);
    }

    @Override // androidx.fragment.app.Ccatch, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        C0173Do.m401try(dialogInterface, "dialog");
        super.onDismiss(dialogInterface);
        if (this.f9321do) {
            return;
        }
        m5496goto();
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        C0173Do.m401try(bundle, "outState");
        super.onSaveInstanceState(bundle);
        if (this.f9316do != null) {
            bundle.putParcelable("request_state", this.f9316do);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5497this(C3344mh c3344mh) {
        if (this.f9320do.compareAndSet(false, true)) {
            RequestState requestState = this.f9316do;
            if (requestState != null) {
                C3164je c3164je = C3164je.f13740do;
                C3164je.m7146do(requestState.f9325catch);
            }
            DeviceAuthMethodHandler deviceAuthMethodHandler = this.f9317do;
            if (deviceAuthMethodHandler != null) {
                LoginClient.Request request = deviceAuthMethodHandler.m5520new().f9342do;
                String message = c3344mh.getMessage();
                ArrayList arrayList = new ArrayList();
                if (message != null) {
                    arrayList.add(message);
                }
                deviceAuthMethodHandler.m5520new().m5510new(new LoginClient.Result(request, LoginClient.Result.Cdo.ERROR, null, TextUtils.join(": ", arrayList), null));
            }
            Dialog dialog = getDialog();
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5498try(String str, Cif cif, String str2, Date date, Date date2) {
        DeviceAuthMethodHandler deviceAuthMethodHandler = this.f9317do;
        if (deviceAuthMethodHandler != null) {
            deviceAuthMethodHandler.m5520new().m5510new(new LoginClient.Result(deviceAuthMethodHandler.m5520new().f9342do, LoginClient.Result.Cdo.SUCCESS, new AccessToken(str2, C3756th.m8303if(), str, cif.f9330do, cif.f9332if, cif.f9331for, Cprotected.DEVICE_AUTH, date, null, date2), null, null));
        }
        Dialog dialog = getDialog();
        if (dialog == null) {
            return;
        }
        dialog.dismiss();
    }
}
