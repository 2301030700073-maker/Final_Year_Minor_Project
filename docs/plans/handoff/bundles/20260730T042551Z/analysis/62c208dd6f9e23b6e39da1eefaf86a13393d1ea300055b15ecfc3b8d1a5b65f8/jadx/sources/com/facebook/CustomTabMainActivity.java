package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.CustomTab;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C4119zq;
import defpackage.EnumC2892hr;

/* loaded from: classes.dex */
public final class CustomTabMainActivity extends Activity {

    /* renamed from: break, reason: not valid java name */
    public static final String f9243break = C0173Do.m397goto(".extra_action", "CustomTabMainActivity");

    /* renamed from: catch, reason: not valid java name */
    public static final String f9244catch = C0173Do.m397goto(".extra_params", "CustomTabMainActivity");

    /* renamed from: class, reason: not valid java name */
    public static final String f9245class = C0173Do.m397goto(".extra_chromePackage", "CustomTabMainActivity");

    /* renamed from: const, reason: not valid java name */
    public static final String f9246const = C0173Do.m397goto(".extra_url", "CustomTabMainActivity");

    /* renamed from: final, reason: not valid java name */
    public static final String f9247final = C0173Do.m397goto(".extra_targetApp", "CustomTabMainActivity");

    /* renamed from: super, reason: not valid java name */
    public static final String f9248super = C0173Do.m397goto(".action_refresh", "CustomTabMainActivity");

    /* renamed from: throw, reason: not valid java name */
    public static final String f9249throw = C0173Do.m397goto(".no_activity_exception", "CustomTabMainActivity");

    /* renamed from: do, reason: not valid java name */
    public CustomTabMainActivity$onCreate$redirectReceiver$1 f9250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9251do = true;

    /* renamed from: com.facebook.CustomTabMainActivity$do, reason: invalid class name */
    public /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9252do;

        static {
            int[] iArr = new int[EnumC2892hr.valuesCustom().length];
            iArr[1] = 1;
            f9252do = iArr;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5260do(int i, Intent intent) {
        Bundle bundle;
        CustomTabMainActivity$onCreate$redirectReceiver$1 customTabMainActivity$onCreate$redirectReceiver$1 = this.f9250do;
        if (customTabMainActivity$onCreate$redirectReceiver$1 != null) {
            C4119zq.m8809do(this).m8812new(customTabMainActivity$onCreate$redirectReceiver$1);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f9246const);
            if (stringExtra != null) {
                Uri parse = Uri.parse(stringExtra);
                Utility utility = Utility.INSTANCE;
                bundle = Utility.parseUrlQueryString(parse.getQuery());
                bundle.putAll(Utility.parseUrlQueryString(parse.getFragment()));
            } else {
                bundle = new Bundle();
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            Intent intent2 = getIntent();
            C0173Do.m399new(intent2, "intent");
            Intent createProtocolResultIntent = NativeProtocol.createProtocolResultIntent(intent2, bundle, null);
            if (createProtocolResultIntent != null) {
                intent = createProtocolResultIntent;
            }
            setResult(i, intent);
        } else {
            NativeProtocol nativeProtocol2 = NativeProtocol.INSTANCE;
            Intent intent3 = getIntent();
            C0173Do.m399new(intent3, "intent");
            setResult(i, NativeProtocol.createProtocolResultIntent(intent3, null, null));
        }
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [android.content.BroadcastReceiver, com.facebook.CustomTabMainActivity$onCreate$redirectReceiver$1] */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        String stringExtra;
        EnumC2892hr enumC2892hr;
        super.onCreate(bundle);
        if (C0173Do.m394do(CustomTabActivity.f9239break, getIntent().getAction())) {
            setResult(0);
            finish();
            return;
        }
        if (bundle != null || (stringExtra = getIntent().getStringExtra(f9243break)) == null) {
            return;
        }
        Bundle bundleExtra = getIntent().getBundleExtra(f9244catch);
        String stringExtra2 = getIntent().getStringExtra(f9245class);
        String stringExtra3 = getIntent().getStringExtra(f9247final);
        EnumC2892hr[] valuesCustom = EnumC2892hr.valuesCustom();
        int length = valuesCustom.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                enumC2892hr = EnumC2892hr.FACEBOOK;
                break;
            }
            enumC2892hr = valuesCustom[i];
            i++;
            if (C0173Do.m394do(enumC2892hr.f13368break, stringExtra3)) {
                break;
            }
        }
        boolean openCustomTab = (Cdo.f9252do[enumC2892hr.ordinal()] == 1 ? new InstagramCustomTab(stringExtra, bundleExtra) : new CustomTab(stringExtra, bundleExtra)).openCustomTab(this, stringExtra2);
        this.f9251do = false;
        if (!openCustomTab) {
            setResult(0, getIntent().putExtra(f9249throw, true));
            finish();
        } else {
            ?? r10 = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity$onCreate$redirectReceiver$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    C0173Do.m401try(context, "context");
                    C0173Do.m401try(intent, "intent");
                    CustomTabMainActivity customTabMainActivity = CustomTabMainActivity.this;
                    Intent intent2 = new Intent(customTabMainActivity, (Class<?>) CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f9248super);
                    String str = CustomTabMainActivity.f9246const;
                    intent2.putExtra(str, intent.getStringExtra(str));
                    intent2.addFlags(603979776);
                    customTabMainActivity.startActivity(intent2);
                }
            };
            this.f9250do = r10;
            C4119zq.m8809do(this).m8811if(r10, new IntentFilter(CustomTabActivity.f9239break));
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        C0173Do.m401try(intent, "intent");
        super.onNewIntent(intent);
        if (C0173Do.m394do(f9248super, intent.getAction())) {
            C4119zq.m8809do(this).m8810for(new Intent(CustomTabActivity.f9240catch));
            m5260do(-1, intent);
        } else if (C0173Do.m394do(CustomTabActivity.f9239break, intent.getAction())) {
            m5260do(-1, intent);
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.f9251do) {
            m5260do(0, null);
        }
        this.f9251do = true;
    }
}
