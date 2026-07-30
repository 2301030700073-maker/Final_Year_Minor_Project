package defpackage;

import android.content.Context;
import android.os.Build;

/* renamed from: yu, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4064yu extends AbstractC4103za<C0157Cu> {
    static {
        AbstractC0614Xq.m2870try("NetworkNotRoamingCtrlr");
    }

    public C4064yu(Context context, IG ig) {
        super((C0179Du) C2861hI.m6791do(context, ig).f13290for);
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: for */
    public final boolean mo652for(C0157Cu c0157Cu) {
        C0157Cu c0157Cu2 = c0157Cu;
        if (Build.VERSION.SDK_INT >= 24) {
            return (c0157Cu2.f444do && c0157Cu2.f447new) ? false : true;
        }
        AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
        return !c0157Cu2.f444do;
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: if */
    public final boolean mo653if(TM tm) {
        return tm.f3653do.f1196do == EnumC0201Eu.NOT_ROAMING;
    }
}
