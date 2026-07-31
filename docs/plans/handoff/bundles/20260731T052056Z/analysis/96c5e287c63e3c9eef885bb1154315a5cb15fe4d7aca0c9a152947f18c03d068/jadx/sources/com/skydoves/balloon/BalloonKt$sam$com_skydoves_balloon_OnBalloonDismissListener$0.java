package com.skydoves.balloon;

import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0 implements FunctionAdapter {
    public final /* synthetic */ Function0 function;

    public BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0(Function0 function0) {
        this.function = function0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return this.function.equals(((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return this.function.hashCode();
    }
}
