package org.schabi.newpipe.settings;

import android.content.Context;
import android.widget.Toast;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class HistorySettingsFragment$$ExternalSyntheticLambda7 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ HistorySettingsFragment$$ExternalSyntheticLambda7(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.DELETE_FROM_HISTORY;
        Context context = this.f$0;
        switch (i) {
            case 0:
                int i2 = HistorySettingsFragment.$r8$clinit;
                Toast.makeText(context, R.string.search_history_deleted, 0).show();
                break;
            case 1:
                int i3 = HistorySettingsFragment.$r8$clinit;
                ErrorInfo errorInfo = new ErrorInfo((Throwable) obj, userAction, "Delete from history");
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.openActivity(context, errorInfo);
                break;
            case 2:
                int i4 = HistorySettingsFragment.$r8$clinit;
                Toast.makeText(context, R.string.watch_history_states_deleted, 0).show();
                break;
            case 3:
                int i5 = HistorySettingsFragment.$r8$clinit;
                ErrorInfo errorInfo2 = new ErrorInfo((Throwable) obj, userAction, "Delete playback states");
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.openActivity(context, errorInfo2);
                break;
            case 4:
                int i6 = HistorySettingsFragment.$r8$clinit;
                ErrorInfo errorInfo3 = new ErrorInfo((Throwable) obj, userAction, "Clear orphaned records");
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.openActivity(context, errorInfo3);
                break;
            case 5:
                int i7 = HistorySettingsFragment.$r8$clinit;
                ErrorInfo errorInfo4 = new ErrorInfo((Throwable) obj, userAction, "Delete search history");
                ErrorUtil.Companion.getClass();
                ErrorUtil.Companion.openActivity(context, errorInfo4);
                break;
            default:
                int i8 = HistorySettingsFragment.$r8$clinit;
                Toast.makeText(context, R.string.watch_history_deleted, 0).show();
                break;
        }
    }
}
