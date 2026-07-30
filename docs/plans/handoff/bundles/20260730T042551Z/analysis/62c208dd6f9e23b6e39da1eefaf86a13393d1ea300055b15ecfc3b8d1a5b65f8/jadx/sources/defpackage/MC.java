package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Messenger;
import android.os.Process;
import com.google.firebase.sessions.SessionLifecycleService;
import defpackage.JC;

/* loaded from: classes3.dex */
public final class MC implements LC {

    /* renamed from: do, reason: not valid java name */
    public final C0706ai f2136do;

    public MC(C0706ai c0706ai) {
        this.f2136do = c0706ai;
    }

    @Override // defpackage.LC
    /* renamed from: do */
    public final void mo1305do(Messenger messenger, JC.Cif cif) {
        boolean z;
        C0173Do.m401try(cif, "serviceConnection");
        C0706ai c0706ai = this.f2136do;
        c0706ai.m3147do();
        Context applicationContext = c0706ai.f4985do.getApplicationContext();
        C0173Do.m399new(applicationContext, "firebaseApp.applicationContext.applicationContext");
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra("ClientCallbackMessenger", messenger);
        intent.setPackage(applicationContext.getPackageName());
        try {
            z = applicationContext.bindService(intent, cif, 65);
        } catch (SecurityException unused) {
            z = false;
        }
        if (z) {
            return;
        }
        try {
            applicationContext.unbindService(cif);
            C3206kJ c3206kJ = C3206kJ.f13965do;
        } catch (IllegalArgumentException unused2) {
        }
    }
}
