package androidx.loader.content;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import androidx.appcompat.widget.SuggestionsAdapter;
import com.fsck.k9.activity.compose.RecipientLoader;
import kotlin.Unit;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Loader$ForceLoadContentObserver extends ContentObserver {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Loader$ForceLoadContentObserver(RecipientLoader recipientLoader) {
        super(new Handler());
        this.this$0 = recipientLoader;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.$r8$classId) {
            case 0:
                return true;
            case 1:
            default:
                return super.deliverSelfNotifications();
            case 2:
                return true;
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Cursor cursor;
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                RecipientLoader recipientLoader = (RecipientLoader) obj;
                if (!recipientLoader.mStarted) {
                    recipientLoader.mContentChanged = true;
                    break;
                } else {
                    recipientLoader.forceLoad();
                    break;
                }
            case 1:
            default:
                super.onChange(z);
                break;
            case 2:
                SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) obj;
                if (suggestionsAdapter.mAutoRequery && (cursor = suggestionsAdapter.mCursor) != null && !cursor.isClosed()) {
                    suggestionsAdapter.mDataValid = suggestionsAdapter.mCursor.requery();
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Loader$ForceLoadContentObserver(BufferedChannel bufferedChannel, Handler handler) {
        super(handler);
        this.this$0 = bufferedChannel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Loader$ForceLoadContentObserver(SuggestionsAdapter suggestionsAdapter) {
        super(new Handler());
        this.this$0 = suggestionsAdapter;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        switch (this.$r8$classId) {
            case 1:
                ((BufferedChannel) this.this$0).mo1016trySendJP2dKIU(Unit.INSTANCE);
                break;
            default:
                super.onChange(z, uri);
                break;
        }
    }
}
