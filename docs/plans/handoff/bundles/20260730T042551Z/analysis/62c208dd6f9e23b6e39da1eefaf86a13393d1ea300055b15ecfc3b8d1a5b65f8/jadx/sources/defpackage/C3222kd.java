package defpackage;

import android.content.Context;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.concurrent.Executor;

/* renamed from: kd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C3222kd implements InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f14009do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Dy f14010do;

    public /* synthetic */ C3222kd(Dy dy, int i) {
        this.f14009do = i;
        this.f14010do = dy;
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public final Object mo1186try(Xz xz) {
        C3421nz lambda$getComponents$0;
        FirebaseMessaging lambda$getComponents$02;
        int i = this.f14009do;
        Dy dy = this.f14010do;
        switch (i) {
            case 0:
                return new C3340md((Context) xz.mo2881for(Context.class), ((C0706ai) xz.mo2881for(C0706ai.class)).m3150new(), xz.m2882goto(InterfaceC0609Xl.class), xz.mo2884new(FJ.class), (Executor) xz.mo2883if(dy));
            case 1:
                lambda$getComponents$02 = FirebaseMessagingRegistrar.lambda$getComponents$0(dy, xz);
                return lambda$getComponents$02;
            default:
                lambda$getComponents$0 = RemoteConfigRegistrar.lambda$getComponents$0(dy, xz);
                return lambda$getComponents$0;
        }
    }
}
