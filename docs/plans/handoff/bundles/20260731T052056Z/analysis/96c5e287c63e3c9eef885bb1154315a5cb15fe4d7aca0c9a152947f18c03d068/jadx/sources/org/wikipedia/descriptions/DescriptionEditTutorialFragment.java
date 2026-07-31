package org.wikipedia.descriptions;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.onboarding.OnboardingFragment;
import org.wikipedia.onboarding.OnboardingPageView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;", "Lorg/wikipedia/onboarding/OnboardingFragment;", "<init>", "()V", "DescriptionEditTutorialPagerAdapter", "ItemFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditTutorialFragment extends OnboardingFragment {
    public static final Integer[] pages = {Integer.valueOf(R.layout.inflate_description_edit_tutorial_page_one), Integer.valueOf(R.layout.inflate_description_edit_tutorial_page_two), Integer.valueOf(R.layout.inflate_description_edit_tutorial_page_three)};
    public final int doneButtonText;
    public boolean showAIOnBoarding;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DescriptionEditTutorialPagerAdapter extends FragmentStateAdapter {
        public DescriptionEditTutorialPagerAdapter(DescriptionEditTutorialFragment descriptionEditTutorialFragment) {
            super(descriptionEditTutorialFragment.getChildFragmentManager(), descriptionEditTutorialFragment.mLifecycleRegistry);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public final Fragment createFragment(int i) {
            ItemFragment itemFragment = new ItemFragment();
            itemFragment.setArguments(UStringsKt.bundleOf(new Pair("position", Integer.valueOf(i))));
            return itemFragment;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return DescriptionEditTutorialFragment.this.showAIOnBoarding ? 3 : 2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ItemFragment extends Fragment {
        @Override // androidx.fragment.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            layoutInflater.getClass();
            int i = requireArguments().getInt("position", 0);
            boolean z = requireParentFragment().requireArguments().getBoolean("showAIOnBoarding");
            View inflate = layoutInflater.inflate(DescriptionEditTutorialFragment.pages[i].intValue(), viewGroup, false);
            inflate.getClass();
            OnboardingPageView onboardingPageView = (OnboardingPageView) inflate;
            if (z && i == 1) {
                onboardingPageView.setTertiaryTextViewVisible(false);
            }
            if (i == 2) {
                Context requireContext = requireContext();
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), "machineSuggestions.onboardingShown"));
            }
            onboardingPageView.setCallback(new OnboardingPageView.DefaultCallback());
            return onboardingPageView;
        }
    }

    public DescriptionEditTutorialFragment() {
        super(0);
        this.doneButtonText = R.string.description_edit_tutorial_button_label_start_editing;
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment
    public final FragmentStateAdapter getAdapter() {
        return new DescriptionEditTutorialPagerAdapter(this);
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment
    public final int getDoneButtonText() {
        return this.doneButtonText;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.showAIOnBoarding = requireArguments().getBoolean("showAIOnBoarding");
    }
}
