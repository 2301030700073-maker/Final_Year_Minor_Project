package defpackage;

import android.content.Context;
import android.os.Build;

/* renamed from: Fu, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0223Fu extends AbstractC4103za<C0157Cu> {
    public C0223Fu(Context context, IG ig) {
        super((C0179Du) C2861hI.m6791do(context, ig).f13290for);
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: for, reason: not valid java name */
    public final boolean mo652for(C0157Cu c0157Cu) {
        C0157Cu c0157Cu2 = c0157Cu;
        return !c0157Cu2.f444do || c0157Cu2.f445for;
    }

    @Override // defpackage.AbstractC4103za
    /* renamed from: if, reason: not valid java name */
    public final boolean mo653if(TM tm) {
        EnumC0201Eu enumC0201Eu = tm.f3653do.f1196do;
        return enumC0201Eu == EnumC0201Eu.UNMETERED || (Build.VERSION.SDK_INT >= 30 && enumC0201Eu == EnumC0201Eu.TEMPORARILY_UNMETERED);
    }
}
