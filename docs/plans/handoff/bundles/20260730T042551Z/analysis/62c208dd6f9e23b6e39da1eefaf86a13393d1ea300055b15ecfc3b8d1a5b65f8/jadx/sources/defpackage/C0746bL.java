package defpackage;

import android.view.View;
import android.view.ViewGroup;

@InterfaceC0761bd(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {409, 411}, m = "invokeSuspend")
/* renamed from: bL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0746bL extends Zz implements InterfaceC3641rk<AbstractC3258lC<? super View>, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f8388do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public /* synthetic */ Object f8389do;

    /* renamed from: new, reason: not valid java name */
    public int f8390new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0746bL(View view, InterfaceC0576Wa<? super C0746bL> interfaceC0576Wa) {
        super(interfaceC0576Wa);
        this.f8388do = view;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f8390new;
        View view = this.f8388do;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            AbstractC3258lC abstractC3258lC = (AbstractC3258lC) this.f8389do;
            this.f8389do = abstractC3258lC;
            this.f8390new = 1;
            abstractC3258lC.mo7218do(view, this);
            return enumC3750tb;
        }
        if (i == 1) {
            AbstractC3258lC abstractC3258lC2 = (AbstractC3258lC) this.f8389do;
            C3645ro.m8017synchronized(obj);
            if (view instanceof ViewGroup) {
                this.f8389do = null;
                this.f8390new = 2;
                abstractC3258lC2.getClass();
                Object mo7219for = abstractC3258lC2.mo7219for(new FI(new YK((ViewGroup) view), XK.f4499do), this);
                if (mo7219for != enumC3750tb) {
                    mo7219for = C3206kJ.f13965do;
                }
                if (mo7219for == enumC3750tb) {
                    return enumC3750tb;
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C3645ro.m8017synchronized(obj);
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C0746bL c0746bL = new C0746bL(this.f8388do, interfaceC0576Wa);
        c0746bL.f8389do = obj;
        return c0746bL;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(AbstractC3258lC<? super View> abstractC3258lC, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C0746bL) mo359do(abstractC3258lC, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
