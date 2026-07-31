package org.schabi.newpipe.local.feed;

import android.text.Editable;
import androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$1;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.DiffUtil;
import com.xwray.groupie.DiffCallback;
import com.xwray.groupie.GroupieAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.text.StringsKt;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.databinding.DialogFeedGroupCreateBinding;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;
import org.schabi.newpipe.local.subscription.item.FeedGroupReorderItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object function;

    public /* synthetic */ FeedFragment$sam$androidx_lifecycle_Observer$0(Object obj, int i) {
        this.$r8$classId = i;
        this.function = obj;
    }

    public final boolean equals(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.function;
        switch (i) {
            case 0:
                return (obj instanceof Observer) && (obj instanceof FunctionAdapter) && ((RxAwaitKt$$ExternalSyntheticLambda0) obj2) == ((FunctionAdapter) obj).getFunctionDelegate();
            case 1:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            case 2:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            default:
                return (obj instanceof Observer) && (obj instanceof FunctionAdapter) && ((RxAwaitKt$$ExternalSyntheticLambda0) obj2) == ((FunctionAdapter) obj).getFunctionDelegate();
        }
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        int i = this.$r8$classId;
        Object obj = this.function;
        switch (i) {
            case 0:
                return (RxAwaitKt$$ExternalSyntheticLambda0) obj;
            case 1:
                return new FunctionReferenceImpl(1, 0, FeedGroupDialog.class, (FeedGroupDialog) obj, "handleGroup", "handleGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V");
            case 2:
                return new FunctionReferenceImpl(1, 0, FeedGroupReorderDialog.class, (FeedGroupReorderDialog) obj, "handleGroups", "handleGroups(Ljava/util/List;)V");
            default:
                return (RxAwaitKt$$ExternalSyntheticLambda0) obj;
        }
    }

    public final int hashCode() {
        int i = this.$r8$classId;
        Object obj = this.function;
        switch (i) {
            case 0:
                return ((RxAwaitKt$$ExternalSyntheticLambda0) obj).hashCode();
            case 1:
                return getFunctionDelegate().hashCode();
            case 2:
                return getFunctionDelegate().hashCode();
            default:
                return ((RxAwaitKt$$ExternalSyntheticLambda0) obj).hashCode();
        }
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        FeedGroupIcon feedGroupIcon;
        String str;
        int i = this.$r8$classId;
        Object obj2 = this.function;
        switch (i) {
            case 0:
                ((RxAwaitKt$$ExternalSyntheticLambda0) obj2).invoke(obj);
                break;
            case 1:
                FeedGroupEntity feedGroupEntity = (FeedGroupEntity) obj;
                FeedGroupDialog feedGroupDialog = (FeedGroupDialog) obj2;
                if (feedGroupEntity == null || (feedGroupIcon = feedGroupEntity.icon) == null) {
                    feedGroupIcon = FeedGroupIcon.ALL;
                }
                if (feedGroupEntity == null || (str = feedGroupEntity.name) == null) {
                    str = "";
                }
                feedGroupDialog.groupIcon = feedGroupEntity != null ? feedGroupEntity.icon : null;
                feedGroupDialog.groupSortOrder = feedGroupEntity != null ? feedGroupEntity.sortOrder : -1L;
                FeedGroupIcon feedGroupIcon2 = feedGroupDialog.selectedIcon;
                if (feedGroupIcon2 != null) {
                    feedGroupIcon = feedGroupIcon2;
                }
                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding = feedGroupDialog._feedGroupCreateBinding;
                dialogFeedGroupCreateBinding.getClass();
                dialogFeedGroupCreateBinding.iconPreview.setImageResource(feedGroupIcon.getDrawableRes());
                DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding2 = feedGroupDialog._feedGroupCreateBinding;
                dialogFeedGroupCreateBinding2.getClass();
                Editable text = dialogFeedGroupCreateBinding2.groupNameInput.getText();
                if (text == null || StringsKt.isBlank(text)) {
                    DialogFeedGroupCreateBinding dialogFeedGroupCreateBinding3 = feedGroupDialog._feedGroupCreateBinding;
                    dialogFeedGroupCreateBinding3.getClass();
                    dialogFeedGroupCreateBinding3.groupNameInput.setText(str);
                    break;
                }
                break;
            case 2:
                List list = (List) obj;
                list.getClass();
                FeedGroupReorderDialog feedGroupReorderDialog = (FeedGroupReorderDialog) obj2;
                if (feedGroupReorderDialog.groupOrderedIdList.isEmpty()) {
                    ArrayList<Long> arrayList = feedGroupReorderDialog.groupOrderedIdList;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(Long.valueOf(((FeedGroupEntity) it.next()).uid));
                    }
                    arrayList.addAll(arrayList2);
                } else {
                    list = CollectionsKt.sortedWith(list, new SemanticsSortKt$special$$inlined$thenBy$1(feedGroupReorderDialog, 4));
                }
                GroupieAdapter groupieAdapter = feedGroupReorderDialog.groupAdapter;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(new FeedGroupReorderItem((FeedGroupEntity) it2.next(), feedGroupReorderDialog.itemTouchHelper));
                }
                groupieAdapter.getClass();
                DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffCallback(new ArrayList(groupieAdapter.groups), arrayList3), true);
                groupieAdapter.setNewGroups(arrayList3);
                calculateDiff.dispatchUpdatesTo(groupieAdapter.diffUtilCallbacks);
                break;
            default:
                ((RxAwaitKt$$ExternalSyntheticLambda0) obj2).invoke(obj);
                break;
        }
    }
}
