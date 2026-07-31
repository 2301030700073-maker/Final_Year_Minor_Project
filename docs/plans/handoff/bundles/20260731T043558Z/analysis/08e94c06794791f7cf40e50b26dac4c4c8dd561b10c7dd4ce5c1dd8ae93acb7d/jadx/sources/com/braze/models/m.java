package com.braze.models;

import com.braze.support.DateTimeUtils;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class m implements IPutIntoJson {

    /* renamed from: a, reason: collision with root package name */
    public final String f159a;
    public final long b;

    public m(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        long nowInMilliseconds = DateTimeUtils.nowInMilliseconds();
        Intrinsics.checkNotNullParameter(log, "log");
        this.f159a = log;
        this.b = nowInMilliseconds;
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final Object getJsonKey() {
        return new JSONObject().put("log", this.f159a).put("time", this.b);
    }
}
