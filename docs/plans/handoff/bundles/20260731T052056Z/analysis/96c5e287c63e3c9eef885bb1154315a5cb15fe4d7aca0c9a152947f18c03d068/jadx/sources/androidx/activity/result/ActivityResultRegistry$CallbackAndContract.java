package androidx.activity.result;

import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityResultRegistry$CallbackAndContract {
    public final ActivityResultCallback callback;
    public final ExceptionsKt contract;

    public ActivityResultRegistry$CallbackAndContract(ActivityResultCallback activityResultCallback, ExceptionsKt exceptionsKt) {
        this.callback = activityResultCallback;
        this.contract = exceptionsKt;
    }
}
