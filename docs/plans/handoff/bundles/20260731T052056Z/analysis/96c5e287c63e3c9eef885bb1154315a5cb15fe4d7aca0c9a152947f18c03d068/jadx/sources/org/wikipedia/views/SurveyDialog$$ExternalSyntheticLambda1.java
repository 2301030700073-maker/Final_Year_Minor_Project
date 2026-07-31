package org.wikipedia.views;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cookie;
import okhttp3.Headers;
import okio.Okio__JvmOkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationLinkHandler;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda1;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.savedpages.SavedPageSyncService$doWork$2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SurveyDialog$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ SurveyDialog$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        int i2 = 0;
        Integer num = null;
        Object obj = this.f$3;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj2;
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) obj;
                view.getClass();
                String obj4 = ((TextView) view).getText().toString();
                AlertDialog alertDialog = (AlertDialog) ((Ref$ObjectRef) obj3).element;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
                if (Intrinsics.areEqual(obj4, appCompatActivity.getString(R.string.survey_dialog_option_satisfied))) {
                    Okio__JvmOkioKt.showFeedbackSnackbarAndTooltip(appCompatActivity, invokeSource);
                } else {
                    View inflate = appCompatActivity.getLayoutInflater().inflate(R.layout.dialog_feedback_input, (ViewGroup) null);
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("impression", "feedback_input_form", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
                    materialAlertDialogBuilder.setTitle(R.string.patroller_diff_feedback_dialog_feedback_title);
                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = inflate;
                    materialAlertDialogBuilder.setPositiveButton(R.string.survey_dialog_submit, new SurveyDialog$$ExternalSyntheticLambda8(inflate, appCompatActivity, invokeSource, i2));
                    materialAlertDialogBuilder.show();
                }
                Cookie.Companion.submitPatrollerActivityEvent("feedback_selection", "feedback_form", Cookie.Companion.getActionDataString$default(null, obj4, null, null, null, null, null, null, null, 1021));
                return;
            case 1:
                DescriptionEditView descriptionEditView = (DescriptionEditView) obj3;
                String str = (String) obj2;
                String str2 = (String) obj;
                int i3 = DescriptionEditView.$r8$clinit;
                Context context = descriptionEditView.getContext();
                context.getClass();
                Activity activity = (Activity) context;
                PageTitle pageTitle = descriptionEditView.pageTitle;
                if (pageTitle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                    throw null;
                }
                DescriptionEditView.Callback callback = descriptionEditView.callback;
                callback.getClass();
                new SuggestedArticleDescriptionsDialog(activity, str, str2, pageTitle, ((DescriptionEditFragment) ((AvPlayer) callback).player).analyticsHelper, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(13, descriptionEditView)).show();
                return;
            case 2:
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new RealImageLoader$execute$2((ReadingList) obj3, (AppCompatActivity) obj2, (ReadingListBehaviorsUtil.SnackbarCallback) obj, null, 22), 2);
                return;
            case 3:
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new SavedPageSyncService$doWork$2((ArrayList) obj3, (AppCompatActivity) obj2, (ReadingListsFragment$$ExternalSyntheticLambda1) obj, null, 2), 2);
                return;
            case 4:
                CustomDatePicker customDatePicker = (CustomDatePicker) obj3;
                CustomDatePicker$CustomCalendarAdapter$ViewHolder customDatePicker$CustomCalendarAdapter$ViewHolder = (CustomDatePicker$CustomCalendarAdapter$ViewHolder) obj2;
                DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = (DiffUtil$DiffLinesAdapter) obj;
                Calendar calendar = customDatePicker.selectedDay;
                calendar.set(5, customDatePicker$CustomCalendarAdapter$ViewHolder.getBindingAdapterPosition() + 1);
                customDatePicker.callbackDay.set(2016, calendar.get(2), customDatePicker$CustomCalendarAdapter$ViewHolder.getBindingAdapterPosition() + 1);
                customDatePicker.setDayString();
                diffUtil$DiffLinesAdapter.notifyItemRangeChanged(0, diffUtil$DiffLinesAdapter.getItemCount());
                return;
            case 5:
                Uri uri = (Uri) obj3;
                NotificationActionsOverflowView notificationActionsOverflowView = (NotificationActionsOverflowView) obj2;
                PageTitle pageTitle2 = (PageTitle) obj;
                if (UriUtil.isAppSupportedLink(uri)) {
                    Context context2 = notificationActionsOverflowView.getContext();
                    int i4 = TalkTopicsActivity.$r8$clinit;
                    Context context3 = notificationActionsOverflowView.getContext();
                    context3.getClass();
                    context2.startActivity(Headers.Companion.newIntent(context3, pageTitle2, Constants.InvokeSource.NOTIFICATION));
                    return;
                }
                NotificationLinkHandler notificationLinkHandler = notificationActionsOverflowView.linkHandler;
                if (notificationLinkHandler != null) {
                    notificationLinkHandler.onExternalLinkClicked(uri);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
                    throw null;
                }
            case 6:
                NotificationActionsOverflowView notificationActionsOverflowView2 = (NotificationActionsOverflowView) obj3;
                TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = (TextLinkScope$$ExternalSyntheticLambda3) obj2;
                NotificationListItemContainer notificationListItemContainer = (NotificationListItemContainer) obj;
                PopupWindow popupWindow = notificationActionsOverflowView2.popupWindowHost;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
                notificationActionsOverflowView2.popupWindowHost = null;
                Notification notification = notificationListItemContainer.notification;
                if (notification != null && notification.isUnread()) {
                    i2 = 1;
                }
                NotificationActivity.markReadItems$default((NotificationActivity) textLinkScope$$ExternalSyntheticLambda3.f$0, Room.listOf(notificationListItemContainer), 1 ^ i2, Integer.valueOf(((NotificationActivity.NotificationItemHolder) textLinkScope$$ExternalSyntheticLambda3.f$1).itemPosition), 4);
                return;
            default:
                ActivityTalkReplyBinding activityTalkReplyBinding = (ActivityTalkReplyBinding) obj3;
                AppCompatActivity appCompatActivity2 = (AppCompatActivity) obj2;
                AlertDialog alertDialog2 = (AlertDialog) obj;
                int checkedRadioButtonId = ((RadioGroup) activityTalkReplyBinding.editKeyboardOverlayFormatting).getCheckedRadioButtonId();
                if (checkedRadioButtonId == R.id.optionVerySatisfied) {
                    num = 1;
                } else if (checkedRadioButtonId == R.id.optionSatisfied) {
                    num = 2;
                } else if (checkedRadioButtonId == R.id.optionNeutral) {
                    num = 3;
                } else if (checkedRadioButtonId == R.id.optionUnsatisfied) {
                    num = 4;
                } else if (checkedRadioButtonId == R.id.optionVeryUnsatisfied) {
                    num = 5;
                }
                UriUtil.submit$default(142, num, "feedback_submit_click", null, "feedback_choice", String.valueOf(((PlainPasteEditText) activityTalkReplyBinding.replySubjectText).getText()));
                ShareUtil.showMessage(appCompatActivity2, R.string.survey_dialog_submitted_snackbar);
                alertDialog2.dismiss();
                return;
        }
    }
}
