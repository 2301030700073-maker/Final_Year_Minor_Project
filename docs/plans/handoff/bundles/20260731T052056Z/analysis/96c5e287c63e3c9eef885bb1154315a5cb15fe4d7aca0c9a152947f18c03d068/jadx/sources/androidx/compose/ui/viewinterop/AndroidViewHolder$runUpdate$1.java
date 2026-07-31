package androidx.compose.ui.viewinterop;

import android.os.Parcelable;
import android.util.SparseArray;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidViewHolder$runUpdate$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ViewFactoryHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidViewHolder$runUpdate$1(ViewFactoryHolder viewFactoryHolder, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = viewFactoryHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        OwnerSnapshotObserver snapshotObserver;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ViewFactoryHolder viewFactoryHolder = this.this$0;
        switch (i) {
            case 0:
                if (viewFactoryHolder.hasUpdateBlock && viewFactoryHolder.isAttachedToWindow() && viewFactoryHolder.getView().getParent() == viewFactoryHolder) {
                    snapshotObserver = viewFactoryHolder.getSnapshotObserver();
                    snapshotObserver.observer.observeReads(viewFactoryHolder, AndroidView_androidKt$NoOpUpdate$1.INSTANCE$1, viewFactoryHolder.getUpdate());
                    break;
                }
                break;
            case 1:
                viewFactoryHolder.getLayoutNode().invalidateLayer$ui();
                break;
            case 2:
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                viewFactoryHolder.typedView.saveHierarchyState(sparseArray);
                break;
            case 3:
                viewFactoryHolder.getReleaseBlock().invoke(viewFactoryHolder.typedView);
                viewFactoryHolder.unregisterSaveStateProvider();
                break;
            case 4:
                viewFactoryHolder.getResetBlock().invoke(viewFactoryHolder.typedView);
                break;
            default:
                viewFactoryHolder.getUpdateBlock().invoke(viewFactoryHolder.typedView);
                break;
        }
        return unit;
    }
}
