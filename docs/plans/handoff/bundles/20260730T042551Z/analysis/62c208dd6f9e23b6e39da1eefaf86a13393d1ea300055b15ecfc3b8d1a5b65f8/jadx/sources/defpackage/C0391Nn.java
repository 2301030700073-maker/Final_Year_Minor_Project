package defpackage;

import android.content.ClipData;
import android.content.ClipDescription;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.firebase.messaging.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.C0378Na;
import defpackage.C0460Qq;
import defpackage.C0545Un;
import defpackage.C2619dB;
import defpackage.InterfaceC3380nG;

/* renamed from: Nn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0391Nn implements InterfaceC0457Qn, InterfaceC3380nG.Cdo, C2619dB.Cdo, InterfaceC0598Xa, InterfaceC0619Xv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f2435do;

    public /* synthetic */ C0391Nn(Object obj, int i) {
        this.f2434do = i;
        this.f2435do = obj;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        C2619dB c2619dB = (C2619dB) this.f2435do;
        Cursor cursor = (Cursor) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        c2619dB.getClass();
        while (cursor.moveToNext()) {
            c2619dB.mo6424if(cursor.getInt(0), C0460Qq.Cdo.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m1552do(C0545Un c0545Un, int i, Bundle bundle) {
        View view = (View) this.f2435do;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                c0545Un.f3973do.mo2466do();
                Parcelable parcelable = (Parcelable) c0545Un.f3973do.mo2467for();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception unused) {
                return false;
            }
        }
        ClipDescription mo2469new = c0545Un.f3973do.mo2469new();
        C0545Un.Cfor cfor = c0545Un.f3973do;
        ClipData clipData = new ClipData(mo2469new, new ClipData.Item(cfor.mo2468if()));
        C0378Na.Cif cdo = i2 >= 31 ? new C0378Na.Cdo(clipData, 2) : new C0378Na.Cfor(clipData, 2);
        cdo.mo1539do(cfor.mo2470try());
        cdo.setExtras(bundle);
        return QK.m1863super(view, cdo.mo1540for()) == null;
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(Object obj) {
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f2435do;
        CloudMessage cloudMessage = (CloudMessage) obj;
        Cdo cdo = FirebaseMessaging.f11889do;
        firebaseMessaging.getClass();
        if (cloudMessage != null) {
            C0550Us.m2477if(cloudMessage.f10172do);
            firebaseMessaging.m6092try();
        }
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        ((Runnable) this.f2435do).run();
        return LG.m1320try(null);
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        int i = this.f2434do;
        Object obj = this.f2435do;
        switch (i) {
            case 1:
                return Integer.valueOf(((InterfaceC4109zg) obj).mo6436extends());
            default:
                return ((InterfaceC2616d8) obj).mo6422do();
        }
    }
}
