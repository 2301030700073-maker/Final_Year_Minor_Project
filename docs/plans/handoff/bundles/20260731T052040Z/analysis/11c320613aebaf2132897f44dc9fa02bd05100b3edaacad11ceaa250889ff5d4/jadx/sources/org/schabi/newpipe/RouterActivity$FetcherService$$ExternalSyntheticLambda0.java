package org.schabi.newpipe;

import android.content.ComponentCallbacks;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.download.LoadingDialog;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$FetcherService$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentCallbacks f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ RouterActivity$FetcherService$$ExternalSyntheticLambda0(ComponentCallbacks componentCallbacks, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = componentCallbacks;
        this.f$1 = obj;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$1;
        ComponentCallbacks componentCallbacks = this.f$0;
        switch (i) {
            case 0:
                int i2 = RouterActivity.FetcherService.$r8$clinit;
                ((DownloaderImpl$$ExternalSyntheticLambda3) obj2).s((Info) obj);
                ConsumerSingleObserver consumerSingleObserver = ((RouterActivity.FetcherService) componentCallbacks).fetcher;
                if (consumerSingleObserver != null) {
                    DisposableHelper.dispose(consumerSingleObserver);
                    break;
                }
                break;
            case 1:
                ((RouterActivity.PersistentFragment) componentCallbacks).runOnVisible(new DownloaderImpl$$ExternalSyntheticLambda3((LoadingDialog) obj2, (StreamInfo) obj, 7));
                break;
            default:
                ((RouterActivity.PersistentFragment) componentCallbacks).runOnVisible(new DownloaderImpl$$ExternalSyntheticLambda3((Throwable) obj, (String) obj2, 4));
                break;
        }
    }
}
