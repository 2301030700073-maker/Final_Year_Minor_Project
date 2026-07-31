package com.fsck.k9.ui.push;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import app.k9mail.provider.K9AppNameProvider;
import com.fsck.k9.R;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.controller.push.PushController$init$2;
import com.fsck.k9.notification.NotificationChannelManager;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.JobKt;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushInfoFragment extends Fragment {
    public final Lazy appNameProvider$delegate;
    public final Lazy notificationChannelManager$delegate;
    public final Lazy pushController$delegate;

    public PushInfoFragment() {
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$special$$inlined$inject$default$1
            public final /* synthetic */ PushInfoFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                PushInfoFragment pushInfoFragment = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.notificationChannelManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.pushController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$special$$inlined$inject$default$1
            public final /* synthetic */ PushInfoFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                PushInfoFragment pushInfoFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                }
            }
        });
        final int i3 = 2;
        this.appNameProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$special$$inlined$inject$default$1
            public final /* synthetic */ PushInfoFragment $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                PushInfoFragment pushInfoFragment = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(NotificationChannelManager.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(pushInfoFragment).resolve(Reflection.getOrCreateKotlinClass(AppNameProvider.class), null, null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_push_info, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.notificationText);
        int i = Build.VERSION.SDK_INT;
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 0;
        Lazy lazy = this.appNameProvider$delegate;
        if (i >= 26) {
            String string = getString(R.string.push_info_configure_notification_text);
            string.getClass();
            materialTextView.setText(getString(R.string.push_info_notification_explanation_text, ((K9AppNameProvider) ((AppNameProvider) lazy.getValue())).getAppName(), string));
            MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.configureNotificationButton);
            materialButton.getClass();
            materialButton.setVisibility(0);
            materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$$ExternalSyntheticLambda0
                public final /* synthetic */ PushInfoFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i5 = i4;
                    PushInfoFragment pushInfoFragment = this.f$0;
                    switch (i5) {
                        case 0:
                            Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                            intent.putExtra("android.provider.extra.APP_PACKAGE", pushInfoFragment.requireContext().getPackageName());
                            ((NotificationChannelManager) pushInfoFragment.notificationChannelManager$delegate.getValue()).getClass();
                            intent.putExtra("android.provider.extra.CHANNEL_ID", "push");
                            pushInfoFragment.startActivity(intent);
                            break;
                        case 1:
                            try {
                                pushInfoFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://support.mozilla.org/kb/configure-push-email-thunderbird-android")));
                                break;
                            } catch (ActivityNotFoundException unused) {
                                Toast.makeText(pushInfoFragment.requireContext(), R.string.error_activity_not_found, 0).show();
                                return;
                            }
                        default:
                            view2.getClass();
                            view2.setEnabled(false);
                            PushController pushController = (PushController) pushInfoFragment.pushController$delegate.getValue();
                            pushController.getClass();
                            Log.v("PushController.disablePush()", new Object[0]);
                            JobKt.launch$default(pushController.coroutineScope, pushController.coroutineDispatcher, null, new PushController$init$2(pushController, null, 1), 2);
                            break;
                    }
                }
            });
        } else {
            materialTextView.setText(getString(R.string.push_info_notification_explanation_text, ((K9AppNameProvider) ((AppNameProvider) lazy.getValue())).getAppName(), ""));
        }
        ((MaterialButton) view.findViewById(R.id.learnMoreButton)).setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ PushInfoFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i2;
                PushInfoFragment pushInfoFragment = this.f$0;
                switch (i5) {
                    case 0:
                        Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                        intent.putExtra("android.provider.extra.APP_PACKAGE", pushInfoFragment.requireContext().getPackageName());
                        ((NotificationChannelManager) pushInfoFragment.notificationChannelManager$delegate.getValue()).getClass();
                        intent.putExtra("android.provider.extra.CHANNEL_ID", "push");
                        pushInfoFragment.startActivity(intent);
                        break;
                    case 1:
                        try {
                            pushInfoFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://support.mozilla.org/kb/configure-push-email-thunderbird-android")));
                            break;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(pushInfoFragment.requireContext(), R.string.error_activity_not_found, 0).show();
                            return;
                        }
                    default:
                        view2.getClass();
                        view2.setEnabled(false);
                        PushController pushController = (PushController) pushInfoFragment.pushController$delegate.getValue();
                        pushController.getClass();
                        Log.v("PushController.disablePush()", new Object[0]);
                        JobKt.launch$default(pushController.coroutineScope, pushController.coroutineDispatcher, null, new PushController$init$2(pushController, null, 1), 2);
                        break;
                }
            }
        });
        ((MaterialButton) view.findViewById(R.id.disablePushButton)).setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.push.PushInfoFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ PushInfoFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i3;
                PushInfoFragment pushInfoFragment = this.f$0;
                switch (i5) {
                    case 0:
                        Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                        intent.putExtra("android.provider.extra.APP_PACKAGE", pushInfoFragment.requireContext().getPackageName());
                        ((NotificationChannelManager) pushInfoFragment.notificationChannelManager$delegate.getValue()).getClass();
                        intent.putExtra("android.provider.extra.CHANNEL_ID", "push");
                        pushInfoFragment.startActivity(intent);
                        break;
                    case 1:
                        try {
                            pushInfoFragment.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://support.mozilla.org/kb/configure-push-email-thunderbird-android")));
                            break;
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(pushInfoFragment.requireContext(), R.string.error_activity_not_found, 0).show();
                            return;
                        }
                    default:
                        view2.getClass();
                        view2.setEnabled(false);
                        PushController pushController = (PushController) pushInfoFragment.pushController$delegate.getValue();
                        pushController.getClass();
                        Log.v("PushController.disablePush()", new Object[0]);
                        JobKt.launch$default(pushController.coroutineScope, pushController.coroutineDispatcher, null, new PushController$init$2(pushController, null, 1), 2);
                        break;
                }
            }
        });
    }
}
