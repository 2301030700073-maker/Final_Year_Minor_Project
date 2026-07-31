package org.schabi.newpipe.local.subscription;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import kotlin.Function;
import kotlin.Pair;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jsoup.Jsoup;
import org.schabi.newpipe.local.subscription.workers.SubscriptionExportWorker;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportInput;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionsImportExportHelper$requestExportLauncher$1 implements ActivityResultCallback, FunctionAdapter {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SubscriptionsImportExportHelper $tmp0;

    public /* synthetic */ SubscriptionsImportExportHelper$requestExportLauncher$1(SubscriptionsImportExportHelper subscriptionsImportExportHelper, int i) {
        this.$r8$classId = i;
        this.$tmp0 = subscriptionsImportExportHelper;
    }

    public final boolean equals(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
            default:
                if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                    break;
                }
                break;
        }
        return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        switch (this.$r8$classId) {
            case 0:
                return new FunctionReferenceImpl(1, 0, SubscriptionsImportExportHelper.class, this.$tmp0, "requestExportResult", "requestExportResult(Landroidx/activity/result/ActivityResult;)V");
            default:
                return new FunctionReferenceImpl(1, 0, SubscriptionsImportExportHelper.class, this.$tmp0, "requestImportResult", "requestImportResult(Landroidx/activity/result/ActivityResult;)V");
        }
    }

    public final int hashCode() {
        switch (this.$r8$classId) {
        }
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        SubscriptionsImportExportHelper subscriptionsImportExportHelper = this.$tmp0;
        switch (i) {
            case 0:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                Intent intent = activityResult.data;
                Uri data = intent != null ? intent.getData() : null;
                if (data != null && activityResult.resultCode == -1) {
                    SubscriptionExportWorker.Companion companion = SubscriptionExportWorker.Companion;
                    Context context = subscriptionsImportExportHelper.context;
                    companion.getClass();
                    context.getClass();
                    Pair[] pairArr = {new Pair("exportPath", data.toString())};
                    Data.Builder builder = new Data.Builder(0);
                    Pair pair = pairArr[0];
                    builder.put(pair.getSecond(), (String) pair.getFirst());
                    Data m475build = builder.m475build();
                    OneTimeWorkRequest.Builder builder2 = new OneTimeWorkRequest.Builder(0, SubscriptionExportWorker.class);
                    WorkSpec workSpec = builder2.workSpec;
                    workSpec.input = m475build;
                    workSpec.expedited = true;
                    workSpec.outOfQuotaPolicy = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
                    new WorkContinuationImpl(WorkManagerImpl.getInstance$1(context), "exportSubscriptions", ExistingWorkPolicy.APPEND_OR_REPLACE, Jsoup.listOf((OneTimeWorkRequest) builder2.build()), 0).enqueue();
                    break;
                }
                break;
            default:
                ActivityResult activityResult2 = (ActivityResult) obj;
                activityResult2.getClass();
                Intent intent2 = activityResult2.data;
                String dataString = intent2 != null ? intent2.getDataString() : null;
                if (dataString != null && activityResult2.resultCode == -1) {
                    ImportConfirmationDialog.show(subscriptionsImportExportHelper.fragment, new SubscriptionImportInput.PreviousExportMode(dataString));
                    break;
                }
                break;
        }
    }
}
