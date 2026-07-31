package org.wikipedia.views;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ScrollView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.room.Room;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListFragment$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedArticleDescriptionsReportDialog extends MaterialAlertDialogBuilder {
    public final WikiGamesEvent analyticsHelper;
    public final Request.Builder binding;
    public AlertDialog dialog;
    public final PageTitle pageTitle;
    public boolean reported;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedArticleDescriptionsReportDialog(Activity activity, String str, PageTitle pageTitle, WikiGamesEvent wikiGamesEvent, SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6 suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6) {
        super(activity, 0);
        str.getClass();
        pageTitle.getClass();
        wikiGamesEvent.getClass();
        this.pageTitle = pageTitle;
        this.analyticsHelper = wikiGamesEvent;
        View inflate = activity.getLayoutInflater().inflate(R.layout.dialog_description_suggestion_report, (ViewGroup) null, false);
        int i = R.id.cannotSeeDescription;
        CheckBox checkBox = (CheckBox) Room.findChildViewById(inflate, R.id.cannotSeeDescription);
        if (checkBox != null) {
            i = R.id.doNotUnderstand;
            CheckBox checkBox2 = (CheckBox) Room.findChildViewById(inflate, R.id.doNotUnderstand);
            if (checkBox2 != null) {
                i = R.id.inappropriateSuggestion;
                CheckBox checkBox3 = (CheckBox) Room.findChildViewById(inflate, R.id.inappropriateSuggestion);
                if (checkBox3 != null) {
                    i = R.id.notEnoughInfo;
                    CheckBox checkBox4 = (CheckBox) Room.findChildViewById(inflate, R.id.notEnoughInfo);
                    if (checkBox4 != null) {
                        i = R.id.suggestionReportOther;
                        TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.suggestionReportOther);
                        if (textInputLayout != null) {
                            i = R.id.suggestionReportOtherEditText;
                            if (((PlainPasteEditText) Room.findChildViewById(inflate, R.id.suggestionReportOtherEditText)) != null) {
                                ScrollView scrollView = (ScrollView) inflate;
                                this.binding = new Request.Builder(scrollView, checkBox, checkBox2, checkBox3, checkBox4, textInputLayout);
                                AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
                                alertParams.mView = scrollView;
                                setPositiveButton(alertParams.mContext.getString(R.string.suggested_edits_report_suggestion), (DialogInterface.OnClickListener) new ReadingListFragment$$ExternalSyntheticLambda9(this, str, activity, suggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6, 1));
                                setNegativeButton(((AlertController.AlertParams) this.array).mContext.getString(R.string.text_input_dialog_cancel_button_text), new PageFragment$$ExternalSyntheticLambda28(17, this));
                                textInputLayout.setEndIconOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(6, this));
                                ((AlertController.AlertParams) this.array).mOnDismissListener = new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(3, this);
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final ArrayList getReportReasons() {
        Editable text;
        AlertController.AlertParams alertParams = (AlertController.AlertParams) this.array;
        ArrayList arrayList = new ArrayList();
        Request.Builder builder = this.binding;
        CheckBox checkBox = (CheckBox) builder.body;
        CheckBox checkBox2 = (CheckBox) builder.headers;
        CheckBox checkBox3 = (CheckBox) builder.method;
        CheckBox checkBox4 = (CheckBox) builder.url;
        if (checkBox.isChecked()) {
            String resourceEntryName = alertParams.mContext.getResources().getResourceEntryName(((CheckBox) builder.body).getId());
            resourceEntryName.getClass();
            arrayList.add(resourceEntryName);
        }
        if (checkBox4.isChecked()) {
            String resourceEntryName2 = alertParams.mContext.getResources().getResourceEntryName(checkBox4.getId());
            resourceEntryName2.getClass();
            arrayList.add(resourceEntryName2);
        }
        if (checkBox3.isChecked()) {
            String resourceEntryName3 = alertParams.mContext.getResources().getResourceEntryName(checkBox3.getId());
            resourceEntryName3.getClass();
            arrayList.add(resourceEntryName3);
        }
        if (checkBox2.isChecked()) {
            String resourceEntryName4 = alertParams.mContext.getResources().getResourceEntryName(checkBox2.getId());
            resourceEntryName4.getClass();
            arrayList.add(resourceEntryName4);
        }
        EditText editText = ((TextInputLayout) builder.tags).getEditText();
        String obj = (editText == null || (text = editText.getText()) == null) ? null : text.toString();
        if (obj != null && obj.length() != 0) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    @Override // okio.PriorityQueue
    public final AlertDialog show() {
        AlertDialog show = super.show();
        this.dialog = show;
        return show;
    }
}
