package org.wikipedia.usercontrib;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.DateRetargetClass;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/usercontrib/UserInformationDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UserInformationDialog extends DialogFragment {
    public SVGAndroidRenderer _binding;
    public final Request.Builder viewModel$delegate;

    public UserInformationDialog() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(18, new WatchlistFragment$special$$inlined$viewModels$default$1(17, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(UserInformationDialogViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 26), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 23), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 27));
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Continuation continuation = null;
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.dialog_user_information, (ViewGroup) null, false);
        int i2 = R.id.dialogErrorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.dialogErrorView);
        if (wikiErrorView != null) {
            i2 = R.id.dialogProgressBar;
            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.dialogProgressBar);
            if (progressBar != null) {
                i2 = R.id.editCount;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.editCount);
                if (textView != null) {
                    i2 = R.id.userInformationContainer;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.userInformationContainer);
                    if (linearLayout != null) {
                        i2 = R.id.userTenure;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.userTenure);
                        if (textView2 != null) {
                            this._binding = new SVGAndroidRenderer((ScrollView) inflate, wikiErrorView, progressBar, textView, linearLayout, textView2);
                            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity(), 0);
                            materialAlertDialogBuilder.setTitle(R.string.patroller_tasks_edits_list_user_information_dialog_title);
                            SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                            sVGAndroidRenderer.getClass();
                            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = (ScrollView) sVGAndroidRenderer.canvas;
                            materialAlertDialogBuilder.setPositiveButton(R.string.patroller_tasks_edits_list_user_information_dialog_close, new PageFragment$$ExternalSyntheticLambda28(15, this));
                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new UserInformationDialog$setupDialog$1(this, continuation, i), 3);
                            SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                            sVGAndroidRenderer2.getClass();
                            ((WikiErrorView) sVGAndroidRenderer2.document).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.usercontrib.UserInformationDialog$$ExternalSyntheticLambda1
                                public final /* synthetic */ UserInformationDialog f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i3 = i;
                                    UserInformationDialog userInformationDialog = this.f$0;
                                    switch (i3) {
                                        case 0:
                                            userInformationDialog.dismissInternal(false, false);
                                            break;
                                        default:
                                            userInformationDialog.dismissInternal(false, false);
                                            break;
                                    }
                                }
                            });
                            SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                            sVGAndroidRenderer3.getClass();
                            final int i3 = 1;
                            ((WikiErrorView) sVGAndroidRenderer3.document).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.usercontrib.UserInformationDialog$$ExternalSyntheticLambda1
                                public final /* synthetic */ UserInformationDialog f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    int i32 = i3;
                                    UserInformationDialog userInformationDialog = this.f$0;
                                    switch (i32) {
                                        case 0:
                                            userInformationDialog.dismissInternal(false, false);
                                            break;
                                        default:
                                            userInformationDialog.dismissInternal(false, false);
                                            break;
                                    }
                                }
                            });
                            return materialAlertDialogBuilder.create();
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    public final void onSuccess(String str, Date date) {
        if ((requireActivity() instanceof SuggestionsActivity) || (requireActivity() instanceof SuggestedEditsRecentEditsActivity)) {
            String str2 = requireActivity() instanceof SuggestedEditsRecentEditsActivity ? "pt_recent_changes" : "pt_edit";
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent("user_info_impression", str2, "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        }
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((LinearLayout) sVGAndroidRenderer.parentStack).setVisibility(0);
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((ProgressBar) sVGAndroidRenderer2.state).setVisibility(8);
        SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
        sVGAndroidRenderer3.getClass();
        ((WikiErrorView) sVGAndroidRenderer3.document).setVisibility(8);
        LocalDate localDate = LocalDateTime.ofInstant(DateRetargetClass.toInstant(date), ZoneId.systemDefault()).toLocalDate();
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        localDate.getClass();
        String shortDateString = DateUtil.getShortDateString(localDate);
        SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
        sVGAndroidRenderer4.getClass();
        TextView textView = (TextView) sVGAndroidRenderer4.matrixStack;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getString(R.string.patroller_tasks_edits_list_user_information_dialog_joined_date_text, shortDateString)));
        SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
        sVGAndroidRenderer5.getClass();
        ((TextView) sVGAndroidRenderer5.stateStack).setText(StringUtil.fromHtml(getString(R.string.patroller_tasks_edits_list_user_information_dialog_edit_count_text, str)));
    }
}
