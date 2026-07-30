package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.facebook.internal.ServerProtocol;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import defpackage.C2690eO;
import defpackage.C3850vF;
import defpackage.C3917wN;
import defpackage.FG;
import defpackage.GG;
import defpackage.InterfaceC3270lO;
import defpackage.QN;
import defpackage.SN;
import defpackage.TN;
import defpackage.UN;
import java.util.ArrayList;

/* loaded from: classes3.dex */
final class bn {
    final C3917wN a;
    private final C2690eO b;
    private final String c;
    private final GG d;
    private final at e;
    private final k f;

    public bn(Context context, C2690eO c2690eO, at atVar, k kVar) {
        GG gg = new GG();
        this.d = gg;
        this.c = context.getPackageName();
        this.b = c2690eO;
        this.e = atVar;
        this.f = kVar;
        C3917wN c3917wN = new C3917wN(context, c2690eO, "ExpressIntegrityService", bo.a, new InterfaceC3270lO() { // from class: com.google.android.play.core.integrity.bd
            @Override // defpackage.InterfaceC3270lO
            public final Object a(IBinder iBinder) {
                int i = TN.f3669for;
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
                return queryLocalInterface instanceof UN ? (UN) queryLocalInterface : new SN(iBinder);
            }
        });
        this.a = c3917wN;
        c3917wN.m8570do().post(new be(this, gg, context));
    }

    public static Bundle a(bn bnVar, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.c);
        bundle.putLong("cloud.prj", j);
        bundle.putString(ServerProtocol.DIALOG_PARAM_NONCE, standardIntegrityTokenRequest.requestHash());
        bundle.putLong("warm.up.sid", j2);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        bundle.putIntegerArrayList("request.verdict.opt.out", new ArrayList<>(standardIntegrityTokenRequest.verdictOptOut()));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new QN(5, System.currentTimeMillis()));
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C3850vF.m8453if(arrayList)));
        return bundle;
    }

    public static Bundle b(bn bnVar, long j, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bnVar.c);
        bundle.putLong("cloud.prj", j);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 4);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new QN(4, System.currentTimeMillis()));
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(C3850vF.m8453if(arrayList)));
        return bundle;
    }

    public static boolean k(bn bnVar, int i) {
        return bnVar.d.f1160do.mo604throw() && ((Integer) bnVar.d.f1160do.mo592class()).intValue() < 83420000;
    }

    public static boolean l(bn bnVar) {
        return bnVar.d.f1160do.mo604throw() && ((Integer) bnVar.d.f1160do.mo592class()).intValue() == 0;
    }

    public final FG c(Activity activity, Bundle bundle) {
        int i = bundle.getInt("dialog.intent.type");
        this.b.m6563if("requestAndShowDialog(%s)", Integer.valueOf(i));
        GG gg = new GG();
        this.a.m8571for(new bh(this, gg, bundle, activity, gg, i), gg);
        return gg.f1160do;
    }

    public final FG d(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        this.b.m6563if("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        GG gg = new GG();
        this.a.m8571for(new bg(this, gg, 0, standardIntegrityTokenRequest, j, j2, gg), gg);
        return gg.f1160do;
    }

    public final FG e(long j, int i) {
        this.b.m6563if("warmUpIntegrityToken(%s)", Long.valueOf(j));
        GG gg = new GG();
        this.a.m8571for(new bf(this, gg, 0, j, gg), gg);
        return gg.f1160do;
    }
}
