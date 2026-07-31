package org.schabi.newpipe;

import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$PersistentFragment$$ExternalSyntheticLambda4 implements Consumer {
    public final /* synthetic */ RouterActivity.PersistentFragment f$0;

    public /* synthetic */ RouterActivity$PersistentFragment$$ExternalSyntheticLambda4(RouterActivity.PersistentFragment persistentFragment) {
        this.f$0 = persistentFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        RouterActivity.PersistentFragment persistentFragment = this.f$0;
        persistentFragment.getActivityContext().ifPresent(new DownloaderImpl$$ExternalSyntheticLambda3(persistentFragment, (StreamInfo) obj, 5));
    }
}
