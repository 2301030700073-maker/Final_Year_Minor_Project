package com.google.android.apps.nexuslauncher.quickstep;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.util.Log;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.c.C0372k;
import c.b.a.b.a.a.a.a.c.N;
import c.b.a.b.a.a.a.a.c.P;
import c.b.a.b.b.m.t;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.Executors;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskThumbnailView;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ErrorCode;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import com.google.android.apps.nexuslauncher.quickstep.TaskOverlayFactoryImpl;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

@TargetApi(30)
/* loaded from: classes.dex */
public class TaskOverlayFactoryImpl extends TaskOverlayFactory {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3320a;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3322c;
    public final UserCache e;

    /* renamed from: d, reason: collision with root package name */
    public Map f3323d = new HashMap();
    public final SharedPreferences.OnSharedPreferenceChangeListener f = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: c.b.a.b.b.m.l
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            TaskOverlayFactoryImpl.this.b(sharedPreferences, str);
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public final Handler f3321b = new Handler(Looper.getMainLooper());

    public TaskOverlayFactoryImpl(Context context) {
        this.f3322c = false;
        this.f3320a = context.getApplicationContext();
        this.e = (UserCache) UserCache.INSTANCE.b(this.f3320a);
        SharedPreferences prefs = Utilities.getPrefs(context);
        prefs.registerOnSharedPreferenceChangeListener(this.f);
        this.f3322c = prefs.getBoolean("pref_overview_action_suggestions", true);
        this.f3323d.clear();
        Iterator it = this.e.getUserProfiles().iterator();
        while (it.hasNext()) {
            c((UserHandle) it.next());
        }
    }

    public static void a(String str) {
    }

    public void b(SharedPreferences sharedPreferences, String str) {
        if ("pref_overview_action_suggestions".equals(str)) {
            this.f3322c = sharedPreferences.getBoolean("pref_overview_action_suggestions", true);
            this.f3323d.clear();
        }
    }

    public final P c(UserHandle userHandle) {
        if (this.f3323d.containsKey(userHandle)) {
            return (P) this.f3323d.get(userHandle);
        }
        try {
            final P p = new P(this.f3320a.createPackageContextAsUser("system", 0, userHandle), this.f3320a, Executors.THREAD_POOL_EXECUTOR, new Handler());
            N n = p.f2401c;
            Runnable runnable = new Runnable(p) { // from class: c.b.a.b.a.a.a.a.c.I

                /* renamed from: a, reason: collision with root package name */
                public final P f2391a;

                {
                    this.f2391a = p;
                }

                @Override // java.lang.Runnable
                public void run() {
                    final P p2 = this.f2391a;
                    Objects.requireNonNull(p2);
                    try {
                        Log.i("AiAiSuggestUi", "Connecting to system intelligence module.");
                        c.b.a.b.a.a.a.a.a.a.p pVar = new c.b.a.b.a.a.a.a.a.a.p();
                        pVar.h = SuggestParcelables$InteractionType.SETUP;
                        p2.f2401c.b(-1, p2.f2402d.c(p2.f2399a.getPackageName(), "", -1, -1L, pVar, null, null), new InterfaceC0363b(p2) { // from class: c.b.a.b.a.a.a.a.c.J

                            /* renamed from: a, reason: collision with root package name */
                            public final P f2392a;

                            {
                                this.f2392a = p2;
                            }

                            @Override // c.b.a.b.a.a.a.a.c.InterfaceC0363b
                            public void a(Bundle bundle) {
                                P p3 = this.f2392a;
                                Objects.requireNonNull(p3);
                                try {
                                    C0357b d2 = p3.f2402d.d(bundle);
                                    if (d2.g == null) {
                                        c.b.a.b.a.a.a.a.c.y0.c.c("System intelligence is unavailable.");
                                        return;
                                    }
                                    c.b.a.b.a.a.a.a.a.a.E e = d2.g;
                                    c.b.a.b.a.a.a.a.c.y0.d.a(e);
                                    if (e.f2288a == SuggestParcelables$ErrorCode.ERROR_CODE_SUCCESS) {
                                        Log.i("AiAiSuggestUi", "Successfully connected to system intelligence: ");
                                    } else {
                                        String valueOf = String.valueOf(e.f2289b);
                                        c.b.a.b.a.a.a.a.c.y0.c.c(valueOf.length() != 0 ? "Unable to connect to system intelligence: ".concat(valueOf) : new String("Unable to connect to system intelligence: "));
                                    }
                                } catch (Exception e2) {
                                    Log.e("AiAiSuggestUi", "Unable to connect to system intelligence module.", e2);
                                }
                            }
                        });
                    } catch (Exception e) {
                        Log.e("AiAiSuggestUi", "Error while connecting to system intelligence module.", e);
                    }
                }
            };
            Objects.requireNonNull(n);
            try {
                runnable.run();
            } catch (Throwable th) {
                Log.e("AiAiSuggestUi", "Error running selection code.", th);
            }
            this.f3323d.put(userHandle, p);
            C0372k.f2475a = false;
            return p;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Override // com.android.quickstep.TaskOverlayFactory
    public TaskOverlayFactory.TaskOverlay createOverlay(TaskThumbnailView taskThumbnailView) {
        return new t(this, taskThumbnailView, null);
    }
}
