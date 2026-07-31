package androidx.camera.view;

import android.view.View;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import com.google.android.material.carousel.CarouselLayoutManager;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PreviewView$$ExternalSyntheticLambda1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PreviewView$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i9) {
            case 0:
                PreviewView previewView = (PreviewView) obj;
                if (i3 - i != i7 - i5 || i4 - i2 != i8 - i6) {
                    previewView.redrawPreview();
                    Validate.checkMainThread();
                    previewView.getViewPort();
                    break;
                }
                break;
            default:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i3 - i != i7 - i5 || i4 - i2 != i8 - i6) {
                    view.post(new Fragment$$ExternalSyntheticLambda0(13, carouselLayoutManager));
                    break;
                }
                break;
        }
    }
}
