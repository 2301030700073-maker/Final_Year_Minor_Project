package org.koin.core.instance;

import com.fsck.k9.mailstore.LocalStore;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleInstanceFactory extends InstanceFactory {
    public volatile Object value;

    @Override // org.koin.core.instance.InstanceFactory
    public final Object create(LocalStore.AnonymousClass7 anonymousClass7) {
        if (this.value == null) {
            return super.create(anonymousClass7);
        }
        Object obj = this.value;
        if (obj != null) {
            return obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Single instance created couldn't return value");
        return null;
    }

    @Override // org.koin.core.instance.InstanceFactory
    public final Object get(LocalStore.AnonymousClass7 anonymousClass7) {
        if (this.value == null) {
            synchronized (this) {
                if (!(this.value != null)) {
                    this.value = create(anonymousClass7);
                }
            }
        }
        Object obj = this.value;
        if (obj != null) {
            return obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Single instance created couldn't return value");
        return null;
    }
}
