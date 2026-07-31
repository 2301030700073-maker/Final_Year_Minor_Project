package org.schabi.newpipe.local.bookmark;

import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.connection.RealConnectionPool;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BookmarkFragment$$ExternalSyntheticLambda0 implements Action, Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BookmarkFragment f$0;

    public /* synthetic */ BookmarkFragment$$ExternalSyntheticLambda0(BookmarkFragment bookmarkFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = bookmarkFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.REQUESTED_BOOKMARK;
        BookmarkFragment bookmarkFragment = this.f$0;
        Throwable th = (Throwable) obj;
        switch (i) {
            case 1:
                int i2 = BookmarkFragment.$r8$clinit;
                bookmarkFragment.showError(new ErrorInfo(th, userAction, "Saving playlist"));
                break;
            default:
                int i3 = BookmarkFragment.$r8$clinit;
                bookmarkFragment.showError(new ErrorInfo(th, userAction, "Changing playlist name"));
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        RealConnectionPool realConnectionPool = this.f$0.debounceSaver;
        if (realConnectionPool != null) {
            ((AtomicBoolean) realConnectionPool.connections).set(false);
        }
    }
}
