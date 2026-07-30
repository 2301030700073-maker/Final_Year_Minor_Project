package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import defpackage.AbstractC3539pz;
import defpackage.BinderC3652rv;
import defpackage.Cif;

/* loaded from: classes.dex */
public final class zaz extends AbstractC3539pz {
    private static final zaz zaa = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zaa(Context context, int i, int i2) {
        zaz zazVar = zaa;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) BinderC3652rv.o(((zam) zazVar.getRemoteCreatorInstance(context)).zae(new BinderC3652rv(context), zaxVar));
        } catch (Exception e) {
            throw new AbstractC3539pz.Cdo(Cif.m6918new("Could not get button with size ", i, " and color ", i2), e);
        }
    }

    @Override // defpackage.AbstractC3539pz
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof zam ? (zam) queryLocalInterface : new zam(iBinder);
    }
}
