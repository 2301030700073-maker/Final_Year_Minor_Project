package org.schabi.newpipe.settings.notifications;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.ItemNotificationConfigBinding;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class NotificationModeConfigAdapter extends ListAdapter {
    private final ModeToggleListener listener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class DiffCallback extends DiffUtil {
        public static final DiffCallback INSTANCE = new DiffCallback();

        private DiffCallback() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public boolean areContentsTheSame(SubscriptionItem subscriptionItem, SubscriptionItem subscriptionItem2) {
            subscriptionItem.getClass();
            subscriptionItem2.getClass();
            return subscriptionItem.equals(subscriptionItem2);
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public boolean areItemsTheSame(SubscriptionItem subscriptionItem, SubscriptionItem subscriptionItem2) {
            subscriptionItem.getClass();
            subscriptionItem2.getClass();
            return subscriptionItem.getId() == subscriptionItem2.getId();
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public Object getChangePayload(SubscriptionItem subscriptionItem, SubscriptionItem subscriptionItem2) {
            subscriptionItem.getClass();
            subscriptionItem2.getClass();
            if (subscriptionItem.getNotificationMode() != subscriptionItem2.getNotificationMode()) {
                return Integer.valueOf(subscriptionItem2.getNotificationMode());
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface ModeToggleListener {
        void onModeChange(int i, int i2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SubscriptionHolder extends RecyclerView.ViewHolder {
        private final ItemNotificationConfigBinding itemBinding;
        final /* synthetic */ NotificationModeConfigAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubscriptionHolder(NotificationModeConfigAdapter notificationModeConfigAdapter, ItemNotificationConfigBinding itemNotificationConfigBinding) {
            super(itemNotificationConfigBinding.rootView);
            itemNotificationConfigBinding.getClass();
            this.this$0 = notificationModeConfigAdapter;
            this.itemBinding = itemNotificationConfigBinding;
            this.itemView.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(this, notificationModeConfigAdapter, 17));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(SubscriptionHolder subscriptionHolder, NotificationModeConfigAdapter notificationModeConfigAdapter, View view) {
            notificationModeConfigAdapter.listener.onModeChange(subscriptionHolder.getBindingAdapterPosition(), !subscriptionHolder.itemBinding.rootView.isChecked() ? 1 : 0);
        }

        public final void bind(SubscriptionItem subscriptionItem) {
            subscriptionItem.getClass();
            this.itemBinding.rootView.setText(subscriptionItem.getTitle());
            this.itemBinding.rootView.setChecked(subscriptionItem.getNotificationMode() != 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationModeConfigAdapter(ModeToggleListener modeToggleListener) {
        super(DiffCallback.INSTANCE);
        modeToggleListener.getClass();
        this.listener = modeToggleListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SubscriptionHolder subscriptionHolder, int i) {
        subscriptionHolder.getClass();
        Object obj = getCurrentList().get(i);
        obj.getClass();
        subscriptionHolder.bind((SubscriptionItem) obj);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SubscriptionHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_notification_config, viewGroup, false);
        if (inflate != null) {
            return new SubscriptionHolder(this, new ItemNotificationConfigBinding((CheckedTextView) inflate));
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("rootView");
        return null;
    }

    public final void update(List<SubscriptionEntity> list) {
        list.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        for (SubscriptionEntity subscriptionEntity : list) {
            long j = subscriptionEntity.uid;
            String str = subscriptionEntity.name;
            str.getClass();
            int i = subscriptionEntity.notificationMode;
            int i2 = subscriptionEntity.serviceId;
            String str2 = subscriptionEntity.url;
            str2.getClass();
            arrayList.add(new SubscriptionItem(j, str, i, i2, str2));
        }
        submitList(arrayList);
    }
}
