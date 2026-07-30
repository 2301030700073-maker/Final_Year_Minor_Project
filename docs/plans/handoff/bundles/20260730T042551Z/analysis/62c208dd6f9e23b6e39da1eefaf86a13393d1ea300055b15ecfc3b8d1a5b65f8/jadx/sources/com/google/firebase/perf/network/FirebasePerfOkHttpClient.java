package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import defpackage.A6;
import defpackage.AI;
import defpackage.AbstractC3134j6;
import defpackage.Bz;
import defpackage.C0113Au;
import defpackage.C0135Bu;
import defpackage.C0155Cs;
import defpackage.C0237Gm;
import defpackage.C3410no;
import defpackage.Cz;
import defpackage.InterfaceC3959x6;
import defpackage.Ow;
import defpackage.Tz;
import defpackage.Vy;
import defpackage.Vy.Cif;
import defpackage.Vz;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes3.dex */
public class FirebasePerfOkHttpClient {
    /* renamed from: do, reason: not valid java name */
    public static void m6116do(Tz tz, C0113Au c0113Au, long j, long j2) {
        Bz bz = tz.f3771do;
        if (bz == null) {
            return;
        }
        C0237Gm c0237Gm = bz.f296do;
        c0237Gm.getClass();
        try {
            c0113Au.m117throw(new URL(c0237Gm.f1227case).toString());
            c0113Au.m115new(bz.f299do);
            AbstractC3134j6 abstractC3134j6 = bz.f298do;
            if (abstractC3134j6 != null) {
                long j3 = ((Cz) abstractC3134j6).f455do;
                if (j3 != -1) {
                    c0113Au.m112else(j3);
                }
            }
            Vz vz = tz.f3774do;
            if (vz != null) {
                long mo2489do = vz.mo2489do();
                if (mo2489do != -1) {
                    c0113Au.m113final(mo2489do);
                }
                C0155Cs mo2491if = vz.mo2491if();
                if (mo2491if != null) {
                    c0113Au.m110class(mo2491if.f440do);
                }
            }
            c0113Au.m118try(tz.f3777for);
            c0113Au.m109catch(j);
            c0113Au.m116super(j2);
            c0113Au.m114if();
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @Keep
    public static void enqueue(InterfaceC3959x6 interfaceC3959x6, A6 a6) {
        Timer timer = new Timer();
        C3410no c3410no = new C3410no(a6, AI.f54do, timer, timer.f11971do);
        Vy vy = (Vy) interfaceC3959x6;
        synchronized (vy) {
            if (vy.f4281if) {
                throw new IllegalStateException("Already Executed");
            }
            vy.f4281if = true;
        }
        vy.f4277do.f12432do = Ow.f2691do.mo1705break();
        vy.f4278do.getClass();
        vy.f4279do.f16434do.m280do(vy.new Cif(c3410no));
    }

    @Keep
    public static Tz execute(InterfaceC3959x6 interfaceC3959x6) {
        C0113Au c0113Au = new C0113Au(AI.f54do);
        Timer timer = new Timer();
        long j = timer.f11971do;
        try {
            Tz m2679if = ((Vy) interfaceC3959x6).m2679if();
            m6116do(m2679if, c0113Au, j, timer.m6126do());
            return m2679if;
        } catch (IOException e) {
            Bz bz = ((Vy) interfaceC3959x6).f4275do;
            if (bz != null) {
                C0237Gm c0237Gm = bz.f296do;
                if (c0237Gm != null) {
                    try {
                        c0113Au.m117throw(new URL(c0237Gm.f1227case).toString());
                    } catch (MalformedURLException e2) {
                        throw new RuntimeException(e2);
                    }
                }
                String str = bz.f299do;
                if (str != null) {
                    c0113Au.m115new(str);
                }
            }
            c0113Au.m109catch(j);
            c0113Au.m116super(timer.m6126do());
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }
}
