package defpackage;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes3.dex */
public final class O5 implements B {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f2582do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ BottomSheetBehavior f2583do;

    public O5(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.f2583do = bottomSheetBehavior;
        this.f2582do = i;
    }

    @Override // defpackage.B
    /* renamed from: case */
    public final boolean mo136case(View view) {
        this.f2583do.m5691protected(this.f2582do);
        return true;
    }
}
