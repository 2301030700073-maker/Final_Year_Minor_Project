package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import defpackage.C0545Un;

/* renamed from: On, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0413On extends InputConnectionWrapper {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ InterfaceC0457Qn f2671do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0413On(InputConnection inputConnection, C0391Nn c0391Nn) {
        super(inputConnection, false);
        this.f2671do = c0391Nn;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        if (((C0391Nn) this.f2671do).m1552do((inputContentInfo != null && Build.VERSION.SDK_INT >= 25) ? new C0545Un(new C0545Un.Cdo(inputContentInfo)) : null, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
