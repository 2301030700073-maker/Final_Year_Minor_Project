package app.k9mail.ui.utils.linearlayoutmanager;

import androidx.recyclerview.widget.RecyclerView;
import com.beetstra.jutf7.Base64Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LayoutManager extends RecyclerView.LayoutManager {
    public final Base64Util mHorizontalBoundCheck;
    public final Base64Util mVerticalBoundCheck;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: app.k9mail.ui.utils.linearlayoutmanager.LayoutManager$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LayoutManager this$0;

        public /* synthetic */ AnonymousClass1(LayoutManager layoutManager, int i) {
            this.$r8$classId = i;
            this.this$0 = layoutManager;
        }
    }

    public LayoutManager() {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, 0);
        AnonymousClass1 anonymousClass12 = new AnonymousClass1(this, 1);
        this.mHorizontalBoundCheck = new Base64Util(anonymousClass1);
        this.mVerticalBoundCheck = new Base64Util(anonymousClass12);
    }
}
