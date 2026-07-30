package defpackage;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Cdo;
import com.google.android.material.chip.Chip;

/* loaded from: classes3.dex */
public final class C7 extends ViewOutlineProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Chip f336do;

    public C7(Chip chip) {
        this.f336do = chip;
    }

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public final void getOutline(View view, Outline outline) {
        Cdo cdo = this.f336do.f10801do;
        if (cdo != null) {
            cdo.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
