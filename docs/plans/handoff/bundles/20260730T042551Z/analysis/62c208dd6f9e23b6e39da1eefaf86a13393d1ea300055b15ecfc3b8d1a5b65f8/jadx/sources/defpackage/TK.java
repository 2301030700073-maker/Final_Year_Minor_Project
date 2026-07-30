package defpackage;

import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.search.SearchBar;
import com.google.android.material.search.SearchView;
import com.google.firebase.perf.config.RemoteConfigManager;
import defpackage.C2619dB;
import defpackage.C3738tL;
import defpackage.InterfaceC0118Bd;
import defpackage.InterfaceC3380nG;
import java.io.IOException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final /* synthetic */ class TK implements FeatureManager.Callback, InterfaceC3380nG.Cdo, C2619dB.Cdo, Cinstanceof, C3738tL.Cif, InterfaceC0118Bd.Cdo, InterfaceC0598Xa, InterfaceC0619Xv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3646do;

    public /* synthetic */ TK(Object obj) {
        this.f3646do = obj;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        Map map = (Map) this.f3646do;
        Cursor cursor = (Cursor) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j), set);
            }
            set.add(new C2619dB.Cif(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    @Override // defpackage.C3738tL.Cif
    /* renamed from: do */
    public final C3150jM mo1008do(View view, C3150jM c3150jM, C3738tL.Cfor cfor) {
        MaterialToolbar materialToolbar = ((SearchView) this.f3646do).f11290do;
        boolean m8282else = C3738tL.m8282else(materialToolbar);
        materialToolbar.setPadding(c3150jM.m7059for() + (m8282else ? cfor.f15697for : cfor.f15696do), cfor.f15698if, c3150jM.m7062new() + (m8282else ? cfor.f15696do : cfor.f15697for), cfor.f15699new);
        return c3150jM;
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(Object obj) {
        ((RemoteConfigManager) this.f3646do).lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0((Boolean) obj);
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public final void mo192new(InterfaceC3655ry interfaceC3655ry) {
        C0489Sb c0489Sb = (C0489Sb) this.f3646do;
        c0489Sb.getClass();
        c0489Sb.f3528do.set((InterfaceC0467Rb) interfaceC3655ry.get());
    }

    @Override // com.facebook.internal.FeatureManager.Callback
    public final void onCompleted(boolean z) {
        String str = (String) this.f3646do;
        int i = C3344mh.f14380for;
        if (z) {
            try {
                ErrorReportHandler.save(str);
            } catch (Exception unused) {
            }
        }
    }

    @Override // defpackage.Cinstanceof
    public final void onTouchExplorationStateChanged(boolean z) {
        SearchBar searchBar = (SearchBar) this.f3646do;
        int i = SearchBar.f11263throw;
        searchBar.setFocusableInTouchMode(z);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final Object then(FG fg) {
        ((C0148Cl) this.f3646do).getClass();
        Bundle bundle = (Bundle) fg.mo593const();
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null || (string = bundle.getString("unregistered")) != null) {
            return string;
        }
        String string2 = bundle.getString("error");
        if ("RST".equals(string2)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string2 != null) {
            throw new IOException(string2);
        }
        bundle.toString();
        new Throwable();
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        ((CJ) this.f3646do).f354do.mo6423for();
        return null;
    }
}
