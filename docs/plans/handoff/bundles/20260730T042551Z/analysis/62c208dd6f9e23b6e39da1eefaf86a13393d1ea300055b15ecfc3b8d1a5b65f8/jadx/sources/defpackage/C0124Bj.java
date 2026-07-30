package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.FragmentActivity;

/* renamed from: Bj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0124Bj implements InterfaceC0421Ov {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FragmentActivity f259do;

    public C0124Bj(FragmentActivity fragmentActivity) {
        this.f259do = fragmentActivity;
    }

    @Override // defpackage.InterfaceC0421Ov
    /* renamed from: do, reason: not valid java name */
    public final void mo200do() {
        FragmentActivity fragmentActivity = this.f259do;
        AbstractC0190Ej<?> abstractC0190Ej = fragmentActivity.f6846do.f640do;
        abstractC0190Ej.f879do.m4133if(abstractC0190Ej, abstractC0190Ej, null);
        Bundle m4580do = ((ComponentActivity) fragmentActivity).f5097do.f14891do.m4580do("android:support:fragments");
        if (m4580do != null) {
            Parcelable parcelable = m4580do.getParcelable("android:support:fragments");
            AbstractC0190Ej<?> abstractC0190Ej2 = fragmentActivity.f6846do.f640do;
            if (!(abstractC0190Ej2 instanceof InterfaceC2746fL)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            abstractC0190Ej2.f879do.d(parcelable);
        }
    }
}
