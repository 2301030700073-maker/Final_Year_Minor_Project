package com.braze.models.outgoing.event.push;

import com.braze.Constants;
import com.braze.enums.e;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class a extends com.braze.models.outgoing.event.b {
    public static final /* synthetic */ int j = 0;
    public final boolean i;

    public a(JSONObject jSONObject, String str) {
        super(e.i, jSONObject, 0.0d, 12);
        this.i = Intrinsics.areEqual(str, Constants.BRAZE_PUSH_ACTION_TYPE_NONE);
    }
}
