package org.wikipedia.views;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.room.Room;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.page.PageTitle;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedArticleDescriptionsDialog extends MaterialAlertDialogBuilder {
    public static final List availableLanguages = Room.listOf((Object[]) new String[]{"ru", "vi", "ja", "de", "ro", "fr", "fi", "ko", "es", "zh", "it", "nl", "ar", "tr", "hi", "cs", "lt", "lv", "kk", "et", "ni", "si", "gu", "my"});
    public final WikiGamesEvent analyticsHelper;
    public final OkHttpCall.AnonymousClass1 binding;
    public AlertDialog dialog;
    public final PageTitle pageTitle;
    public boolean suggestionChosen;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedArticleDescriptionsDialog(final Activity activity, String str, String str2, PageTitle pageTitle, WikiGamesEvent wikiGamesEvent, final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        super(activity, 0);
        pageTitle.getClass();
        wikiGamesEvent.getClass();
        final int i = 0;
        this.pageTitle = pageTitle;
        this.analyticsHelper = wikiGamesEvent;
        View inflate = activity.getLayoutInflater().inflate(R.layout.dialog_article_descriptions, (ViewGroup) null, false);
        int i2 = R.id.closeButton;
        AppCompatImageView appCompatImageView = (AppCompatImageView) Room.findChildViewById(inflate, R.id.closeButton);
        if (appCompatImageView != null) {
            i2 = R.id.descriptionsContainer;
            if (((LinearLayout) Room.findChildViewById(inflate, R.id.descriptionsContainer)) != null) {
                i2 = R.id.firstSuggestion;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.firstSuggestion);
                if (textView != null) {
                    i2 = R.id.firstSuggestionFlag;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) Room.findChildViewById(inflate, R.id.firstSuggestionFlag);
                    if (appCompatImageView2 != null) {
                        i2 = R.id.secondSuggestion;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.secondSuggestion);
                        if (textView2 != null) {
                            i2 = R.id.secondSuggestionFlag;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) Room.findChildViewById(inflate, R.id.secondSuggestionFlag);
                            if (appCompatImageView3 != null) {
                                i2 = R.id.secondSuggestionLayout;
                                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.secondSuggestionLayout);
                                if (linearLayout != null) {
                                    ScrollView scrollView = (ScrollView) inflate;
                                    this.binding = new OkHttpCall.AnonymousClass1(scrollView, appCompatImageView, textView, appCompatImageView2, textView2, appCompatImageView3, linearLayout);
                                    ((AlertController.AlertParams) this.array).mView = scrollView;
                                    textView.setText(str);
                                    linearLayout.setVisibility(str2 != null ? 0 : 8);
                                    if (str2 != null) {
                                        textView2.setText(str2);
                                    }
                                    appCompatImageView.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(5, this));
                                    textView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i3 = i;
                                            SuggestedArticleDescriptionsDialog suggestedArticleDescriptionsDialog = this;
                                            OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02 = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
                                            switch (i3) {
                                                case 0:
                                                    onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onSuggestionClicked(((TextView) suggestedArticleDescriptionsDialog.binding.val$callback).getText().toString());
                                                    suggestedArticleDescriptionsDialog.suggestionChosen = true;
                                                    AlertDialog alertDialog = suggestedArticleDescriptionsDialog.dialog;
                                                    if (alertDialog != null) {
                                                        alertDialog.dismiss();
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onSuggestionClicked(((TextView) suggestedArticleDescriptionsDialog.binding.this$0).getText().toString());
                                                    suggestedArticleDescriptionsDialog.suggestionChosen = true;
                                                    AlertDialog alertDialog2 = suggestedArticleDescriptionsDialog.dialog;
                                                    if (alertDialog2 != null) {
                                                        alertDialog2.dismiss();
                                                        break;
                                                    }
                                                    break;
                                            }
                                        }
                                    });
                                    final int i3 = 1;
                                    textView2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i3;
                                            SuggestedArticleDescriptionsDialog suggestedArticleDescriptionsDialog = this;
                                            OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02 = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
                                            switch (i32) {
                                                case 0:
                                                    onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onSuggestionClicked(((TextView) suggestedArticleDescriptionsDialog.binding.val$callback).getText().toString());
                                                    suggestedArticleDescriptionsDialog.suggestionChosen = true;
                                                    AlertDialog alertDialog = suggestedArticleDescriptionsDialog.dialog;
                                                    if (alertDialog != null) {
                                                        alertDialog.dismiss();
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda02.onSuggestionClicked(((TextView) suggestedArticleDescriptionsDialog.binding.this$0).getText().toString());
                                                    suggestedArticleDescriptionsDialog.suggestionChosen = true;
                                                    AlertDialog alertDialog2 = suggestedArticleDescriptionsDialog.dialog;
                                                    if (alertDialog2 != null) {
                                                        alertDialog2.dismiss();
                                                        break;
                                                    }
                                                    break;
                                            }
                                        }
                                    });
                                    appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i4 = i;
                                            SuggestedArticleDescriptionsDialog suggestedArticleDescriptionsDialog = this;
                                            switch (i4) {
                                                case 0:
                                                    new SuggestedArticleDescriptionsReportDialog(activity, ((TextView) suggestedArticleDescriptionsDialog.binding.val$callback).getText().toString(), suggestedArticleDescriptionsDialog.pageTitle, suggestedArticleDescriptionsDialog.analyticsHelper, new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6(suggestedArticleDescriptionsDialog, 0)).show();
                                                    break;
                                                default:
                                                    new SuggestedArticleDescriptionsReportDialog(activity, ((TextView) suggestedArticleDescriptionsDialog.binding.this$0).getText().toString(), suggestedArticleDescriptionsDialog.pageTitle, suggestedArticleDescriptionsDialog.analyticsHelper, new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6(suggestedArticleDescriptionsDialog, 1)).show();
                                                    break;
                                            }
                                        }
                                    });
                                    appCompatImageView3.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda3
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i4 = i3;
                                            SuggestedArticleDescriptionsDialog suggestedArticleDescriptionsDialog = this;
                                            switch (i4) {
                                                case 0:
                                                    new SuggestedArticleDescriptionsReportDialog(activity, ((TextView) suggestedArticleDescriptionsDialog.binding.val$callback).getText().toString(), suggestedArticleDescriptionsDialog.pageTitle, suggestedArticleDescriptionsDialog.analyticsHelper, new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6(suggestedArticleDescriptionsDialog, 0)).show();
                                                    break;
                                                default:
                                                    new SuggestedArticleDescriptionsReportDialog(activity, ((TextView) suggestedArticleDescriptionsDialog.binding.this$0).getText().toString(), suggestedArticleDescriptionsDialog.pageTitle, suggestedArticleDescriptionsDialog.analyticsHelper, new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda6(suggestedArticleDescriptionsDialog, 1)).show();
                                                    break;
                                            }
                                        }
                                    });
                                    ((AlertController.AlertParams) this.array).mOnDismissListener = new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(i, this);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    @Override // okio.PriorityQueue
    public final AlertDialog show() {
        AlertDialog show = super.show();
        this.dialog = show;
        return show;
    }
}
