package androidx.core.content.res;

import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ResourcesCompat$FontCallback$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ ResourcesCompat$FontCallback$$ExternalSyntheticLambda1(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((CamUtils) obj).onFontRetrievalFailed(i2);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.viewRef.get();
                if (view != null) {
                    sideSheetBehavior.startSettling$1(view, i2, false);
                    break;
                }
                break;
        }
    }
}
