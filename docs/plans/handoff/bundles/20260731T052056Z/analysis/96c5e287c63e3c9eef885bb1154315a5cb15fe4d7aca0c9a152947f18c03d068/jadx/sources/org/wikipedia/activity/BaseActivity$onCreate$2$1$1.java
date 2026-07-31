package org.wikipedia.activity;

import androidx.appcompat.app.AlertController;
import androidx.core.app.ActivityCompat;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.events.LoggedOutInBackgroundEvent;
import org.wikipedia.events.ReadingListsEnableDialogEvent;
import org.wikipedia.events.ReadingListsNoLongerSyncedEvent;
import org.wikipedia.events.ThemeFontChangeEvent;
import org.wikipedia.events.UnreadNotificationsEvent;
import org.wikipedia.main.MainActivity;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.readinglist.sync.ReadingListSyncEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BaseActivity$onCreate$2$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ BaseActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BaseActivity$onCreate$2$1$1(BaseActivity baseActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = baseActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        BaseActivity baseActivity = this.this$0;
        switch (i) {
            case 0:
                BaseActivity$onCreate$2$1$1 baseActivity$onCreate$2$1$1 = new BaseActivity$onCreate$2$1$1(baseActivity, continuation, 0);
                baseActivity$onCreate$2$1$1.L$0 = obj;
                return baseActivity$onCreate$2$1$1;
            default:
                BaseActivity$onCreate$2$1$1 baseActivity$onCreate$2$1$12 = new BaseActivity$onCreate$2$1$1(baseActivity, continuation, 1);
                baseActivity$onCreate$2$1$12.L$0 = obj;
                return baseActivity$onCreate$2$1$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((BaseActivity$onCreate$2$1$1) create(obj, continuation)).invokeSuspend(unit);
                break;
            default:
                ((BaseActivity$onCreate$2$1$1) create(obj, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        BaseActivity baseActivity = this.this$0;
        Object obj2 = this.L$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (obj2 instanceof ThemeFontChangeEvent) {
                    ActivityCompat.recreate(baseActivity);
                    break;
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                if (!(obj2 instanceof ReadingListsNoLongerSyncedEvent)) {
                    if (!(obj2 instanceof ReadingListsEnableDialogEvent) && !Intrinsics.areEqual(obj2, Boolean.valueOf(baseActivity instanceof MainActivity))) {
                        if (!(obj2 instanceof LoggedOutInBackgroundEvent)) {
                            if (!(obj2 instanceof ReadingListSyncEvent)) {
                                if (obj2 instanceof UnreadNotificationsEvent) {
                                    baseActivity.runOnUiThread(new MainFragment$$ExternalSyntheticLambda5(1, baseActivity));
                                    break;
                                }
                            } else if (((ReadingListSyncEvent) obj2).showMessage) {
                                Prefs prefs = Prefs.INSTANCE;
                                if (!Prefs.isSuggestedEditsHighestPriorityEnabled()) {
                                    String string = baseActivity.getString(R.string.reading_list_toast_last_sync);
                                    string.getClass();
                                    ShareUtil.makeSnackbar$default(baseActivity, string, 0, 12).show();
                                    break;
                                }
                            }
                        } else {
                            int i2 = BaseActivity.$r8$clinit;
                            baseActivity.maybeShowLoggedOutInBackgroundDialog();
                            break;
                        }
                    } else {
                        Cache.Companion.promptEnableSyncDialog(baseActivity);
                        break;
                    }
                } else {
                    WikiGamesEvent.submit$default("impression", "sync_off_prompt", null, null, null, null, null, null, 508);
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(baseActivity, 0);
                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mCancelable = false;
                    materialAlertDialogBuilder.setTitle(R.string.reading_list_turned_sync_off_dialog_title);
                    materialAlertDialogBuilder.setMessage(R.string.reading_list_turned_sync_off_dialog_text);
                    materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_turned_sync_off_dialog_ok, new TextInputDialog$$ExternalSyntheticLambda2(7));
                    materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_turned_sync_off_dialog_settings, new PageFragment$$ExternalSyntheticLambda28(6, baseActivity));
                    materialAlertDialogBuilder.show();
                    break;
                }
                break;
        }
        return unit;
    }
}
