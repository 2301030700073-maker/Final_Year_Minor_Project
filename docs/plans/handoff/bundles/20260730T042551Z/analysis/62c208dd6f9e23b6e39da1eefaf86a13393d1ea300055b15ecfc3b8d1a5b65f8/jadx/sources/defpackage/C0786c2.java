package defpackage;

import com.facebook.GraphRequest;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.codeless.ViewIndexer;

/* renamed from: c2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0786c2 implements GraphRequest.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f8479do;

    public /* synthetic */ C0786c2(int i) {
        this.f8479do = i;
    }

    @Override // com.facebook.GraphRequest.Cif
    /* renamed from: if */
    public final void mo78if(C0346Ll c0346Ll) {
        switch (this.f8479do) {
            case 0:
                AppEventsCAPIManager.m5340enable$lambda0(c0346Ll);
                break;
            default:
                ViewIndexer.Companion.m5357buildAppIndexingRequest$lambda0(c0346Ll);
                break;
        }
    }
}
