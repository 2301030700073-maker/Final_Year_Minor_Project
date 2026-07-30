package defpackage;

import android.content.Context;
import com.facebook.internal.FacebookRequestErrorClassification;
import java.io.File;

/* renamed from: qx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3596qx extends AbstractC0459Qp implements InterfaceC0768bk<File> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f15176do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3654rx f15177do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3596qx(Context context, C3654rx c3654rx) {
        super(0);
        this.f15176do = context;
        this.f15177do = c3654rx;
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final File mo585new() {
        Context context = this.f15176do;
        C0173Do.m399new(context, "applicationContext");
        String str = this.f15177do.f15344do;
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        String m397goto = C0173Do.m397goto(".preferences_pb", str);
        C0173Do.m401try(m397goto, "fileName");
        return new File(context.getApplicationContext().getFilesDir(), C0173Do.m397goto(m397goto, "datastore/"));
    }
}
