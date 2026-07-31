package org.wikipedia.donate;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.util.ContextsKt;
import com.google.gson.GsonBuilder;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.donate.CampaignCollection;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/donate/DonateDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DonateDialog extends ExtendedBottomSheetDialogFragment {
    public GsonBuilder _binding;
    public String campaignId;
    public String campaignIdOriginal;
    public final Request.Builder viewModel$delegate;

    public DonateDialog() {
        super(false);
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(5, new HomeFragment$special$$inlined$viewModels$default$2(4, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(DonateViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 11), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 0), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 12));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str;
        String str2;
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_donate, viewGroup, false);
        int i2 = R.id.contentsContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.contentsContainer);
        Continuation continuation = null;
        if (linearLayout != null) {
            i2 = R.id.donateGooglePayButton;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.donateGooglePayButton);
            if (textView != null) {
                i2 = R.id.donateGooglePayDifferentAmountButton;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.donateGooglePayDifferentAmountButton);
                if (textView2 != null) {
                    i2 = R.id.donateOtherButton;
                    TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.donateOtherButton);
                    if (textView3 != null) {
                        i2 = R.id.gPayDescription;
                        if (((TextView) Room.findChildViewById(inflate, R.id.gPayDescription)) != null) {
                            i2 = R.id.gPayHeaderContainer;
                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.gPayHeaderContainer);
                            if (linearLayout2 != null) {
                                i2 = R.id.gPayTitle;
                                if (((TextView) Room.findChildViewById(inflate, R.id.gPayTitle)) != null) {
                                    i2 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progressBar);
                                    if (progressBar != null) {
                                        this._binding = new GsonBuilder((FrameLayout) inflate, linearLayout, textView, textView2, textView3, linearLayout2, progressBar, 8);
                                        Bundle bundle2 = this.mArguments;
                                        if (bundle2 == null || (str = bundle2.getString("campaignId")) == null) {
                                            str = "appmenu";
                                        }
                                        this.campaignIdOriginal = str;
                                        int i3 = DonationReminderHelper.validReadCountOnSeconds;
                                        this.campaignId = DonationReminderHelper.getCampaignId(str);
                                        Bundle bundle3 = this.mArguments;
                                        if (bundle3 == null || !bundle3.getBoolean("fromYiR")) {
                                            String str3 = this.campaignId;
                                            str2 = (str3 == null || str3.length() == 0) ? "setting" : "article_banner";
                                        } else {
                                            str2 = "wiki_yir";
                                        }
                                        GsonBuilder gsonBuilder = this._binding;
                                        gsonBuilder.getClass();
                                        ((TextView) gsonBuilder.factories).setOnClickListener(new DonateDialog$$ExternalSyntheticLambda0(str2, this));
                                        GsonBuilder gsonBuilder2 = this._binding;
                                        gsonBuilder2.getClass();
                                        ((TextView) gsonBuilder2.fieldNamingPolicy).setOnClickListener(new DonateDialog$$ExternalSyntheticLambda0(this, str2));
                                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new DonateDialog$onCreateView$3(this, continuation, i), 3);
                                        DonateViewModel donateViewModel = (DonateViewModel) this.viewModel$delegate.getValue();
                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(donateViewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(donateViewModel), null, new RealImageLoader$execute$2(donateViewModel, requireActivity(), continuation, 12), 2);
                                        GsonBuilder gsonBuilder3 = this._binding;
                                        gsonBuilder3.getClass();
                                        FrameLayout frameLayout = (FrameLayout) gsonBuilder3.excluder;
                                        frameLayout.getClass();
                                        return frameLayout;
                                    }
                                }
                            }
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
        this._binding = null;
        super.onDestroyView();
    }

    public final void onDonateClicked() {
        Context requireContext = requireContext();
        Bundle bundle = this.mArguments;
        String string = bundle != null ? bundle.getString("donateUrl") : null;
        String str = this.campaignId;
        String formattedCampaignId = str != null ? CampaignCollection.getFormattedCampaignId(str) : null;
        if (formattedCampaignId == null) {
            formattedCampaignId = "";
        }
        if (string == null) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String systemLanguageCode = Jsoup.getInstance().getLanguageState().getSystemLanguageCode();
            Prefs prefs = Prefs.INSTANCE;
            string = requireContext.getString(R.string.donate_url, formattedCampaignId, systemLanguageCode, "r/50598-r-2026-07-13", PrefsIoUtil.getString(R.string.preference_key_reading_app_install_id, null));
            string.getClass();
        }
        Okio__JvmOkioKt.openInCustomTab(requireContext, string);
        String str2 = this.campaignIdOriginal;
        if (str2 != null) {
            Prefs prefs2 = Prefs.INSTANCE;
            Prefs.setAnnouncementShownDialogs(UuidKt.setOf(str2));
        }
        dismiss();
    }
}
