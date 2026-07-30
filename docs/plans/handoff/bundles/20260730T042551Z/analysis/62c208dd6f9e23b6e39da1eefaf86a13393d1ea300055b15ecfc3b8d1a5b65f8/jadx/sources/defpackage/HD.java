package defpackage;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;

/* loaded from: classes.dex */
public final /* synthetic */ class HD implements CallbackManagerImpl.Callback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1313do;

    public /* synthetic */ HD(int i) {
        this.f1313do = i;
    }

    @Override // com.facebook.internal.CallbackManagerImpl.Callback
    public final boolean onActivityResult(int i, Intent intent) {
        return O4.m1621return(this.f1313do, intent, new JD());
    }
}
