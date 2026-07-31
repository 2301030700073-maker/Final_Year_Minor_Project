package org.wikipedia.suggestededits;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import coil3.size.ViewSizeResolver$CC;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.onboarding.OnboardingFragment;
import org.wikipedia.onboarding.OnboardingPageView;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0005\u0006B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingFragment;", "Lorg/wikipedia/onboarding/OnboardingFragment;", "Lorg/wikipedia/onboarding/OnboardingPageView$Callback;", "<init>", "()V", "DescriptionEditTutorialPagerAdapter", "ItemFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsOnboardingFragment extends OnboardingFragment implements OnboardingPageView.Callback {
    public static final Integer[] pages = {Integer.valueOf(R.layout.inflate_patroller_tasks_onboarding_page_one), Integer.valueOf(R.layout.inflate_patroller_tasks_onboarding_page_two)};
    public final int doneButtonText;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DescriptionEditTutorialPagerAdapter extends FragmentStateAdapter {
        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public final Fragment createFragment(int i) {
            ItemFragment itemFragment = new ItemFragment();
            itemFragment.setArguments(UStringsKt.bundleOf(new Pair("position", Integer.valueOf(i))));
            return itemFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return 2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingFragment$ItemFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ItemFragment extends Fragment {
        @Override // androidx.fragment.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            ComponentCallbacks activity;
            layoutInflater.getClass();
            int i = requireArguments().getInt("position", 0);
            View inflate = layoutInflater.inflate(SuggestedEditsRecentEditsOnboardingFragment.pages[i].intValue(), viewGroup, false);
            inflate.getClass();
            OnboardingPageView onboardingPageView = (OnboardingPageView) inflate;
            onboardingPageView.setTag(Integer.valueOf(i));
            if (OnboardingPageView.Callback.class.isInstance(getTargetFragment(true))) {
                activity = getTargetFragment(true);
            } else {
                Fragment fragment = this.mParentFragment;
                if (fragment != null) {
                    if (OnboardingPageView.Callback.class.isInstance(fragment)) {
                        activity = this.mParentFragment;
                    } else if (OnboardingPageView.Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                        activity = requireParentFragment().mParentFragment;
                    }
                }
                activity = OnboardingPageView.Callback.class.isInstance(getActivity()) ? getActivity() : null;
            }
            onboardingPageView.setCallback((OnboardingPageView.Callback) activity);
            String m = i == 0 ? "onboarding_init" : Animation.CC.m(i, "onboarding_", "_advance");
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m2 = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(m, "pt_onboarding", "", m2, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
            return onboardingPageView;
        }
    }

    public SuggestedEditsRecentEditsOnboardingFragment() {
        super(0);
        this.doneButtonText = R.string.onboarding_get_started;
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment
    public final FragmentStateAdapter getAdapter() {
        return new DescriptionEditTutorialPagerAdapter(getChildFragmentManager(), this.mLifecycleRegistry);
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment
    public final int getDoneButtonText() {
        return this.doneButtonText;
    }

    @Override // org.wikipedia.onboarding.OnboardingPageView.Callback
    public final void onLinkClick(OnboardingPageView onboardingPageView, String str) {
        if (!str.equals("#privacy")) {
            AppCompatActivity requireActivity = requireActivity();
            Uri parse = Uri.parse(str);
            parse.getClass();
            UriUtil.visitInExternalBrowser(requireActivity, parse);
            return;
        }
        Context requireContext = requireContext();
        String string = requireContext.getString(R.string.privacy_policy_url);
        string.getClass();
        Uri parse2 = Uri.parse(string);
        parse2.getClass();
        UriUtil.visitInExternalBrowser(requireContext, parse2);
    }
}
