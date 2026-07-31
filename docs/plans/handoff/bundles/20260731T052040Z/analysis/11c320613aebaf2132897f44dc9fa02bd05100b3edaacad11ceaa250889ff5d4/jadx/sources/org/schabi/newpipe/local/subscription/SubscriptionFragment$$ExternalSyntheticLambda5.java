package org.schabi.newpipe.local.subscription;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import androidx.fragment.app.Fragment;
import androidx.transition.Transition;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.LinkedHashSet;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.jsoup.Jsoup;
import org.schabi.newpipe.extractor.channel.ChannelInfoItem;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportInput;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportWorker;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionFragment$$ExternalSyntheticLambda5 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SubscriptionFragment$$ExternalSyntheticLambda5(Fragment fragment, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = fragment;
        this.f$1 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Triple triple;
        int i2 = this.$r8$classId;
        Object obj = this.f$1;
        Fragment fragment = this.f$0;
        switch (i2) {
            case 0:
                SubscriptionFragment subscriptionFragment = (SubscriptionFragment) fragment;
                ChannelInfoItem channelInfoItem = (ChannelInfoItem) obj;
                SubscriptionFragment.Companion companion = SubscriptionFragment.Companion;
                if (i == 0) {
                    Transition.Impl26.shareText(subscriptionFragment.requireContext(), channelInfoItem.getName(), channelInfoItem.getUrl(), channelInfoItem.getThumbnails());
                    return;
                }
                if (i == 1) {
                    Transition.Impl26.openUrlInBrowser(subscriptionFragment.requireContext(), channelInfoItem.getUrl());
                    return;
                }
                if (i != 2) {
                    return;
                }
                CompositeDisposable compositeDisposable = subscriptionFragment.disposables;
                SubscriptionManager subscriptionManager = subscriptionFragment.subscriptionManager;
                if (subscriptionManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("subscriptionManager");
                    throw null;
                }
                int serviceId = channelInfoItem.getServiceId();
                String url = channelInfoItem.getUrl();
                url.getClass();
                CompletableObserveOn observeOn = new CompletableFromAction(new ExtractorHelper$$ExternalSyntheticLambda4(subscriptionManager, serviceId, url), 1).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
                CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(Functions.ON_ERROR_MISSING, new SubscriptionFragment$$ExternalSyntheticLambda7(subscriptionFragment));
                observeOn.subscribe(callbackCompletableObserver);
                compositeDisposable.add(callbackCompletableObserver);
                return;
            default:
                ImportConfirmationDialog importConfirmationDialog = (ImportConfirmationDialog) fragment;
                Context context = (Context) obj;
                Constraints constraints = new Constraints(new NetworkRequestCompat(null), NetworkType.CONNECTED, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(new LinkedHashSet()) : EmptySet.INSTANCE);
                SubscriptionImportInput subscriptionImportInput = (SubscriptionImportInput) MathKt.getParcelable(importConfirmationDialog.requireArguments(), "input", SubscriptionImportInput.class);
                OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(0, SubscriptionImportWorker.class);
                subscriptionImportInput.getClass();
                if (subscriptionImportInput instanceof SubscriptionImportInput.ChannelUrlMode) {
                    SubscriptionImportInput.ChannelUrlMode channelUrlMode = (SubscriptionImportInput.ChannelUrlMode) subscriptionImportInput;
                    triple = new Triple(0, Integer.valueOf(channelUrlMode.serviceId), channelUrlMode.url);
                } else if (subscriptionImportInput instanceof SubscriptionImportInput.InputStreamMode) {
                    SubscriptionImportInput.InputStreamMode inputStreamMode = (SubscriptionImportInput.InputStreamMode) subscriptionImportInput;
                    triple = new Triple(1, Integer.valueOf(inputStreamMode.serviceId), inputStreamMode.url);
                } else {
                    if (!(subscriptionImportInput instanceof SubscriptionImportInput.PreviousExportMode)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    triple = new Triple(2, null, ((SubscriptionImportInput.PreviousExportMode) subscriptionImportInput).url);
                }
                Pair[] pairArr = {new Pair("mode", Integer.valueOf(((Number) triple.component1()).intValue())), new Pair("service_id", (Integer) triple.component2()), new Pair("url", (String) triple.component3())};
                Data.Builder builder2 = new Data.Builder(0);
                for (int i3 = 0; i3 < 3; i3++) {
                    Pair pair = pairArr[i3];
                    builder2.put(pair.getSecond(), (String) pair.getFirst());
                }
                Data m475build = builder2.m475build();
                WorkSpec workSpec = builder.workSpec;
                workSpec.input = m475build;
                workSpec.expedited = true;
                workSpec.outOfQuotaPolicy = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
                builder.workSpec.constraints = constraints;
                OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) builder.build();
                context.getClass();
                new WorkContinuationImpl(WorkManagerImpl.getInstance$1(context), "SubscriptionImportWorker", ExistingWorkPolicy.APPEND_OR_REPLACE, Jsoup.listOf(oneTimeWorkRequest), 0).enqueue();
                importConfirmationDialog.dismissInternal(false, false);
                return;
        }
    }
}
