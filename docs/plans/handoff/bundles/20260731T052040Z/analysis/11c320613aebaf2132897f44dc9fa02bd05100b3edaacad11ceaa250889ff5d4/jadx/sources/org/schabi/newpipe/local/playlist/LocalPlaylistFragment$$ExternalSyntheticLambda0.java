package org.schabi.newpipe.local.playlist;

import android.util.Pair;
import android.widget.Toast;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.connection.RealConnectionPool;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistFragment$$ExternalSyntheticLambda0 implements Action, Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.REQUESTED_BOOKMARK;
        Object obj2 = this.f$0;
        switch (i) {
            case 1:
                int i2 = LocalPlaylistFragment.$r8$clinit;
                ((LocalPlaylistFragment) obj2).showError(new ErrorInfo((Throwable) obj, userAction, "Renaming playlist"));
                break;
            case 2:
                LocalPlaylistFragment localPlaylistFragment = (LocalPlaylistFragment) obj2;
                int i3 = LocalPlaylistFragment.$r8$clinit;
                localPlaylistFragment.itemListAdapter.clearStreamItemList();
                localPlaylistFragment.itemListAdapter.addItems((List) obj);
                localPlaylistFragment.setStreamCountAndOverallDuration(localPlaylistFragment.itemListAdapter.localItems);
                localPlaylistFragment.debounceSaver.setHasChangesToSave();
                localPlaylistFragment.saveImmediate();
                localPlaylistFragment.hideLoading();
                localPlaylistFragment.isRewritingPlaylist = false;
                break;
            case 3:
                int i4 = LocalPlaylistFragment.$r8$clinit;
                ((LocalPlaylistFragment) obj2).showError(new ErrorInfo((Throwable) obj, userAction, "Removing duplicated streams"));
                break;
            case 4:
                int i5 = LocalPlaylistFragment.$r8$clinit;
                ErrorUtil.showUiErrorSnackbar((LocalPlaylistFragment) obj2, "Sharing playlist", (Throwable) obj);
                break;
            case 5:
                int i6 = LocalPlaylistFragment.$r8$clinit;
                ((LocalPlaylistFragment) obj2).showError(new ErrorInfo((Throwable) obj, userAction, "Saving playlist"));
                break;
            case 6:
                LocalPlaylistFragment localPlaylistFragment2 = (LocalPlaylistFragment) obj2;
                Pair pair = (Pair) obj;
                int i7 = LocalPlaylistFragment.$r8$clinit;
                List list = (List) pair.first;
                boolean booleanValue = ((Boolean) pair.second).booleanValue();
                localPlaylistFragment2.itemListAdapter.clearStreamItemList();
                localPlaylistFragment2.itemListAdapter.addItems(list);
                localPlaylistFragment2.debounceSaver.setHasChangesToSave();
                localPlaylistFragment2.saveImmediate();
                if (booleanValue) {
                    localPlaylistFragment2.updateThumbnailUrl();
                }
                long size = localPlaylistFragment2.itemListAdapter.localItems.size();
                localPlaylistFragment2.setStreamCountAndOverallDuration(localPlaylistFragment2.itemListAdapter.localItems);
                if (size == 0) {
                    localPlaylistFragment2.showEmptyState();
                }
                localPlaylistFragment2.hideLoading();
                localPlaylistFragment2.isRewritingPlaylist = false;
                break;
            case 7:
                int i8 = LocalPlaylistFragment.$r8$clinit;
                ((LocalPlaylistFragment) obj2).showError(new ErrorInfo((Throwable) obj, userAction, "Changing playlist thumbnail"));
                break;
            default:
                int i9 = LocalPlaylistFragment.$r8$clinit;
                ((Toast) obj2).show();
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        RealConnectionPool realConnectionPool = ((LocalPlaylistFragment) this.f$0).debounceSaver;
        if (realConnectionPool != null) {
            ((AtomicBoolean) realConnectionPool.connections).set(false);
        }
    }
}
