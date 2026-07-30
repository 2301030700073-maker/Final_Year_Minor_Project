package defpackage;

import android.app.Activity;
import com.google.android.gms.ads.nativead.NativeAd;
import defpackage.C3128j0;
import java.util.List;

/* renamed from: h0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2843h0 implements C3128j0.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f13233do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Activity f13234do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3128j0.Ctry f13235do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13236do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List f13237do;

    public /* synthetic */ C2843h0(int i, Activity activity, C3128j0.Ctry ctry, String str, List list) {
        this.f13234do = activity;
        this.f13236do = str;
        this.f13237do = list;
        this.f13235do = ctry;
        this.f13233do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6775do(NativeAd nativeAd) {
        Activity activity = this.f13234do;
        String str = this.f13236do;
        List list = this.f13237do;
        C3128j0.Ctry ctry = this.f13235do;
        if (nativeAd == null) {
            C3128j0.m7019for(activity, str, list, ctry);
        } else {
            list.add(nativeAd);
            C3128j0.m7016case(this.f13233do - 1, activity, ctry, str, list);
        }
    }
}
