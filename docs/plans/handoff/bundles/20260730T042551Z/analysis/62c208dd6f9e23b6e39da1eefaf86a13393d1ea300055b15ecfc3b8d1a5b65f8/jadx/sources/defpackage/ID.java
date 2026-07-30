package defpackage;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;

/* loaded from: classes.dex */
public final /* synthetic */ class ID implements CallbackManagerImpl.Callback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1466do;

    public /* synthetic */ ID(int i) {
        this.f1466do = i;
    }

    @Override // com.facebook.internal.CallbackManagerImpl.Callback
    public final boolean onActivityResult(int i, Intent intent) {
        return O4.m1621return(this.f1466do, intent, new JD());
    }
}
