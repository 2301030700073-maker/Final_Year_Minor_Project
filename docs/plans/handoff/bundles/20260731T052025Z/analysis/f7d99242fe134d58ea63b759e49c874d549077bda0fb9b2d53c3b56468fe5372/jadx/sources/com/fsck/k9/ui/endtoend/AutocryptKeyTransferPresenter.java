package com.fsck.k9.ui.endtoend;

import android.R;
import android.app.PendingIntent;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.Preferences;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import com.fsck.k9.ui.endtoend.AutocryptSetupTransferResult;
import com.fsck.k9.view.StatusIndicator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.OpenPgpApiManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutocryptKeyTransferPresenter {
    public LegacyAccountDto account;
    public final OpenPgpApiManager openPgpApiManager;
    public final Preferences preferences;
    public final CoroutineScope presenterScope;
    public PendingIntent showTransferCodePi;
    public final AutocryptKeyTransferActivity view;
    public final AutocryptKeyTransferViewModel viewModel;

    public AutocryptKeyTransferPresenter(LifecycleOwner lifecycleOwner, OpenPgpApiManager openPgpApiManager, Preferences preferences, AutocryptKeyTransferViewModel autocryptKeyTransferViewModel, AutocryptKeyTransferActivity autocryptKeyTransferActivity) {
        ContextScope MainScope = JobKt.MainScope();
        lifecycleOwner.getClass();
        autocryptKeyTransferActivity.getClass();
        this.openPgpApiManager = openPgpApiManager;
        this.preferences = preferences;
        this.viewModel = autocryptKeyTransferViewModel;
        this.view = autocryptKeyTransferActivity;
        this.presenterScope = MainScope;
        final int i = 0;
        autocryptKeyTransferViewModel.autocryptSetupMessageLiveEvent.observe(lifecycleOwner, new BaseActivity$sam$androidx_lifecycle_Observer$0(4, new Function1(this) { // from class: com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0
            public final /* synthetic */ AutocryptKeyTransferPresenter f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                StatusIndicator.Status status = StatusIndicator.Status.OK;
                AutocryptKeyTransferPresenter autocryptKeyTransferPresenter = this.f$0;
                switch (i2) {
                    case 0:
                        AutocryptSetupMessage autocryptSetupMessage = (AutocryptSetupMessage) obj;
                        if (autocryptSetupMessage != null) {
                            AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter.view;
                            StatusIndicator statusIndicator = autocryptKeyTransferActivity2.transferProgressGenerating;
                            Continuation continuation = null;
                            if (statusIndicator == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                                throw null;
                            }
                            statusIndicator.setDisplayedChild(status);
                            StatusIndicator statusIndicator2 = autocryptKeyTransferActivity2.transferProgressSending;
                            if (statusIndicator2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                                throw null;
                            }
                            statusIndicator2.setDisplayedChild(StatusIndicator.Status.PROGRESS);
                            autocryptKeyTransferActivity2.sceneGeneratingAndSending();
                            AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent = autocryptKeyTransferPresenter.viewModel.autocryptSetupTransferLiveEvent;
                            LegacyAccountDto legacyAccountDto = autocryptKeyTransferPresenter.account;
                            if (legacyAccountDto == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            autocryptSetupTransferLiveEvent.getClass();
                            JobKt.launch$default(autocryptSetupTransferLiveEvent.eventScope, null, null, new NavHostKt$NavHost$25$1(autocryptSetupTransferLiveEvent, autocryptSetupMessage, legacyAccountDto, continuation, 18), 3);
                        }
                        return unit;
                    default:
                        AutocryptSetupTransferResult autocryptSetupTransferResult = (AutocryptSetupTransferResult) obj;
                        AutocryptKeyTransferActivity autocryptKeyTransferActivity3 = autocryptKeyTransferPresenter.view;
                        if (autocryptSetupTransferResult == null) {
                            View view = autocryptKeyTransferActivity3.transferSendButton;
                            if (view == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                                throw null;
                            }
                            view.setVisibility(0);
                            View view2 = autocryptKeyTransferActivity3.transferMsgInfo;
                            if (view2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                                throw null;
                            }
                            view2.setVisibility(0);
                            View view3 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                            if (view3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                                throw null;
                            }
                            view3.setVisibility(8);
                            View view4 = autocryptKeyTransferActivity3.transferLayoutSending;
                            if (view4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                                throw null;
                            }
                            view4.setVisibility(8);
                            View view5 = autocryptKeyTransferActivity3.transferLayoutFinish;
                            if (view5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                                throw null;
                            }
                            view5.setVisibility(8);
                            View view6 = autocryptKeyTransferActivity3.transferErrorSend;
                            if (view6 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                                throw null;
                            }
                            view6.setVisibility(8);
                            View view7 = autocryptKeyTransferActivity3.transferButtonShowCode;
                            if (view7 != null) {
                                view7.setVisibility(8);
                                return unit;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                            throw null;
                        }
                        if (autocryptSetupTransferResult instanceof AutocryptSetupTransferResult.Success) {
                            autocryptKeyTransferPresenter.showTransferCodePi = ((AutocryptSetupTransferResult.Success) autocryptSetupTransferResult).showTransferCodePi;
                            StatusIndicator statusIndicator3 = autocryptKeyTransferActivity3.transferProgressGenerating;
                            if (statusIndicator3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                                throw null;
                            }
                            statusIndicator3.setDisplayedChild(status);
                            StatusIndicator statusIndicator4 = autocryptKeyTransferActivity3.transferProgressSending;
                            if (statusIndicator4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                                throw null;
                            }
                            statusIndicator4.setDisplayedChild(status);
                            View view8 = autocryptKeyTransferActivity3.transferSendButton;
                            if (view8 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                                throw null;
                            }
                            view8.setVisibility(8);
                            View view9 = autocryptKeyTransferActivity3.transferMsgInfo;
                            if (view9 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                                throw null;
                            }
                            view9.setVisibility(8);
                            View view10 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                            if (view10 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                                throw null;
                            }
                            view10.setVisibility(0);
                            View view11 = autocryptKeyTransferActivity3.transferLayoutSending;
                            if (view11 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                                throw null;
                            }
                            view11.setVisibility(0);
                            View view12 = autocryptKeyTransferActivity3.transferLayoutFinish;
                            if (view12 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                                throw null;
                            }
                            view12.setVisibility(0);
                            View view13 = autocryptKeyTransferActivity3.transferErrorSend;
                            if (view13 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                                throw null;
                            }
                            view13.setVisibility(8);
                            View view14 = autocryptKeyTransferActivity3.transferButtonShowCode;
                            if (view14 != null) {
                                view14.setVisibility(0);
                                return unit;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                            throw null;
                        }
                        if (!(autocryptSetupTransferResult instanceof AutocryptSetupTransferResult.Failure)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        Log.e(((AutocryptSetupTransferResult.Failure) autocryptSetupTransferResult).exception, "Error sending setup message", new Object[0]);
                        StatusIndicator statusIndicator5 = autocryptKeyTransferActivity3.transferProgressGenerating;
                        if (statusIndicator5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                            throw null;
                        }
                        statusIndicator5.setDisplayedChild(status);
                        StatusIndicator statusIndicator6 = autocryptKeyTransferActivity3.transferProgressSending;
                        if (statusIndicator6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                            throw null;
                        }
                        statusIndicator6.setDisplayedChild(StatusIndicator.Status.ERROR);
                        TransitionManager.beginDelayedTransition((ViewGroup) autocryptKeyTransferActivity3.findViewById(R.id.content), TransitionInflater.from(autocryptKeyTransferActivity3).inflateTransition(com.fsck.k9.R.transition.transfer_transitions));
                        View view15 = autocryptKeyTransferActivity3.transferSendButton;
                        if (view15 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                            throw null;
                        }
                        view15.setVisibility(8);
                        View view16 = autocryptKeyTransferActivity3.transferMsgInfo;
                        if (view16 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                            throw null;
                        }
                        view16.setVisibility(8);
                        View view17 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                        if (view17 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                            throw null;
                        }
                        view17.setVisibility(0);
                        View view18 = autocryptKeyTransferActivity3.transferLayoutSending;
                        if (view18 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                            throw null;
                        }
                        view18.setVisibility(0);
                        View view19 = autocryptKeyTransferActivity3.transferLayoutFinish;
                        if (view19 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                            throw null;
                        }
                        view19.setVisibility(8);
                        View view20 = autocryptKeyTransferActivity3.transferErrorSend;
                        if (view20 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                            throw null;
                        }
                        view20.setVisibility(0);
                        View view21 = autocryptKeyTransferActivity3.transferButtonShowCode;
                        if (view21 != null) {
                            view21.setVisibility(8);
                            return unit;
                        }
                        Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                        throw null;
                }
            }
        }));
        AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent = autocryptKeyTransferViewModel.autocryptSetupTransferLiveEvent;
        final int i2 = 1;
        autocryptSetupTransferLiveEvent.observe(lifecycleOwner, new BaseActivity$sam$androidx_lifecycle_Observer$0(4, new Function1(this) { // from class: com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter$$ExternalSyntheticLambda0
            public final /* synthetic */ AutocryptKeyTransferPresenter f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                StatusIndicator.Status status = StatusIndicator.Status.OK;
                AutocryptKeyTransferPresenter autocryptKeyTransferPresenter = this.f$0;
                switch (i22) {
                    case 0:
                        AutocryptSetupMessage autocryptSetupMessage = (AutocryptSetupMessage) obj;
                        if (autocryptSetupMessage != null) {
                            AutocryptKeyTransferActivity autocryptKeyTransferActivity2 = autocryptKeyTransferPresenter.view;
                            StatusIndicator statusIndicator = autocryptKeyTransferActivity2.transferProgressGenerating;
                            Continuation continuation = null;
                            if (statusIndicator == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                                throw null;
                            }
                            statusIndicator.setDisplayedChild(status);
                            StatusIndicator statusIndicator2 = autocryptKeyTransferActivity2.transferProgressSending;
                            if (statusIndicator2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                                throw null;
                            }
                            statusIndicator2.setDisplayedChild(StatusIndicator.Status.PROGRESS);
                            autocryptKeyTransferActivity2.sceneGeneratingAndSending();
                            AutocryptSetupTransferLiveEvent autocryptSetupTransferLiveEvent2 = autocryptKeyTransferPresenter.viewModel.autocryptSetupTransferLiveEvent;
                            LegacyAccountDto legacyAccountDto = autocryptKeyTransferPresenter.account;
                            if (legacyAccountDto == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("account");
                                throw null;
                            }
                            autocryptSetupTransferLiveEvent2.getClass();
                            JobKt.launch$default(autocryptSetupTransferLiveEvent2.eventScope, null, null, new NavHostKt$NavHost$25$1(autocryptSetupTransferLiveEvent2, autocryptSetupMessage, legacyAccountDto, continuation, 18), 3);
                        }
                        return unit;
                    default:
                        AutocryptSetupTransferResult autocryptSetupTransferResult = (AutocryptSetupTransferResult) obj;
                        AutocryptKeyTransferActivity autocryptKeyTransferActivity3 = autocryptKeyTransferPresenter.view;
                        if (autocryptSetupTransferResult == null) {
                            View view = autocryptKeyTransferActivity3.transferSendButton;
                            if (view == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                                throw null;
                            }
                            view.setVisibility(0);
                            View view2 = autocryptKeyTransferActivity3.transferMsgInfo;
                            if (view2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                                throw null;
                            }
                            view2.setVisibility(0);
                            View view3 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                            if (view3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                                throw null;
                            }
                            view3.setVisibility(8);
                            View view4 = autocryptKeyTransferActivity3.transferLayoutSending;
                            if (view4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                                throw null;
                            }
                            view4.setVisibility(8);
                            View view5 = autocryptKeyTransferActivity3.transferLayoutFinish;
                            if (view5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                                throw null;
                            }
                            view5.setVisibility(8);
                            View view6 = autocryptKeyTransferActivity3.transferErrorSend;
                            if (view6 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                                throw null;
                            }
                            view6.setVisibility(8);
                            View view7 = autocryptKeyTransferActivity3.transferButtonShowCode;
                            if (view7 != null) {
                                view7.setVisibility(8);
                                return unit;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                            throw null;
                        }
                        if (autocryptSetupTransferResult instanceof AutocryptSetupTransferResult.Success) {
                            autocryptKeyTransferPresenter.showTransferCodePi = ((AutocryptSetupTransferResult.Success) autocryptSetupTransferResult).showTransferCodePi;
                            StatusIndicator statusIndicator3 = autocryptKeyTransferActivity3.transferProgressGenerating;
                            if (statusIndicator3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                                throw null;
                            }
                            statusIndicator3.setDisplayedChild(status);
                            StatusIndicator statusIndicator4 = autocryptKeyTransferActivity3.transferProgressSending;
                            if (statusIndicator4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                                throw null;
                            }
                            statusIndicator4.setDisplayedChild(status);
                            View view8 = autocryptKeyTransferActivity3.transferSendButton;
                            if (view8 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                                throw null;
                            }
                            view8.setVisibility(8);
                            View view9 = autocryptKeyTransferActivity3.transferMsgInfo;
                            if (view9 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                                throw null;
                            }
                            view9.setVisibility(8);
                            View view10 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                            if (view10 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                                throw null;
                            }
                            view10.setVisibility(0);
                            View view11 = autocryptKeyTransferActivity3.transferLayoutSending;
                            if (view11 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                                throw null;
                            }
                            view11.setVisibility(0);
                            View view12 = autocryptKeyTransferActivity3.transferLayoutFinish;
                            if (view12 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                                throw null;
                            }
                            view12.setVisibility(0);
                            View view13 = autocryptKeyTransferActivity3.transferErrorSend;
                            if (view13 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                                throw null;
                            }
                            view13.setVisibility(8);
                            View view14 = autocryptKeyTransferActivity3.transferButtonShowCode;
                            if (view14 != null) {
                                view14.setVisibility(0);
                                return unit;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                            throw null;
                        }
                        if (!(autocryptSetupTransferResult instanceof AutocryptSetupTransferResult.Failure)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        Log.e(((AutocryptSetupTransferResult.Failure) autocryptSetupTransferResult).exception, "Error sending setup message", new Object[0]);
                        StatusIndicator statusIndicator5 = autocryptKeyTransferActivity3.transferProgressGenerating;
                        if (statusIndicator5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferProgressGenerating");
                            throw null;
                        }
                        statusIndicator5.setDisplayedChild(status);
                        StatusIndicator statusIndicator6 = autocryptKeyTransferActivity3.transferProgressSending;
                        if (statusIndicator6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferProgressSending");
                            throw null;
                        }
                        statusIndicator6.setDisplayedChild(StatusIndicator.Status.ERROR);
                        TransitionManager.beginDelayedTransition((ViewGroup) autocryptKeyTransferActivity3.findViewById(R.id.content), TransitionInflater.from(autocryptKeyTransferActivity3).inflateTransition(com.fsck.k9.R.transition.transfer_transitions));
                        View view15 = autocryptKeyTransferActivity3.transferSendButton;
                        if (view15 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferSendButton");
                            throw null;
                        }
                        view15.setVisibility(8);
                        View view16 = autocryptKeyTransferActivity3.transferMsgInfo;
                        if (view16 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferMsgInfo");
                            throw null;
                        }
                        view16.setVisibility(8);
                        View view17 = autocryptKeyTransferActivity3.transferLayoutGenerating;
                        if (view17 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutGenerating");
                            throw null;
                        }
                        view17.setVisibility(0);
                        View view18 = autocryptKeyTransferActivity3.transferLayoutSending;
                        if (view18 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutSending");
                            throw null;
                        }
                        view18.setVisibility(0);
                        View view19 = autocryptKeyTransferActivity3.transferLayoutFinish;
                        if (view19 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferLayoutFinish");
                            throw null;
                        }
                        view19.setVisibility(8);
                        View view20 = autocryptKeyTransferActivity3.transferErrorSend;
                        if (view20 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("transferErrorSend");
                            throw null;
                        }
                        view20.setVisibility(0);
                        View view21 = autocryptKeyTransferActivity3.transferButtonShowCode;
                        if (view21 != null) {
                            view21.setVisibility(8);
                            return unit;
                        }
                        Intrinsics.throwUninitializedPropertyAccessException("transferButtonShowCode");
                        throw null;
                }
            }
        }));
    }
}
