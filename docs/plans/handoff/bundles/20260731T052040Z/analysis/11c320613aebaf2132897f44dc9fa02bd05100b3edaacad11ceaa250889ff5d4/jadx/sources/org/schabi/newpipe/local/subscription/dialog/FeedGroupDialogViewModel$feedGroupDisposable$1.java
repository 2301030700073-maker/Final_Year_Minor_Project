package org.schabi.newpipe.local.subscription.dialog;

import androidx.lifecycle.MutableLiveData;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Pair;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedGroupDialogViewModel$feedGroupDisposable$1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableLiveData $tmp0;

    public /* synthetic */ FeedGroupDialogViewModel$feedGroupDisposable$1(MutableLiveData mutableLiveData, int i) {
        this.$r8$classId = i;
        this.$tmp0 = mutableLiveData;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        MutableLiveData mutableLiveData = this.$tmp0;
        switch (i) {
            case 0:
                mutableLiveData.postValue((FeedGroupEntity) obj);
                break;
            case 1:
                mutableLiveData.postValue((Pair) obj);
                break;
            default:
                mutableLiveData.postValue((List) obj);
                break;
        }
    }
}
