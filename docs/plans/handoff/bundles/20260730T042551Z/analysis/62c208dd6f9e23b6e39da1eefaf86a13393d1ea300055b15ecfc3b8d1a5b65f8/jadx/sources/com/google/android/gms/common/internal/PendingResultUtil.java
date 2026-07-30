package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import defpackage.FG;
import defpackage.GG;

@KeepForSdk
/* loaded from: classes.dex */
public class PendingResultUtil {
    private static final zas zaa = new zao();

    @KeepForSdk
    public interface ResultConverter<R extends Result, T> {
        @KeepForSdk
        T convert(R r);
    }

    @KeepForSdk
    public static <R extends Result, T extends Response<R>> FG<T> toResponseTask(PendingResult<R> pendingResult, T t) {
        return toTask(pendingResult, new zaq(t));
    }

    @KeepForSdk
    public static <R extends Result, T> FG<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zas zasVar = zaa;
        GG gg = new GG();
        pendingResult.addStatusListener(new zap(pendingResult, gg, resultConverter, zasVar));
        return gg.f1160do;
    }

    @KeepForSdk
    public static <R extends Result> FG<Void> toVoidTask(PendingResult<R> pendingResult) {
        return toTask(pendingResult, new zar());
    }
}
