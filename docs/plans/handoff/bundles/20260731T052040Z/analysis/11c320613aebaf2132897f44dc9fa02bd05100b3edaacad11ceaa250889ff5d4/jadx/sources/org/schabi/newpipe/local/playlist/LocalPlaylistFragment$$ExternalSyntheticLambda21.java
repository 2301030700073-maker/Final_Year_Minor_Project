package org.schabi.newpipe.local.playlist;

import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.analytics.DefaultAnalyticsCollector;
import com.google.android.exoplayer2.util.ListenerSet;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistFragment$$ExternalSyntheticLambda21 implements ListenerSet.Event, Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda21(int i, Object obj, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        LocalPlaylistFragment localPlaylistFragment = (LocalPlaylistFragment) this.f$0;
        int i = LocalPlaylistFragment.$r8$clinit;
        localPlaylistFragment.showError(new ErrorInfo((Throwable) obj, UserAction.REQUESTED_BOOKMARK, "Removing watched videos, partially watched=" + this.f$1));
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                ((AnalyticsListener) obj).onSkipSilenceEnabledChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 2:
                ((AnalyticsListener) obj).onIsPlayingChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            case 3:
                ((AnalyticsListener) obj).onShuffleModeChanged((AnalyticsListener.EventTime) this.f$0, this.f$1);
                break;
            default:
                DefaultAnalyticsCollector.lambda$onIsLoadingChanged$32((AnalyticsListener.EventTime) this.f$0, this.f$1, (AnalyticsListener) obj);
                break;
        }
    }
}
