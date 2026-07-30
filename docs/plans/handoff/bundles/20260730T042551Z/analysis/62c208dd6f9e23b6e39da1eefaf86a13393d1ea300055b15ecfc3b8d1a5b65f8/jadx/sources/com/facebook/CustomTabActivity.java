package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import defpackage.C0173Do;
import defpackage.C4119zq;

/* loaded from: classes.dex */
public final class CustomTabActivity extends Activity {

    /* renamed from: break, reason: not valid java name */
    public static final String f9239break = C0173Do.m397goto(".action_customTabRedirect", "CustomTabActivity");

    /* renamed from: catch, reason: not valid java name */
    public static final String f9240catch = C0173Do.m397goto(".action_destroy", "CustomTabActivity");

    /* renamed from: do, reason: not valid java name */
    public CustomTabActivity$onActivityResult$closeReceiver$1 f9241do;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.content.BroadcastReceiver, com.facebook.CustomTabActivity$onActivityResult$closeReceiver$1] */
    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f9239break);
            intent2.putExtra(CustomTabMainActivity.f9246const, getIntent().getDataString());
            C4119zq.m8809do(this).m8810for(intent2);
            ?? r2 = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity$onActivityResult$closeReceiver$1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent3) {
                    C0173Do.m401try(context, "context");
                    C0173Do.m401try(intent3, "intent");
                    CustomTabActivity.this.finish();
                }
            };
            C4119zq.m8809do(this).m8811if(r2, new IntentFilter(f9240catch));
            this.f9241do = r2;
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, (Class<?>) CustomTabMainActivity.class);
        intent.setAction(f9239break);
        intent.putExtra(CustomTabMainActivity.f9246const, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        CustomTabActivity$onActivityResult$closeReceiver$1 customTabActivity$onActivityResult$closeReceiver$1 = this.f9241do;
        if (customTabActivity$onActivityResult$closeReceiver$1 != null) {
            C4119zq.m8809do(this).m8812new(customTabActivity$onActivityResult$closeReceiver$1);
        }
        super.onDestroy();
    }
}
