package c.a.a.D0;

import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AllAppsStore f1260a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Predicate f1261b;

    public /* synthetic */ l(AllAppsStore allAppsStore, Predicate predicate) {
        this.f1260a = allAppsStore;
        this.f1261b = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        AllAppsStore allAppsStore = this.f1260a;
        Predicate predicate = this.f1261b;
        BubbleTextView bubbleTextView = (BubbleTextView) obj;
        Objects.requireNonNull(allAppsStore);
        if (bubbleTextView.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
            if (allAppsStore.mTempKey.updateFromItemInfo(itemInfo) && predicate.test(allAppsStore.mTempKey)) {
                bubbleTextView.applyDotState(itemInfo, true);
            }
        }
    }
}
