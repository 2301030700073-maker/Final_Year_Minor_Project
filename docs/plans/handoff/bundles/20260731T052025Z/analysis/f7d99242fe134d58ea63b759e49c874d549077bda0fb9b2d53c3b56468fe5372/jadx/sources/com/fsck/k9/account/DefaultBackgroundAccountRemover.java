package com.fsck.k9.account;

import android.content.Context;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultBackgroundAccountRemover {
    public final Context context;

    public DefaultBackgroundAccountRemover(Context context) {
        this.context = context;
    }

    public final void removeAccountAsync(String str) {
        str.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("accountUuid", str);
        Data data = new Data(linkedHashMap);
        Data.Companion.toByteArrayInternalV1(data);
        OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(AccountRemoverWorker.class);
        WorkSpec workSpec = (WorkSpec) builder.workSpec;
        workSpec.expedited = true;
        workSpec.outOfQuotaPolicy = OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
        workSpec.input = data;
        OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) builder.build();
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(this.context);
        instance$1.getClass();
        instance$1.enqueue(oneTimeWorkRequest);
    }
}
