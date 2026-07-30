package defpackage;

import defpackage.AbstractC3890vx;
import java.util.Map;

@InterfaceC0761bd(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {329}, m = "invokeSuspend")
/* renamed from: wx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3949wx extends AbstractC2800gG implements InterfaceC3641rk<AbstractC3890vx, InterfaceC0576Wa<? super AbstractC3890vx>, Object> {

    /* renamed from: do, reason: not valid java name */
    public /* synthetic */ Object f16502do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk<C0441Pt, InterfaceC0576Wa<? super C3206kJ>, Object> f16503do;

    /* renamed from: new, reason: not valid java name */
    public int f16504new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C3949wx(InterfaceC3641rk<? super C0441Pt, ? super InterfaceC0576Wa<? super C3206kJ>, ? extends Object> interfaceC3641rk, InterfaceC0576Wa<? super C3949wx> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f16503do = interfaceC3641rk;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f16504new;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C0441Pt c0441Pt = (C0441Pt) this.f16502do;
            C3645ro.m8017synchronized(obj);
            return c0441Pt;
        }
        C3645ro.m8017synchronized(obj);
        C0441Pt c0441Pt2 = new C0441Pt((Map<AbstractC3890vx.Cdo<?>, Object>) C4120zr.b(((AbstractC3890vx) this.f16502do).mo1811do()), false);
        this.f16502do = c0441Pt2;
        this.f16504new = 1;
        return this.f16503do.invoke(c0441Pt2, this) == enumC3750tb ? enumC3750tb : c0441Pt2;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C3949wx c3949wx = new C3949wx(this.f16503do, interfaceC0576Wa);
        c3949wx.f16502do = obj;
        return c3949wx;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(AbstractC3890vx abstractC3890vx, InterfaceC0576Wa<? super AbstractC3890vx> interfaceC0576Wa) {
        return ((C3949wx) mo359do(abstractC3890vx, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
