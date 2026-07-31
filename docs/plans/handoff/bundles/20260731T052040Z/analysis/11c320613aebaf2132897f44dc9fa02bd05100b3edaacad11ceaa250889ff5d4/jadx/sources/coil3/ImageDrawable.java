package coil3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageDrawable extends Drawable {
    public final /* synthetic */ int $r8$classId;
    public final Object image;

    public /* synthetic */ ImageDrawable(Object obj, int i) {
        this.$r8$classId = i;
        this.image = obj;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i = this.$r8$classId;
        Object obj = this.image;
        switch (i) {
            case 0:
                ((Image) obj).draw(canvas);
                break;
            default:
                ActionBarContainer actionBarContainer = (ActionBarContainer) obj;
                if (!actionBarContainer.mIsSplit) {
                    Drawable drawable = actionBarContainer.mBackground;
                    if (drawable != null) {
                        drawable.draw(canvas);
                    }
                    Drawable drawable2 = actionBarContainer.mStackedBackground;
                    if (drawable2 != null && actionBarContainer.mIsStacked) {
                        drawable2.draw(canvas);
                        break;
                    }
                } else {
                    Drawable drawable3 = actionBarContainer.mSplitBackground;
                    if (drawable3 != null) {
                        drawable3.draw(canvas);
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        switch (this.$r8$classId) {
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        switch (this.$r8$classId) {
            case 1:
                ActionBarContainer actionBarContainer = (ActionBarContainer) this.image;
                if (!actionBarContainer.mIsSplit) {
                    Drawable drawable = actionBarContainer.mBackground;
                    if (drawable != null) {
                        drawable.getOutline(outline);
                        break;
                    }
                } else if (actionBarContainer.mSplitBackground != null) {
                    actionBarContainer.mBackground.getOutline(outline);
                    break;
                }
                break;
            default:
                super.getOutline(outline);
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        int i2 = this.$r8$classId;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        int i = this.$r8$classId;
    }

    private final void setAlpha$androidx$appcompat$widget$ActionBarBackgroundDrawable(int i) {
    }

    private final void setAlpha$coil3$ImageDrawable(int i) {
    }

    private final void setColorFilter$androidx$appcompat$widget$ActionBarBackgroundDrawable(ColorFilter colorFilter) {
    }

    private final void setColorFilter$coil3$ImageDrawable(ColorFilter colorFilter) {
    }
}
