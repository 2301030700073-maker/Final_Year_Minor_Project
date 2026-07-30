package defpackage;

import android.content.Context;
import android.os.Build;

/* renamed from: vu, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3887vu extends AbstractC4103za<C0157Cu> {
    public C3887vu(Context context, IG ig) {
        super((C0179Du) C2861hI.m6791do(context, ig).f13290for);
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: for */
    public final boolean mo652for(C0157Cu c0157Cu) {
        C0157Cu c0157Cu2 = c0157Cu;
        return Build.VERSION.SDK_INT >= 26 ? (c0157Cu2.f444do && c0157Cu2.f446if) ? false : true : true ^ c0157Cu2.f444do;
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: if */
    public final boolean mo653if(TM tm) {
        return tm.f3653do.f1196do == EnumC0201Eu.CONNECTED;
    }
}
