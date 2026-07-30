package defpackage;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: iV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2933iV {

    /* renamed from: do, reason: not valid java name */
    public final Context f13523do;

    public C2933iV(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f13523do = applicationContext;
    }
}
