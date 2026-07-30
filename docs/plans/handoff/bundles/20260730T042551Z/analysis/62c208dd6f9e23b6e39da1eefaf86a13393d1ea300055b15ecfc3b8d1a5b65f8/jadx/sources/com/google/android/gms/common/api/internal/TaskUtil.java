package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import defpackage.FG;
import defpackage.GG;

@KeepForSdk
/* loaded from: classes.dex */
public class TaskUtil {
    @KeepForSdk
    public static void setResultOrApiException(Status status, GG<Void> gg) {
        setResultOrApiException(status, null, gg);
    }

    @KeepForSdk
    @Deprecated
    public static FG<Void> toVoidTaskThatFailsOnFalse(FG<Boolean> fg) {
        return fg.mo595else(new zacx());
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static <ResultT> boolean trySetResultOrApiException(Status status, ResultT resultt, GG<ResultT> gg) {
        return status.isSuccess() ? gg.m722new(resultt) : gg.m720for(ApiExceptionUtil.fromStatus(status));
    }

    @KeepForSdk
    public static <ResultT> void setResultOrApiException(Status status, ResultT resultt, GG<ResultT> gg) {
        if (status.isSuccess()) {
            gg.m721if(resultt);
        } else {
            gg.m719do(ApiExceptionUtil.fromStatus(status));
        }
    }
}
