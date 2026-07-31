package org.schabi.newpipe.settings.notifications;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFlatMapCompletable;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okio.Options;
import okio.PriorityQueue;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.FragmentChannelsNotificationsBinding;
import org.schabi.newpipe.local.subscription.SubscriptionManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class NotificationModeConfigFragment extends Fragment {
    private FragmentChannelsNotificationsBinding _binding;
    private NotificationModeConfigAdapter adapter;
    private final CompositeDisposable disposables = new CompositeDisposable();
    private Disposable loader;
    private SubscriptionManager subscriptionManager;

    private final FragmentChannelsNotificationsBinding getBinding() {
        FragmentChannelsNotificationsBinding fragmentChannelsNotificationsBinding = this._binding;
        fragmentChannelsNotificationsBinding.getClass();
        return fragmentChannelsNotificationsBinding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(NotificationModeConfigFragment notificationModeConfigFragment, int i, int i2) {
        NotificationModeConfigAdapter notificationModeConfigAdapter = notificationModeConfigFragment.adapter;
        if (notificationModeConfigAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Object obj = notificationModeConfigAdapter.getCurrentList().get(i);
        obj.getClass();
        notificationModeConfigFragment.updateNotificationMode((SubscriptionItem) obj, i2);
    }

    private final void toggleAll() {
        NotificationModeConfigAdapter notificationModeConfigAdapter = this.adapter;
        if (notificationModeConfigAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        List<Object> currentList = notificationModeConfigAdapter.getCurrentList();
        currentList.getClass();
        SubscriptionItem subscriptionItem = (SubscriptionItem) CollectionsKt.firstOrNull(currentList);
        if (subscriptionItem != null) {
            int i = subscriptionItem.getNotificationMode() == 0 ? 1 : 0;
            NotificationModeConfigAdapter notificationModeConfigAdapter2 = this.adapter;
            if (notificationModeConfigAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            List<Object> currentList2 = notificationModeConfigAdapter2.getCurrentList();
            currentList2.getClass();
            Iterator<T> it = currentList2.iterator();
            while (it.hasNext()) {
                SubscriptionItem subscriptionItem2 = (SubscriptionItem) it.next();
                subscriptionItem2.getClass();
                updateNotificationMode(subscriptionItem2, i);
            }
        }
    }

    private final void updateNotificationMode(SubscriptionItem subscriptionItem, int i) {
        CompositeDisposable compositeDisposable = this.disposables;
        SubscriptionManager subscriptionManager = this.subscriptionManager;
        if (subscriptionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionManager");
            throw null;
        }
        int serviceId = subscriptionItem.getServiceId();
        String url = subscriptionItem.getUrl();
        url.getClass();
        SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
        subscriptionDAO_Impl.getClass();
        CompletableObserveOn subscribeOn = new MaybeFlatMapCompletable(Cookie.Companion.createMaybe(subscriptionDAO_Impl.__db, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url, serviceId, 9)), new PriorityQueue(i, subscriptionManager, 13)).subscribeOn(Schedulers.IO);
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        subscribeOn.subscribe(emptyCompletableObserver);
        compositeDisposable.add(emptyCompletableObserver);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        this.subscriptionManager = new SubscriptionManager(context);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_notifications_channels, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_channels_notifications, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.recycler_view, inflate);
        if (recyclerView == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.recycler_view)));
            return null;
        }
        this._binding = new FragmentChannelsNotificationsBinding((FrameLayout) inflate, recyclerView);
        FrameLayout frameLayout = getBinding().rootView;
        frameLayout.getClass();
        return frameLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.disposables.dispose();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        Disposable disposable = this.loader;
        if (disposable != null) {
            disposable.dispose();
        }
        this.loader = null;
        this._binding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.action_toggle_all) {
            return false;
        }
        toggleAll();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        this.adapter = new NotificationModeConfigAdapter(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 22));
        RecyclerView recyclerView = getBinding().recyclerView;
        NotificationModeConfigAdapter notificationModeConfigAdapter = this.adapter;
        if (notificationModeConfigAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerView.setAdapter(notificationModeConfigAdapter);
        Disposable disposable = this.loader;
        if (disposable != null) {
            disposable.dispose();
        }
        SubscriptionManager subscriptionManager = this.subscriptionManager;
        if (subscriptionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionManager");
            throw null;
        }
        FlowableObserveOn observeOn = subscriptionManager.subscriptionTable.getAll().observeOn(AndroidSchedulers.mainThread());
        final NotificationModeConfigAdapter notificationModeConfigAdapter2 = this.adapter;
        if (notificationModeConfigAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new Consumer() { // from class: org.schabi.newpipe.settings.notifications.NotificationModeConfigFragment$onViewCreated$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(List<SubscriptionEntity> list) {
                list.getClass();
                NotificationModeConfigAdapter.this.update(list);
            }
        }, Functions.ON_ERROR_MISSING);
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.loader = lambdaSubscriber;
    }
}
