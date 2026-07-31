package org.schabi.newpipe.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment$$ExternalSyntheticLambda10;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.local.feed.notifications.NotificationWorker;
import org.schabi.newpipe.local.feed.notifications.ScheduleOptions;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationsSettingsFragment extends BasePreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LambdaSubscriber loader;
    public Snackbar notificationWarningSnackbar;
    public SwitchPreference streamsNotificationsPreference;

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResource(R.xml.notifications_settings);
        this.streamsNotificationsPreference = (SwitchPreference) requirePreference(R.string.enable_streams_notifications);
        NotificationHelper.Companion companion = NotificationHelper.Companion;
        Context requireContext = requireContext();
        requireContext.getClass();
        companion.getClass();
        boolean areNotificationsEnabledOnDevice = NotificationHelper.Companion.areNotificationsEnabledOnDevice(requireContext);
        if (Build.VERSION.SDK_INT < 33) {
            ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).setEnabled(areNotificationsEnabledOnDevice);
            return;
        }
        SwitchPreference switchPreference = this.streamsNotificationsPreference;
        if (switchPreference != null) {
            switchPreference.setEnabled(areNotificationsEnabledOnDevice);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        LambdaSubscriber lambdaSubscriber = this.loader;
        if (lambdaSubscriber != null) {
            SubscriptionHelper.cancel(lambdaSubscriber);
        }
        this.loader = null;
        Snackbar snackbar = this.notificationWarningSnackbar;
        if (snackbar != null) {
            snackbar.dispatchDismiss(3);
        }
        this.notificationWarningSnackbar = null;
        super.onPause();
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        NotificationHelper.Companion companion = NotificationHelper.Companion;
        Context requireContext = requireContext();
        requireContext.getClass();
        companion.getClass();
        boolean areNotificationsEnabledOnDevice = NotificationHelper.Companion.areNotificationsEnabledOnDevice(requireContext);
        if (Build.VERSION.SDK_INT >= 33) {
            SwitchPreference switchPreference = this.streamsNotificationsPreference;
            if (switchPreference != null) {
                switchPreference.setEnabled(areNotificationsEnabledOnDevice);
            }
        } else {
            ((PreferenceScreen) this.mPreferenceManager.mPreferenceScreen).setEnabled(areNotificationsEnabledOnDevice);
        }
        final int i = 0;
        final int i2 = 1;
        if (!areNotificationsEnabledOnDevice && this.notificationWarningSnackbar == null) {
            RecyclerView recyclerView = this.mList;
            int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
            Snackbar make = Snackbar.make(recyclerView, recyclerView.getResources().getText(R.string.notifications_disabled), -2);
            make.setAction(make.context.getText(R.string.settings), new VideoDetailFragment$$ExternalSyntheticLambda10(1));
            ((SnackbarContentLayout) make.view.getChildAt(0)).getActionView().setTextColor(-256);
            NotificationsSettingsFragment$onResume$1$2 notificationsSettingsFragment$onResume$1$2 = new NotificationsSettingsFragment$onResume$1$2(this);
            if (make.callbacks == null) {
                make.callbacks = new ArrayList();
            }
            make.callbacks.add(notificationsSettingsFragment$onResume$1$2);
            make.show();
            this.notificationWarningSnackbar = make;
        }
        LambdaSubscriber lambdaSubscriber = this.loader;
        if (lambdaSubscriber != null) {
            SubscriptionHelper.cancel(lambdaSubscriber);
        }
        Context requireContext2 = requireContext();
        requireContext2.getClass();
        SubscriptionDAO_Impl subscriptionDAO = AppKt.getInstance(requireContext2).subscriptionDAO();
        new FeedDatabaseManager(requireContext2);
        FlowableObserveOn observeOn = subscriptionDAO.getAll().observeOn(AndroidSchedulers.mainThread());
        LambdaSubscriber lambdaSubscriber2 = new LambdaSubscriber(new Consumer(this) { // from class: org.schabi.newpipe.settings.NotificationsSettingsFragment$onResume$2
            public final /* synthetic */ NotificationsSettingsFragment $tmp0;

            {
                this.$tmp0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i;
                NotificationsSettingsFragment notificationsSettingsFragment = this.$tmp0;
                switch (i3) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        int i4 = NotificationsSettingsFragment.$r8$clinit;
                        int i5 = 0;
                        if (!list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                if (((SubscriptionEntity) it.next()).notificationMode != 0 && (i5 = i5 + 1) < 0) {
                                    throw new ArithmeticException("Count overflow has happened.");
                                }
                            }
                        }
                        notificationsSettingsFragment.requirePreference(R.string.streams_notifications_channels_key).setSummary(i5 + "/" + list.size());
                        return;
                    default:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        int i6 = NotificationsSettingsFragment.$r8$clinit;
                        ErrorUtil.Companion companion2 = ErrorUtil.Companion;
                        ErrorInfo errorInfo = new ErrorInfo(th, UserAction.SUBSCRIPTION_GET, "Get subscriptions list", (Integer) null, 24);
                        companion2.getClass();
                        ErrorUtil.Companion.showSnackbar(notificationsSettingsFragment, errorInfo);
                        return;
                }
            }
        }, new Consumer(this) { // from class: org.schabi.newpipe.settings.NotificationsSettingsFragment$onResume$2
            public final /* synthetic */ NotificationsSettingsFragment $tmp0;

            {
                this.$tmp0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                NotificationsSettingsFragment notificationsSettingsFragment = this.$tmp0;
                switch (i3) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        int i4 = NotificationsSettingsFragment.$r8$clinit;
                        int i5 = 0;
                        if (!list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                if (((SubscriptionEntity) it.next()).notificationMode != 0 && (i5 = i5 + 1) < 0) {
                                    throw new ArithmeticException("Count overflow has happened.");
                                }
                            }
                        }
                        notificationsSettingsFragment.requirePreference(R.string.streams_notifications_channels_key).setSummary(i5 + "/" + list.size());
                        return;
                    default:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        int i6 = NotificationsSettingsFragment.$r8$clinit;
                        ErrorUtil.Companion companion2 = ErrorUtil.Companion;
                        ErrorInfo errorInfo = new ErrorInfo(th, UserAction.SUBSCRIPTION_GET, "Get subscriptions list", (Integer) null, 24);
                        companion2.getClass();
                        ErrorUtil.Companion.showSnackbar(notificationsSettingsFragment, errorInfo);
                        return;
                }
            }
        });
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber2);
        this.loader = lambdaSubscriber2;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (Intrinsics.areEqual(str, getString(R.string.streams_notifications_interval_key)) || Intrinsics.areEqual(str, getString(R.string.streams_notifications_network_key))) {
            NotificationWorker.Companion companion = NotificationWorker.Companion;
            ScheduleOptions.Companion.getClass();
            ScheduleOptions from = ScheduleOptions.Companion.from(context);
            companion.getClass();
            NotificationWorker.Companion.schedule(context, from, true);
            return;
        }
        if (Intrinsics.areEqual(str, getString(R.string.enable_streams_notifications))) {
            NotificationHelper.Companion.getClass();
            if (!NotificationHelper.Companion.areNewStreamsNotificationsEnabled(context)) {
                NotificationWorker.Companion.getClass();
                NotificationWorker.Companion.cancel(context);
            } else {
                NotificationWorker.Companion.getClass();
                ScheduleOptions.Companion.getClass();
                NotificationWorker.Companion.schedule(context, ScheduleOptions.Companion.from(context), false);
            }
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.defaultPreferences.registerOnSharedPreferenceChangeListener(this);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onStop() {
        this.defaultPreferences.unregisterOnSharedPreferenceChangeListener(this);
        super.onStop();
    }
}
