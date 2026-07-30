package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;

/* loaded from: classes.dex */
public final class E extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public final ActionBarContainer f713do;

    public E(ActionBarContainer actionBarContainer) {
        this.f713do = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f713do;
        if (actionBarContainer.f5561if) {
            Drawable drawable = actionBarContainer.f5557for;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f5553do;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Drawable drawable3 = actionBarContainer.f5559if;
        if (drawable3 == null || !actionBarContainer.f5558for) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f713do;
        if (actionBarContainer.f5561if) {
            if (actionBarContainer.f5557for != null) {
                actionBarContainer.f5553do.getOutline(outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f5553do;
            if (drawable != null) {
                drawable.getOutline(outline);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
