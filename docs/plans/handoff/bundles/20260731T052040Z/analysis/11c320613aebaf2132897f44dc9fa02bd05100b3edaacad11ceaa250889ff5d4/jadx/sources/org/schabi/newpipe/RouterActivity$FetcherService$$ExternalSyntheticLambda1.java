package org.schabi.newpipe;

import android.content.ComponentCallbacks;
import io.reactivex.rxjava3.functions.Consumer;
import java.io.Serializable;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.download.LoadingDialog;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$FetcherService$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentCallbacks f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Serializable f$2;

    public /* synthetic */ RouterActivity$FetcherService$$ExternalSyntheticLambda1(ComponentCallbacks componentCallbacks, Object obj, Serializable serializable, int i) {
        this.$r8$classId = i;
        this.f$0 = componentCallbacks;
        this.f$1 = obj;
        this.f$2 = serializable;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Serializable serializable = this.f$2;
        Object obj2 = this.f$1;
        ComponentCallbacks componentCallbacks = this.f$0;
        switch (i) {
            case 0:
                RouterActivity.Choice choice = (RouterActivity.Choice) serializable;
                Throwable th = (Throwable) obj;
                int i2 = RouterActivity.FetcherService.$r8$clinit;
                RouterActivity.handleError((RouterActivity.FetcherService) componentCallbacks, new ErrorInfo(th, (UserAction) obj2, choice.url + " opened with " + choice.playerChoice, Integer.valueOf(choice.serviceId), choice.url));
                break;
            default:
                ((RouterActivity.PersistentFragment) componentCallbacks).runOnVisible(new DownloaderImpl$$ExternalSyntheticLambda3((LoadingDialog) obj2, (String) serializable, 6));
                break;
        }
    }
}
