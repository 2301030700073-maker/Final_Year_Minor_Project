package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.utils.widget.ImageFilterView;

/* renamed from: pn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3527pn extends ViewOutlineProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ImageFilterView f14981do;

    public C3527pn(ImageFilterView imageFilterView) {
        this.f14981do = imageFilterView;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        ImageFilterView imageFilterView = this.f14981do;
        outline.setRoundRect(0, 0, imageFilterView.getWidth(), imageFilterView.getHeight(), imageFilterView.f6203for);
    }
}
