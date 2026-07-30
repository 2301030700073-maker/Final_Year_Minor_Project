package defpackage;

import android.view.View;
import android.widget.AutoCompleteTextView;
import com.google.firebase.messaging.Cdo;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.perf.config.RemoteConfigManager;
import java.util.WeakHashMap;

/* renamed from: ef, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2703ef implements Cinstanceof, InterfaceC0619Xv, InterfaceC0487Rv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f12692do;

    public /* synthetic */ C2703ef(Object obj) {
        this.f12692do = obj;
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(Object obj) {
        boolean z;
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f12692do;
        XH xh = (XH) obj;
        Cdo cdo = FirebaseMessaging.f11889do;
        if (firebaseMessaging.m6085case()) {
            if (xh.f4488do.m2552do() != null) {
                synchronized (xh) {
                    z = xh.f4493do;
                }
                if (z) {
                    return;
                }
                xh.m2818else(0L);
            }
        }
    }

    @Override // defpackage.InterfaceC0487Rv
    public final void onFailure(Exception exc) {
        ((RemoteConfigManager) this.f12692do).lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(exc);
    }

    @Override // defpackage.Cinstanceof
    public final void onTouchExplorationStateChanged(boolean z) {
        C3224kf c3224kf = (C3224kf) this.f12692do;
        AutoCompleteTextView autoCompleteTextView = c3224kf.f14025do;
        if (autoCompleteTextView != null) {
            if (autoCompleteTextView.getInputType() != 0) {
                return;
            }
            int i = z ? 2 : 1;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            ((AbstractC2704eg) c3224kf).f12694do.setImportantForAccessibility(i);
        }
    }
}
