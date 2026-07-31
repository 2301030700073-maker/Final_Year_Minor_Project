package androidx.datastore.core;

import com.fsck.k9.sasl.OAuthBearer;
import java.io.File;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileStorageKt$runFileDiagnosticsIfNotCorruption$1 extends ContinuationImpl {
    public File L$0;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return OAuthBearer.access$runFileDiagnosticsIfNotCorruption(null, null, this);
    }
}
