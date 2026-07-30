package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.CallbackManagerImpl;

/* renamed from: dr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2656dr extends AbstractC0459Qp implements InterfaceC2650dk<ActivityResult, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FragmentActivity f12548do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2715er f12549do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2656dr(C2715er c2715er, FragmentActivity fragmentActivity) {
        super(1);
        this.f12549do = c2715er;
        this.f12548do = fragmentActivity;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(ActivityResult activityResult) {
        ActivityResult activityResult2 = activityResult;
        C0173Do.m401try(activityResult2, "result");
        int i = activityResult2.f5148for;
        if (i == -1) {
            this.f12549do.m6591new().m5507final(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), i, activityResult2.f5147do);
        } else {
            this.f12548do.finish();
        }
        return C3206kJ.f13965do;
    }
}
