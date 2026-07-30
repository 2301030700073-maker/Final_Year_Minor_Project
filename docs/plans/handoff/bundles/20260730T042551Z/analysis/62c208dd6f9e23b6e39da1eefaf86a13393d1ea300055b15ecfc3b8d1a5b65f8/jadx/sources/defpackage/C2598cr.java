package defpackage;

import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import androidx.activity.result.ActivityResult;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.material.bottomsheet.BottomSheetDragHandleView;
import com.google.android.material.search.SearchView;
import com.google.firebase.remoteconfig.internal.Cif;
import defpackage.C0460Qq;
import defpackage.C2619dB;
import defpackage.C3128j0;
import defpackage.InterfaceC0118Bd;
import defpackage.InterfaceC3380nG;
import java.io.File;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* renamed from: cr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C2598cr implements V, InterfaceC0136Bv, E0, InterfaceC0598Xa, C2619dB.Cdo, B, NF, InterfaceC3380nG.Cdo, InterfaceC0118Bd.Cdo, NativeAd.OnNativeAdLoadedListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f12389do;

    public /* synthetic */ C2598cr(Object obj) {
        this.f12389do = obj;
    }

    @Override // defpackage.C2619dB.Cdo
    public Object apply(Object obj) {
        C2619dB c2619dB = (C2619dB) this.f12389do;
        Cursor cursor = (Cursor) obj;
        c2619dB.getClass();
        while (cursor.moveToNext()) {
            c2619dB.mo6424if(cursor.getInt(0), C0460Qq.Cdo.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    @Override // defpackage.B
    /* renamed from: case */
    public boolean mo136case(View view) {
        BottomSheetDragHandleView bottomSheetDragHandleView = (BottomSheetDragHandleView) this.f12389do;
        int i = BottomSheetDragHandleView.f10658for;
        return bottomSheetDragHandleView.m5702if();
    }

    @Override // defpackage.V
    /* renamed from: do */
    public void mo2492do(Object obj) {
        InterfaceC2650dk interfaceC2650dk = (InterfaceC2650dk) this.f12389do;
        int i = C2715er.f12726for;
        C0173Do.m401try(interfaceC2650dk, "$tmp0");
        interfaceC2650dk.mo364this((ActivityResult) obj);
    }

    @Override // defpackage.InterfaceC0136Bv
    /* renamed from: for */
    public C3150jM mo137for(View view, C3150jM c3150jM) {
        SearchView searchView = (SearchView) this.f12389do;
        int i = SearchView.f11281try;
        searchView.getClass();
        int m7063try = c3150jM.m7063try();
        View view2 = searchView.f11300for;
        if (view2.getLayoutParams().height != m7063try) {
            view2.getLayoutParams().height = m7063try;
            view2.requestLayout();
        }
        view2.setVisibility(m7063try > 0 ? 0 : 8);
        return c3150jM;
    }

    @Override // defpackage.E0
    /* renamed from: if */
    public void mo269if(Bundle bundle) {
        ((D0) this.f12389do).f459do.mo269if(bundle);
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public void mo192new(InterfaceC3655ry interfaceC3655ry) {
        D0 d0 = (D0) this.f12389do;
        d0.getClass();
        A0 a0 = (A0) interfaceC3655ry.get();
        C4082zB c4082zB = new C4082zB(a0, 2);
        C0116Bb c0116Bb = new C0116Bb();
        B0 mo9new = a0.mo9new("clx", c0116Bb);
        if (mo9new == null) {
            mo9new = a0.mo9new("crash", c0116Bb);
        }
        if (mo9new != null) {
            C0481Rp c0481Rp = new C0481Rp();
            C4076z5 c4076z5 = new C4076z5(c4082zB, TimeUnit.MILLISECONDS);
            synchronized (d0) {
                Iterator it = d0.f461do.iterator();
                while (it.hasNext()) {
                    c0481Rp.f3237do = (Q5) it.next();
                }
                c0116Bb.f246if = c0481Rp;
                c0116Bb.f245do = c4076z5;
                d0.f460do = c0481Rp;
                d0.f459do = c4076z5;
            }
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
    public void onNativeAdLoaded(NativeAd nativeAd) {
        C3128j0.Cif cif = (C3128j0.Cif) this.f12389do;
        Handler handler = C3128j0.f13617do;
        ((C2843h0) cif).m6775do(nativeAd);
    }

    @Override // defpackage.NF
    public FG then(Object obj) {
        Cif.Cdo cdo = (Cif.Cdo) this.f12389do;
        int[] iArr = Cif.f12004do;
        return LG.m1320try(cdo);
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public Object mo69try() {
        DM dm = (DM) this.f12389do;
        Iterator<AbstractC3794uI> it = dm.f610do.mo6441private().iterator();
        while (it.hasNext()) {
            dm.f607do.mo2151do(it.next(), 1);
        }
        return null;
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        boolean z;
        ((OC) this.f12389do).getClass();
        if (fg.mo604throw()) {
            AbstractC0700ac abstractC0700ac = (AbstractC0700ac) fg.mo592class();
            abstractC0700ac.mo3135for();
            File mo3136if = abstractC0700ac.mo3136if();
            if (mo3136if.delete()) {
                mo3136if.getPath();
            } else {
                mo3136if.getPath();
            }
            z = true;
        } else {
            fg.mo591catch();
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
