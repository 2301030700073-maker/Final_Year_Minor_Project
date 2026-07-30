package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Cdo;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.logging.dumpsys.EndToEndDumper;
import com.joeykrim.rootcheck.R;
import defpackage.C0173Do;
import defpackage.C0212Fj;
import defpackage.C2715er;
import defpackage.C3344mh;
import defpackage.C3756th;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: do, reason: not valid java name */
    public Fragment f9254do;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(str, "prefix");
            C0173Do.m401try(printWriter, "writer");
            EndToEndDumper companion = EndToEndDumper.Companion.getInstance();
            if (C0173Do.m394do(companion == null ? null : Boolean.valueOf(companion.maybeDump(str, printWriter, strArr)), Boolean.TRUE)) {
                return;
            }
            super.dump(str, fileDescriptor, printWriter, strArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        C0173Do.m401try(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        Fragment fragment = this.f9254do;
        if (fragment == null) {
            return;
        }
        fragment.onConfigurationChanged(configuration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.fragment.app.Fragment, androidx.fragment.app.catch, com.facebook.internal.FacebookDialogFragment] */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        C2715er c2715er;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!C3756th.m8305this()) {
            Utility.logd("com.facebook.FacebookActivity", "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            Context applicationContext = getApplicationContext();
            C0173Do.m399new(applicationContext, "applicationContext");
            synchronized (C3756th.class) {
                C3756th.m8298class(applicationContext);
            }
        }
        setContentView(R.layout.com_facebook_activity_layout);
        if (C0173Do.m394do("PassThrough", intent.getAction())) {
            Intent intent2 = getIntent();
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            C0173Do.m399new(intent2, "requestIntent");
            C3344mh exceptionFromErrorData = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getMethodArgumentsFromIntent(intent2));
            Intent intent3 = getIntent();
            C0173Do.m399new(intent3, "intent");
            setResult(0, NativeProtocol.createProtocolResultIntent(intent3, null, exceptionFromErrorData));
            finish();
            return;
        }
        Intent intent4 = getIntent();
        C0212Fj m4113class = m4113class();
        C0173Do.m399new(m4113class, "supportFragmentManager");
        Fragment m4140private = m4113class.m4140private("SingleFragment");
        if (m4140private == null) {
            if (C0173Do.m394do(FacebookDialogFragment.TAG, intent4.getAction())) {
                ?? facebookDialogFragment = new FacebookDialogFragment();
                facebookDialogFragment.setRetainInstance(true);
                facebookDialogFragment.show(m4113class, "SingleFragment");
                c2715er = facebookDialogFragment;
            } else {
                C2715er c2715er2 = new C2715er();
                c2715er2.setRetainInstance(true);
                Cdo cdo = new Cdo(m4113class);
                cdo.mo4172for(R.id.com_facebook_fragment_container, c2715er2, "SingleFragment", 1);
                cdo.m4176try();
                c2715er = c2715er2;
            }
            m4140private = c2715er;
        }
        this.f9254do = m4140private;
    }
}
