package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.ViewModelStoreProvider;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewModelStoreProvider$$ExternalSyntheticLambda1 implements AutoCloseable {
    public final /* synthetic */ ViewModelStoreProvider.Entry f$0;
    public final /* synthetic */ ViewModelStoreProvider f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ViewModelStoreProvider$$ExternalSyntheticLambda1(ViewModelStoreProvider.Entry entry, ViewModelStoreProvider viewModelStoreProvider, Object obj) {
        this.f$0 = entry;
        this.f$1 = viewModelStoreProvider;
        this.f$2 = obj;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ViewModelStoreProvider.Entry entry = this.f$0;
        int i = entry.refCount - 1;
        entry.refCount = i;
        if (!entry.isDisposable || i > 0) {
            return;
        }
        this.f$1.getStateHolder().remove(this.f$2);
    }
}
