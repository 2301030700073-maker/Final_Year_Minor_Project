package androidx.window.core;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ValidSpecification extends BuildConfig {
    public final AndroidLogger logger;
    public final Object value;
    public final VerificationMode verificationMode;

    public ValidSpecification(Object obj, VerificationMode verificationMode, AndroidLogger androidLogger) {
        obj.getClass();
        verificationMode.getClass();
        this.value = obj;
        this.verificationMode = verificationMode;
        this.logger = androidLogger;
    }

    @Override // androidx.window.core.BuildConfig
    public final Object compute() {
        return this.value;
    }

    @Override // androidx.window.core.BuildConfig
    public final BuildConfig require(String str, Function1 function1) {
        Object obj = this.value;
        return ((Boolean) function1.invoke(obj)).booleanValue() ? this : new FailedSpecification(obj, str, this.logger, this.verificationMode);
    }
}
