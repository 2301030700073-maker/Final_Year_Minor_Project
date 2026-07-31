package org.schabi.newpipe.fragments.list.channel;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatButton;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MenuProvider;
import androidx.preference.PreferenceManager;
import androidx.room.util.DBUtil;
import androidx.transition.Transition;
import androidx.viewpager.widget.ViewPager;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.observers.EmptyCompletableObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFlatMapCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkip;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Okio;
import okio.Options;
import okio.PriorityQueue;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.databinding.ErrorPanelBinding;
import org.schabi.newpipe.databinding.FragmentChannelBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.fragments.detail.TabAdapter;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.StateSaver;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ChannelFragment extends BaseStateFragment<ChannelInfo> implements StateSaver.WriteRead {
    public static final /* synthetic */ int $r8$clinit = 0;
    public FragmentChannelBinding binding;
    public SubscriptionEntity channelSubscription;
    public ChannelInfo currentInfo;
    public ConsumerSingleObserver currentWorker;
    public int lastTab;
    public MenuItem menuNotifyButton;
    public AnonymousClass1 menuProvider;
    public MenuItem menuRssButton;
    protected String name;
    public LambdaObserver subscribeButtonMonitor;
    public SubscriptionManager subscriptionManager;
    public TabAdapter tabAdapter;
    protected String url;
    protected int serviceId = -1;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public boolean channelContentNotSupported = false;

    public static ChannelFragment getInstance(String str, int i, String str2) {
        ChannelFragment channelFragment = new ChannelFragment();
        channelFragment.serviceId = i;
        channelFragment.url = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        channelFragment.name = str2;
        return channelFragment;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
        ChannelInfo channelInfo = this.currentInfo;
        if (channelInfo == null) {
            startLoading(false);
        } else {
            handleResult(channelInfo);
        }
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final String generateSuffix() {
        return null;
    }

    public final void handleResult(final ChannelInfo channelInfo) {
        ChannelInfo channelInfo2;
        hideLoading();
        this.currentInfo = channelInfo;
        int serviceId = channelInfo.getServiceId();
        String originalUrl = channelInfo.getOriginalUrl();
        String name = channelInfo.getName();
        this.serviceId = serviceId;
        this.url = originalUrl;
        if (TextUtils.isEmpty(name)) {
            name = "";
        }
        this.name = name;
        final int i = 1;
        if (!ImageStrategy.shouldLoadImages() || channelInfo.getBanners().isEmpty()) {
            ((ImageView) this.binding.channelBannerImage).setImageDrawable(null);
        } else {
            ImageView imageView = (ImageView) this.binding.channelBannerImage;
            List banners = channelInfo.getBanners();
            banners.getClass();
            Cookie.Companion.loadImageDefault(imageView, ImageStrategy.choosePreferredImage(banners), R.drawable.placeholder_channel_banner, true);
        }
        Cookie.Companion.loadAvatar((ShapeableImageView) this.binding.channelAvatarView, channelInfo.getAvatars());
        Cookie.Companion.loadAvatar((ShapeableImageView) this.binding.subChannelAvatarView, channelInfo.getParentChannelAvatars());
        ((NewPipeTextView) this.binding.channelTitleView).setText(channelInfo.getName());
        final int i2 = 0;
        ((NewPipeTextView) this.binding.channelSubscriberView).setVisibility(0);
        long subscriberCount = channelInfo.getSubscriberCount();
        FragmentChannelBinding fragmentChannelBinding = this.binding;
        if (subscriberCount >= 0) {
            ((NewPipeTextView) fragmentChannelBinding.channelSubscriberView).setText(Localization.shortSubscriberCount(this.activity, channelInfo.getSubscriberCount()));
        } else {
            ((NewPipeTextView) fragmentChannelBinding.channelSubscriberView).setText(R.string.subscribers_count_not_available);
        }
        if (!TextUtils.isEmpty(this.currentInfo.getParentChannelName())) {
            ((NewPipeTextView) this.binding.subChannelTitleView).setText(String.format(getString(R.string.channel_created_by), this.currentInfo.getParentChannelName()));
            ((NewPipeTextView) this.binding.subChannelTitleView).setVisibility(0);
            ((ShapeableImageView) this.binding.subChannelAvatarView).setVisibility(0);
        }
        MenuItem menuItem = this.menuRssButton;
        if (menuItem != null && (channelInfo2 = this.currentInfo) != null) {
            menuItem.setVisible(!TextUtils.isEmpty(channelInfo2.getFeedUrl()));
        }
        this.channelContentNotSupported = false;
        Iterator it = channelInfo.getErrors().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (((Throwable) it.next()) instanceof ContentNotSupportedException) {
                this.channelContentNotSupported = true;
                FragmentChannelBinding fragmentChannelBinding2 = this.binding;
                if (fragmentChannelBinding2 != null) {
                    ((NewPipeTextView) fragmentChannelBinding2.errorContentNotSupported).setVisibility(0);
                    ((NewPipeTextView) this.binding.channelKaomoji).setText("(︶︹︺)");
                    ((NewPipeTextView) this.binding.channelKaomoji).setTextSize(2, 45.0f);
                }
            }
        }
        CompositeDisposable compositeDisposable = this.disposables;
        compositeDisposable.clear();
        LambdaObserver lambdaObserver = this.subscribeButtonMonitor;
        if (lambdaObserver != null) {
            DisposableHelper.dispose(lambdaObserver);
        }
        updateTabs();
        Utils$$ExternalSyntheticBUOutline0 utils$$ExternalSyntheticBUOutline0 = new Utils$$ExternalSyntheticBUOutline0(this, channelInfo);
        Consumer consumer = new Consumer(this) { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ChannelFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                ChannelInfo channelInfo3 = channelInfo;
                final ChannelFragment channelFragment = this.f$0;
                switch (i3) {
                    case 0:
                        int i4 = ChannelFragment.$r8$clinit;
                        channelFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.SUBSCRIPTION_UPDATE, "Updating subscription for " + channelInfo3.getUrl(), channelInfo3));
                        break;
                    default:
                        List list = (List) obj;
                        LambdaObserver lambdaObserver2 = channelFragment.subscribeButtonMonitor;
                        if (lambdaObserver2 != null) {
                            DisposableHelper.dispose(lambdaObserver2);
                        }
                        if (!list.isEmpty()) {
                            final int i5 = 0;
                            SubscriptionEntity subscriptionEntity = (SubscriptionEntity) list.get(0);
                            channelFragment.channelSubscription = subscriptionEntity;
                            channelFragment.updateNotifyButton(subscriptionEntity);
                            final SubscriptionEntity subscriptionEntity2 = channelFragment.channelSubscription;
                            channelFragment.subscribeButtonMonitor = channelFragment.monitorSubscribeButton(new Function() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda14
                                @Override // io.reactivex.rxjava3.functions.Function
                                public final Object apply(Object obj2) {
                                    int i6 = i5;
                                    SubscriptionEntity subscriptionEntity3 = subscriptionEntity2;
                                    ChannelFragment channelFragment2 = channelFragment;
                                    int i7 = 1;
                                    switch (i6) {
                                        case 0:
                                            SubscriptionManager subscriptionManager = channelFragment2.subscriptionManager;
                                            subscriptionManager.getClass();
                                            subscriptionEntity3.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
                                            subscriptionDAO_Impl.getClass();
                                            DBUtil.performBlocking(subscriptionDAO_Impl.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl, subscriptionEntity3, i7));
                                            break;
                                        default:
                                            SubscriptionManager subscriptionManager2 = channelFragment2.subscriptionManager;
                                            subscriptionManager2.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl2 = subscriptionManager2.subscriptionTable;
                                            subscriptionDAO_Impl2.getClass();
                                            ((Number) DBUtil.performBlocking(subscriptionDAO_Impl2.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl2, subscriptionEntity3, 2))).longValue();
                                            break;
                                    }
                                    return obj2;
                                }
                            });
                            break;
                        } else {
                            final SubscriptionEntity subscriptionEntity3 = new SubscriptionEntity(0, null, null, null, null, null, 255);
                            subscriptionEntity3.serviceId = channelInfo3.getServiceId();
                            subscriptionEntity3.url = channelInfo3.getUrl();
                            subscriptionEntity3.name = channelInfo3.getName();
                            subscriptionEntity3.avatarUrl = ImageStrategy.imageListToDbUrl(channelInfo3.getAvatars());
                            subscriptionEntity3.description = channelInfo3.getDescription();
                            subscriptionEntity3.subscriberCount = Long.valueOf(channelInfo3.getSubscriberCount());
                            channelFragment.channelSubscription = null;
                            channelFragment.updateNotifyButton(null);
                            final int i6 = 1;
                            channelFragment.subscribeButtonMonitor = channelFragment.monitorSubscribeButton(new Function() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda14
                                @Override // io.reactivex.rxjava3.functions.Function
                                public final Object apply(Object obj2) {
                                    int i62 = i6;
                                    SubscriptionEntity subscriptionEntity32 = subscriptionEntity3;
                                    ChannelFragment channelFragment2 = channelFragment;
                                    int i7 = 1;
                                    switch (i62) {
                                        case 0:
                                            SubscriptionManager subscriptionManager = channelFragment2.subscriptionManager;
                                            subscriptionManager.getClass();
                                            subscriptionEntity32.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
                                            subscriptionDAO_Impl.getClass();
                                            DBUtil.performBlocking(subscriptionDAO_Impl.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl, subscriptionEntity32, i7));
                                            break;
                                        default:
                                            SubscriptionManager subscriptionManager2 = channelFragment2.subscriptionManager;
                                            subscriptionManager2.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl2 = subscriptionManager2.subscriptionTable;
                                            subscriptionDAO_Impl2.getClass();
                                            ((Number) DBUtil.performBlocking(subscriptionDAO_Impl2.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl2, subscriptionEntity32, 2))).longValue();
                                            break;
                                    }
                                    return obj2;
                                }
                            });
                            break;
                        }
                }
            }
        };
        SubscriptionManager subscriptionManager = this.subscriptionManager;
        subscriptionManager.getClass();
        SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
        int serviceId2 = channelInfo.getServiceId();
        String url = channelInfo.getUrl();
        url.getClass();
        subscriptionDAO_Impl.getClass();
        CompletableObserveOn observeOn = new MaybeFlatMapCompletable(Cookie.Companion.createMaybe(subscriptionDAO_Impl.__db, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url, serviceId2, 9)), new TokenData(subscriptionManager, channelInfo, 16)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(consumer, utils$$ExternalSyntheticBUOutline0);
        observeOn.subscribe(callbackCompletableObserver);
        compositeDisposable.add(callbackCompletableObserver);
        ChannelFragment$$ExternalSyntheticLambda1 channelFragment$$ExternalSyntheticLambda1 = new ChannelFragment$$ExternalSyntheticLambda1(this, 3);
        SubscriptionDAO_Impl subscriptionDAO_Impl2 = this.subscriptionManager.subscriptionTable;
        int serviceId3 = channelInfo.getServiceId();
        String url2 = channelInfo.getUrl();
        subscriptionDAO_Impl2.getClass();
        url2.getClass();
        Flowable createFlowable = Cookie.Companion.createFlowable(subscriptionDAO_Impl2.__db, false, new String[]{"subscriptions"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url2, serviceId3, 6));
        int i3 = 4;
        ViewClickObservable viewClickObservable = new ViewClickObservable(createFlowable, i3);
        ObservableObserveOn observeOn2 = viewClickObservable.observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver2 = new LambdaObserver(new Consumer(this) { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ChannelFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i32 = i;
                ChannelInfo channelInfo3 = channelInfo;
                final ChannelFragment channelFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i4 = ChannelFragment.$r8$clinit;
                        channelFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.SUBSCRIPTION_UPDATE, "Updating subscription for " + channelInfo3.getUrl(), channelInfo3));
                        break;
                    default:
                        List list = (List) obj;
                        LambdaObserver lambdaObserver22 = channelFragment.subscribeButtonMonitor;
                        if (lambdaObserver22 != null) {
                            DisposableHelper.dispose(lambdaObserver22);
                        }
                        if (!list.isEmpty()) {
                            final int i5 = 0;
                            SubscriptionEntity subscriptionEntity = (SubscriptionEntity) list.get(0);
                            channelFragment.channelSubscription = subscriptionEntity;
                            channelFragment.updateNotifyButton(subscriptionEntity);
                            final SubscriptionEntity subscriptionEntity2 = channelFragment.channelSubscription;
                            channelFragment.subscribeButtonMonitor = channelFragment.monitorSubscribeButton(new Function() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda14
                                @Override // io.reactivex.rxjava3.functions.Function
                                public final Object apply(Object obj2) {
                                    int i62 = i5;
                                    SubscriptionEntity subscriptionEntity32 = subscriptionEntity2;
                                    ChannelFragment channelFragment2 = channelFragment;
                                    int i7 = 1;
                                    switch (i62) {
                                        case 0:
                                            SubscriptionManager subscriptionManager2 = channelFragment2.subscriptionManager;
                                            subscriptionManager2.getClass();
                                            subscriptionEntity32.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl3 = subscriptionManager2.subscriptionTable;
                                            subscriptionDAO_Impl3.getClass();
                                            DBUtil.performBlocking(subscriptionDAO_Impl3.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl3, subscriptionEntity32, i7));
                                            break;
                                        default:
                                            SubscriptionManager subscriptionManager22 = channelFragment2.subscriptionManager;
                                            subscriptionManager22.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl22 = subscriptionManager22.subscriptionTable;
                                            subscriptionDAO_Impl22.getClass();
                                            ((Number) DBUtil.performBlocking(subscriptionDAO_Impl22.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl22, subscriptionEntity32, 2))).longValue();
                                            break;
                                    }
                                    return obj2;
                                }
                            });
                            break;
                        } else {
                            final SubscriptionEntity subscriptionEntity3 = new SubscriptionEntity(0, null, null, null, null, null, 255);
                            subscriptionEntity3.serviceId = channelInfo3.getServiceId();
                            subscriptionEntity3.url = channelInfo3.getUrl();
                            subscriptionEntity3.name = channelInfo3.getName();
                            subscriptionEntity3.avatarUrl = ImageStrategy.imageListToDbUrl(channelInfo3.getAvatars());
                            subscriptionEntity3.description = channelInfo3.getDescription();
                            subscriptionEntity3.subscriberCount = Long.valueOf(channelInfo3.getSubscriberCount());
                            channelFragment.channelSubscription = null;
                            channelFragment.updateNotifyButton(null);
                            final int i6 = 1;
                            channelFragment.subscribeButtonMonitor = channelFragment.monitorSubscribeButton(new Function() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment$$ExternalSyntheticLambda14
                                @Override // io.reactivex.rxjava3.functions.Function
                                public final Object apply(Object obj2) {
                                    int i62 = i6;
                                    SubscriptionEntity subscriptionEntity32 = subscriptionEntity3;
                                    ChannelFragment channelFragment2 = channelFragment;
                                    int i7 = 1;
                                    switch (i62) {
                                        case 0:
                                            SubscriptionManager subscriptionManager2 = channelFragment2.subscriptionManager;
                                            subscriptionManager2.getClass();
                                            subscriptionEntity32.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl3 = subscriptionManager2.subscriptionTable;
                                            subscriptionDAO_Impl3.getClass();
                                            DBUtil.performBlocking(subscriptionDAO_Impl3.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl3, subscriptionEntity32, i7));
                                            break;
                                        default:
                                            SubscriptionManager subscriptionManager22 = channelFragment2.subscriptionManager;
                                            subscriptionManager22.getClass();
                                            SubscriptionDAO_Impl subscriptionDAO_Impl22 = subscriptionManager22.subscriptionTable;
                                            subscriptionDAO_Impl22.getClass();
                                            ((Number) DBUtil.performBlocking(subscriptionDAO_Impl22.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(subscriptionDAO_Impl22, subscriptionEntity32, 2))).longValue();
                                            break;
                                    }
                                    return obj2;
                                }
                            });
                            break;
                        }
                }
            }
        }, channelFragment$$ExternalSyntheticLambda1);
        observeOn2.subscribe(lambdaObserver2);
        compositeDisposable.add(lambdaObserver2);
        ObservableObserveOn observeOn3 = new ObservableSkip(new ObservableMap(viewClickObservable, new Utils$$ExternalSyntheticBUOutline0(17), i2), 1).observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver3 = new LambdaObserver(new ChannelFragment$$ExternalSyntheticLambda1(this, i3), channelFragment$$ExternalSyntheticLambda1);
        observeOn3.subscribe(lambdaObserver3);
        compositeDisposable.add(lambdaObserver3);
        ObservableObserveOn observeOn4 = new ObservableMap(new ObservableSkip(new ObservableSkip(new ObservableMap(viewClickObservable, new Utils$$ExternalSyntheticBUOutline0(17), i2), 1), 0), new ChannelFragment$$ExternalSyntheticLambda1(this, 5), i).observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver4 = new LambdaObserver(new ChannelFragment$$ExternalSyntheticLambda1(this, 6), channelFragment$$ExternalSyntheticLambda1);
        observeOn4.subscribe(lambdaObserver4);
        compositeDisposable.add(lambdaObserver4);
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        ChannelFragment$$ExternalSyntheticLambda2 channelFragment$$ExternalSyntheticLambda2 = new ChannelFragment$$ExternalSyntheticLambda2(this, 0);
        ((ShapeableImageView) this.binding.subChannelAvatarView).setOnClickListener(channelFragment$$ExternalSyntheticLambda2);
        ((NewPipeTextView) this.binding.subChannelTitleView).setOnClickListener(channelFragment$$ExternalSyntheticLambda2);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        TabAdapter tabAdapter = new TabAdapter(getChildFragmentManager());
        this.tabAdapter = tabAdapter;
        ((ViewPager) this.binding.viewPager).setAdapter(tabAdapter);
        FragmentChannelBinding fragmentChannelBinding = this.binding;
        ((TabLayout) fragmentChannelBinding.tabLayout).setupWithViewPager((ViewPager) fragmentChannelBinding.viewPager);
        setTitle(this.name);
        ((NewPipeTextView) this.binding.channelTitleView).setText(this.name);
        if (ImageStrategy.shouldLoadImages()) {
            return;
        }
        ((ImageView) this.binding.channelBannerImage).setImageDrawable(null);
    }

    public final LambdaObserver monitorSubscribeButton(Function function) {
        Utils$$ExternalSyntheticBUOutline0 utils$$ExternalSyntheticBUOutline0 = new Utils$$ExternalSyntheticBUOutline0(this);
        ChannelFragment$$ExternalSyntheticLambda1 channelFragment$$ExternalSyntheticLambda1 = new ChannelFragment$$ExternalSyntheticLambda1(this, 2);
        int i = 0;
        ObservableDebounceTimed debounce = new ViewClickObservable((AppCompatButton) this.binding.channelSubscribeButton, i).subscribeOn(AndroidSchedulers.mainThread()).observeOn(Schedulers.IO).debounce(100L);
        LambdaObserver lambdaObserver = new LambdaObserver(utils$$ExternalSyntheticBUOutline0, channelFragment$$ExternalSyntheticLambda1);
        try {
            debounce.subscribe(new ObservableMap.MapObserver(lambdaObserver, function, i));
            return lambdaObserver;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            AppKt.throwIfFatal(th);
            MathKt.onError(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.subscriptionManager = new SubscriptionManager(this.activity);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_channel, viewGroup, false);
        int i = R.id.app_bar_layout;
        if (((AppBarLayout) Options.Companion.findChildViewById(R.id.app_bar_layout, inflate)) != null) {
            i = R.id.channel_avatar_view;
            ShapeableImageView shapeableImageView = (ShapeableImageView) Options.Companion.findChildViewById(R.id.channel_avatar_view, inflate);
            if (shapeableImageView != null) {
                i = R.id.channel_banner_image;
                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.channel_banner_image, inflate);
                if (imageView != null) {
                    i = R.id.channel_kaomoji;
                    NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.channel_kaomoji, inflate);
                    if (newPipeTextView != null) {
                        i = R.id.channel_metadata;
                        if (((ConstraintLayout) Options.Companion.findChildViewById(R.id.channel_metadata, inflate)) != null) {
                            i = R.id.channel_subscribe_button;
                            AppCompatButton appCompatButton = (AppCompatButton) Options.Companion.findChildViewById(R.id.channel_subscribe_button, inflate);
                            if (appCompatButton != null) {
                                i = R.id.channel_subscriber_view;
                                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.channel_subscriber_view, inflate);
                                if (newPipeTextView2 != null) {
                                    i = R.id.channel_title_view;
                                    NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.channel_title_view, inflate);
                                    if (newPipeTextView3 != null) {
                                        i = R.id.empty_state_view;
                                        if (((LinearLayout) Options.Companion.findChildViewById(R.id.empty_state_view, inflate)) != null) {
                                            i = R.id.error_content_not_supported;
                                            NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.error_content_not_supported, inflate);
                                            if (newPipeTextView4 != null) {
                                                i = R.id.error_panel;
                                                View findChildViewById = Options.Companion.findChildViewById(R.id.error_panel, inflate);
                                                if (findChildViewById != null) {
                                                    ErrorPanelBinding.bind(findChildViewById);
                                                    i = R.id.loading_progress_bar;
                                                    if (((ProgressBar) Options.Companion.findChildViewById(R.id.loading_progress_bar, inflate)) != null) {
                                                        i = R.id.sub_channel_avatar_view;
                                                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) Options.Companion.findChildViewById(R.id.sub_channel_avatar_view, inflate);
                                                        if (shapeableImageView2 != null) {
                                                            i = R.id.sub_channel_title_view;
                                                            NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.sub_channel_title_view, inflate);
                                                            if (newPipeTextView5 != null) {
                                                                i = R.id.tab_layout;
                                                                TabLayout tabLayout = (TabLayout) Options.Companion.findChildViewById(R.id.tab_layout, inflate);
                                                                if (tabLayout != null) {
                                                                    i = R.id.view_pager;
                                                                    ViewPager viewPager = (ViewPager) Options.Companion.findChildViewById(R.id.view_pager, inflate);
                                                                    if (viewPager != null) {
                                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
                                                                        FragmentChannelBinding fragmentChannelBinding = new FragmentChannelBinding();
                                                                        fragmentChannelBinding.rootView = coordinatorLayout;
                                                                        fragmentChannelBinding.channelAvatarView = shapeableImageView;
                                                                        fragmentChannelBinding.channelBannerImage = imageView;
                                                                        fragmentChannelBinding.channelKaomoji = newPipeTextView;
                                                                        fragmentChannelBinding.channelSubscribeButton = appCompatButton;
                                                                        fragmentChannelBinding.channelSubscriberView = newPipeTextView2;
                                                                        fragmentChannelBinding.channelTitleView = newPipeTextView3;
                                                                        fragmentChannelBinding.errorContentNotSupported = newPipeTextView4;
                                                                        fragmentChannelBinding.subChannelAvatarView = shapeableImageView2;
                                                                        fragmentChannelBinding.subChannelTitleView = newPipeTextView5;
                                                                        fragmentChannelBinding.tabLayout = tabLayout;
                                                                        fragmentChannelBinding.viewPager = viewPager;
                                                                        this.binding = fragmentChannelBinding;
                                                                        return coordinatorLayout;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        this.disposables.clear();
        this.binding = null;
        this.menuProvider = null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        AnonymousClass1 anonymousClass1 = this.menuProvider;
        if (anonymousClass1 != null) {
            this.activity.removeMenuProvider(anonymousClass1);
        }
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void onRestoreInstanceState(Bundle bundle) {
        this.lastTab = bundle.getInt("LastTab", 0);
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        FragmentChannelBinding fragmentChannelBinding = this.binding;
        if (fragmentChannelBinding != null) {
            bundle.putInt("LastTab", ((TabLayout) fragmentChannelBinding.tabLayout).getSelectedTabPosition());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.view.MenuProvider, org.schabi.newpipe.fragments.list.channel.ChannelFragment$1] */
    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ?? r1 = new MenuProvider() { // from class: org.schabi.newpipe.fragments.list.channel.ChannelFragment.1
            @Override // androidx.core.view.MenuProvider
            public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
                menuInflater.inflate(R.menu.menu_channel, menu);
                int i = ChannelFragment.$r8$clinit;
            }

            @Override // androidx.core.view.MenuProvider
            public final boolean onMenuItemSelected(MenuItem menuItem) {
                int itemId = menuItem.getItemId();
                ChannelFragment channelFragment = ChannelFragment.this;
                if (itemId == R.id.menu_item_notify) {
                    boolean z = !menuItem.isChecked();
                    menuItem.setEnabled(false);
                    int i = ChannelFragment.$r8$clinit;
                    channelFragment.setNotify(z);
                    return true;
                }
                if (itemId == R.id.action_settings) {
                    Context requireContext = channelFragment.requireContext();
                    requireContext.startActivity(new Intent(requireContext, (Class<?>) SettingsActivity.class));
                    return true;
                }
                if (itemId == R.id.menu_item_rss) {
                    if (channelFragment.currentInfo != null) {
                        Transition.Impl26.openUrlInApp(channelFragment.requireContext(), channelFragment.currentInfo.getFeedUrl());
                        return true;
                    }
                } else if (itemId == R.id.menu_item_openInBrowser) {
                    if (channelFragment.currentInfo != null) {
                        Transition.Impl26.openUrlInBrowser(channelFragment.requireContext(), channelFragment.currentInfo.getOriginalUrl());
                        return true;
                    }
                } else {
                    if (itemId != R.id.menu_item_share) {
                        return false;
                    }
                    if (channelFragment.currentInfo != null) {
                        Transition.Impl26.shareText(channelFragment.requireContext(), channelFragment.name, channelFragment.currentInfo.getOriginalUrl(), channelFragment.currentInfo.getAvatars());
                    }
                }
                return true;
            }

            @Override // androidx.core.view.MenuProvider
            public final void onPrepareMenu(Menu menu) {
                ChannelInfo channelInfo;
                MenuItem findItem = menu.findItem(R.id.menu_item_rss);
                ChannelFragment channelFragment = ChannelFragment.this;
                channelFragment.menuRssButton = findItem;
                channelFragment.menuNotifyButton = menu.findItem(R.id.menu_item_notify);
                MenuItem menuItem = channelFragment.menuRssButton;
                if (menuItem != null && (channelInfo = channelFragment.currentInfo) != null) {
                    menuItem.setVisible(!TextUtils.isEmpty(channelInfo.getFeedUrl()));
                }
                channelFragment.updateNotifyButton(channelFragment.channelSubscription);
            }

            @Override // androidx.core.view.MenuProvider
            public final /* synthetic */ void onMenuClosed(Menu menu) {
            }
        };
        this.menuProvider = r1;
        this.activity.addMenuProvider(r1);
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final void readFrom(Queue queue) {
        this.currentInfo = (ChannelInfo) queue.poll();
        this.lastTab = ((Integer) queue.poll()).intValue();
    }

    public final void setNotify(boolean z) {
        SubscriptionManager subscriptionManager = this.subscriptionManager;
        int serviceId = this.currentInfo.getServiceId();
        String url = this.currentInfo.getUrl();
        subscriptionManager.getClass();
        url.getClass();
        SubscriptionDAO_Impl subscriptionDAO_Impl = subscriptionManager.subscriptionTable;
        subscriptionDAO_Impl.getClass();
        CompletableObserveOn observeOn = new MaybeFlatMapCompletable(Cookie.Companion.createMaybe(subscriptionDAO_Impl.__db, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(url, serviceId, 9)), new PriorityQueue(z ? 1 : 0, subscriptionManager, 13)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        observeOn.subscribe(emptyCompletableObserver);
        this.disposables.add(emptyCompletableObserver);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        Okio.getRequestManager((ShapeableImageView) this.binding.channelAvatarView).dispose();
        Okio.getRequestManager((ImageView) this.binding.channelBannerImage).dispose();
        Okio.getRequestManager((ShapeableImageView) this.binding.subChannelAvatarView).dispose();
        AppKt.animate$default((AppCompatButton) this.binding.channelSubscribeButton, false, 100L, null, 0L, null, 28);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        super.startLoading(z);
        this.currentInfo = null;
        updateTabs();
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        SingleObserveOn subscribeOn = ExtractorHelper.getChannelInfo(this.serviceId, this.url, z).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new ChannelFragment$$ExternalSyntheticLambda1(this, 1), new ChannelFragment$$ExternalSyntheticLambda1(this, 0));
        try {
            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver2, mainThread));
            this.currentWorker = consumerSingleObserver2;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public final void updateNotifyButton(SubscriptionEntity subscriptionEntity) {
        MenuItem menuItem = this.menuNotifyButton;
        if (menuItem == null) {
            return;
        }
        if (subscriptionEntity != null) {
            Context requireContext = requireContext();
            NotificationHelper.Companion.getClass();
            menuItem.setEnabled(NotificationHelper.Companion.areNewStreamsNotificationsEnabled(requireContext));
            this.menuNotifyButton.setChecked(subscriptionEntity.notificationMode == 1);
        }
        this.menuNotifyButton.setVisible(subscriptionEntity != null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void updateTabs() {
        int i;
        Iterator it;
        boolean contains;
        char c;
        int i2;
        TabAdapter tabAdapter = this.tabAdapter;
        tabAdapter.mFragmentList.clear();
        tabAdapter.mFragmentTitleList.clear();
        int i3 = 0;
        if (this.currentInfo != null && !this.channelContentNotSupported) {
            Context requireContext = requireContext();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext);
            Iterator it2 = this.currentInfo.getTabs().iterator();
            while (it2.hasNext()) {
                ListLinkHandler listLinkHandler = (ListLinkHandler) it2.next();
                String str = (String) listLinkHandler.getContentFilters().get(i3);
                str.getClass();
                switch (str) {
                    case "playlists":
                        i = R.string.show_channel_tabs_playlists;
                        break;
                    case "albums":
                        i = R.string.show_channel_tabs_albums;
                        break;
                    case "shorts":
                        i = R.string.show_channel_tabs_shorts;
                        break;
                    case "tracks":
                        i = R.string.show_channel_tabs_tracks;
                        break;
                    case "videos":
                        i = R.string.show_channel_tabs_videos;
                        break;
                    case "livestreams":
                        i = R.string.show_channel_tabs_livestreams;
                        break;
                    case "likes":
                        i = R.string.show_channel_tabs_likes;
                        break;
                    case "channels":
                        i = R.string.show_channel_tabs_channels;
                        break;
                    default:
                        i = -1;
                        break;
                }
                if (i == -1) {
                    it = it2;
                    contains = false;
                } else {
                    it = it2;
                    Set<String> stringSet = defaultSharedPreferences.getStringSet(requireContext.getString(R.string.show_channel_tabs_key), null);
                    contains = stringSet == null ? true : stringSet.contains(requireContext.getString(i));
                }
                if (contains) {
                    ChannelTabFragment channelTabFragment = ChannelTabFragment.getInstance(this.serviceId, listLinkHandler, this.name);
                    channelTabFragment.useAsFrontPage(this.useAsFrontPage);
                    TabAdapter tabAdapter2 = this.tabAdapter;
                    switch (str.hashCode()) {
                        case -1865828127:
                            if (str.equals("playlists")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1415163932:
                            if (str.equals("albums")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case -903148681:
                            if (str.equals("shorts")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -865716088:
                            if (str.equals("tracks")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case -816678056:
                            if (str.equals("videos")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case -439267705:
                            if (str.equals("livestreams")) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        case 102974396:
                            if (str.equals("likes")) {
                                c = 6;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1432626128:
                            if (str.equals("channels")) {
                                c = 7;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        case 0:
                            i2 = R.string.channel_tab_playlists;
                            break;
                        case 1:
                            i2 = R.string.channel_tab_albums;
                            break;
                        case 2:
                            i2 = R.string.channel_tab_shorts;
                            break;
                        case 3:
                            i2 = R.string.channel_tab_tracks;
                            break;
                        case 4:
                            i2 = R.string.channel_tab_videos;
                            break;
                        case 5:
                            i2 = R.string.channel_tab_livestreams;
                            break;
                        case 6:
                            i2 = R.string.channel_tab_likes;
                            break;
                        case 7:
                            i2 = R.string.channel_tab_channels;
                            break;
                        default:
                            i2 = R.string.unknown_content;
                            break;
                    }
                    tabAdapter2.addFragment(channelTabFragment, requireContext.getString(i2));
                }
                it2 = it;
                i3 = 0;
            }
            Set<String> stringSet2 = defaultSharedPreferences.getStringSet(requireContext.getString(R.string.show_channel_tabs_key), null);
            if (stringSet2 == null ? true : stringSet2.contains(requireContext.getString(R.string.show_channel_tabs_about))) {
                TabAdapter tabAdapter3 = this.tabAdapter;
                ChannelInfo channelInfo = this.currentInfo;
                ChannelAboutFragment channelAboutFragment = new ChannelAboutFragment();
                channelAboutFragment.channelInfo = channelInfo;
                tabAdapter3.addFragment(channelAboutFragment, requireContext.getString(R.string.channel_tab_about));
            }
        }
        this.tabAdapter.notifyDataSetUpdate();
        int i4 = 0;
        while (true) {
            int size = this.tabAdapter.mFragmentList.size();
            FragmentChannelBinding fragmentChannelBinding = this.binding;
            if (i4 >= size) {
                TabLayout.Tab tabAt = ((TabLayout) fragmentChannelBinding.tabLayout).getTabAt(this.lastTab);
                if (tabAt != null) {
                    ((TabLayout) this.binding.tabLayout).selectTab(tabAt, true);
                    return;
                }
                return;
            }
            TabLayout.Tab tabAt2 = ((TabLayout) fragmentChannelBinding.tabLayout).getTabAt(i4);
            String itemTitle = this.tabAdapter.getItemTitle(i4);
            if (TextUtils.isEmpty(tabAt2.contentDesc) && !TextUtils.isEmpty(itemTitle)) {
                tabAt2.view.setContentDescription(itemTitle);
            }
            tabAt2.text = itemTitle;
            tabAt2.updateView();
            i4++;
        }
    }

    @Override // org.schabi.newpipe.util.StateSaver.WriteRead
    public final void writeTo(LinkedList linkedList) {
        linkedList.add(this.currentInfo);
        FragmentChannelBinding fragmentChannelBinding = this.binding;
        linkedList.add(Integer.valueOf(fragmentChannelBinding == null ? 0 : ((TabLayout) fragmentChannelBinding.tabLayout).getSelectedTabPosition()));
    }
}
