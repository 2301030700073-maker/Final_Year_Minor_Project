package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.utils.widget.ImageFilterButton;

/* renamed from: on, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3468on extends ViewOutlineProvider {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ImageFilterButton f14851do;

    public C3468on(ImageFilterButton imageFilterButton) {
        this.f14851do = imageFilterButton;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        ImageFilterButton imageFilterButton = this.f14851do;
        outline.setRoundRect(0, 0, imageFilterButton.getWidth(), imageFilterButton.getHeight(), imageFilterButton.f6192for);
    }
}
