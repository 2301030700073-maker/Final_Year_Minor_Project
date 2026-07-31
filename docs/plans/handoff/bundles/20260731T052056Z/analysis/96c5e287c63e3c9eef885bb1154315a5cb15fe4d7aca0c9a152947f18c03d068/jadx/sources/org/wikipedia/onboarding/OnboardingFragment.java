package org.wikipedia.onboarding;

import android.content.ComponentCallbacks;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import kotlin.Metadata;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.BackPressedHandler;
import org.wikipedia.R;
import org.wikipedia.main.MainFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/onboarding/OnboardingFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/BackPressedHandler;", "Callback", "PageChangeCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class OnboardingFragment extends Fragment implements BackPressedHandler {
    public SVGAndroidRenderer _binding;
    public final boolean enableSkip;
    public final OnboardingFragment$$ExternalSyntheticLambda0 forwardClickListener;
    public final MainFragment.PageChangeCallback pageChangeCallback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onComplete();

        void onSkip();
    }

    public OnboardingFragment(int i) {
        this.enableSkip = true;
        this.pageChangeCallback = new MainFragment.PageChangeCallback(4, this);
        this.forwardClickListener = new OnboardingFragment$$ExternalSyntheticLambda0(this, 0);
    }

    public final boolean atLastPage() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        int currentItem = ((ViewPager2) sVGAndroidRenderer.parentStack).getCurrentItem();
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        RecyclerView.Adapter adapter = ((ViewPager2) sVGAndroidRenderer2.parentStack).getAdapter();
        adapter.getClass();
        return currentItem == adapter.getItemCount() - 1;
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public abstract FragmentStateAdapter getAdapter();

    public abstract int getDoneButtonText();

    @Override // org.wikipedia.BackPressedHandler
    public final boolean onBackPressed() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        if (((ViewPager2) sVGAndroidRenderer.parentStack).getCurrentItem() <= 0) {
            return false;
        }
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ViewPager2 viewPager2 = (ViewPager2) sVGAndroidRenderer2.parentStack;
        SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
        sVGAndroidRenderer3.getClass();
        viewPager2.setCurrentItem(((ViewPager2) sVGAndroidRenderer3.parentStack).getCurrentItem() - 1, true);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_onboarding_pager, viewGroup, false);
        int i = R.id.fragment_onboarding_done_button;
        Button button = (Button) Room.findChildViewById(inflate, R.id.fragment_onboarding_done_button);
        if (button != null) {
            i = R.id.fragment_onboarding_forward_button;
            Button button2 = (Button) Room.findChildViewById(inflate, R.id.fragment_onboarding_forward_button);
            if (button2 != null) {
                FrameLayout frameLayout = (FrameLayout) inflate;
                i = R.id.fragment_onboarding_skip_button;
                Button button3 = (Button) Room.findChildViewById(inflate, R.id.fragment_onboarding_skip_button);
                if (button3 != null) {
                    i = R.id.fragment_pager;
                    ViewPager2 viewPager2 = (ViewPager2) Room.findChildViewById(inflate, R.id.fragment_pager);
                    if (viewPager2 != null) {
                        i = R.id.view_onboarding_page_indicator;
                        TabLayout tabLayout = (TabLayout) Room.findChildViewById(inflate, R.id.view_onboarding_page_indicator);
                        if (tabLayout != null) {
                            this._binding = new SVGAndroidRenderer(frameLayout, button, button2, button3, viewPager2, tabLayout);
                            viewPager2.setAdapter(getAdapter());
                            SVGAndroidRenderer sVGAndroidRenderer = this._binding;
                            sVGAndroidRenderer.getClass();
                            ((ViewPager2) sVGAndroidRenderer.parentStack).registerOnPageChangeCallback(this.pageChangeCallback);
                            SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
                            sVGAndroidRenderer2.getClass();
                            TabLayout tabLayout2 = (TabLayout) sVGAndroidRenderer2.matrixStack;
                            SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
                            sVGAndroidRenderer3.getClass();
                            new Cache.RealCacheRequest(tabLayout2, (ViewPager2) sVGAndroidRenderer3.parentStack, new _UtilJvmKt$$ExternalSyntheticLambda0()).attach();
                            SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
                            sVGAndroidRenderer4.getClass();
                            ((Button) sVGAndroidRenderer4.document).setText(getDoneButtonText());
                            if (bundle == null) {
                                updateButtonState();
                            }
                            SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
                            sVGAndroidRenderer5.getClass();
                            ((Button) sVGAndroidRenderer5.stateStack).setOnClickListener(new OnboardingFragment$$ExternalSyntheticLambda0(this, 1));
                            SVGAndroidRenderer sVGAndroidRenderer6 = this._binding;
                            sVGAndroidRenderer6.getClass();
                            Button button4 = (Button) sVGAndroidRenderer6.state;
                            OnboardingFragment$$ExternalSyntheticLambda0 onboardingFragment$$ExternalSyntheticLambda0 = this.forwardClickListener;
                            button4.setOnClickListener(onboardingFragment$$ExternalSyntheticLambda0);
                            SVGAndroidRenderer sVGAndroidRenderer7 = this._binding;
                            sVGAndroidRenderer7.getClass();
                            ((Button) sVGAndroidRenderer7.document).setOnClickListener(onboardingFragment$$ExternalSyntheticLambda0);
                            updatePageIndicatorContentDescription();
                            SVGAndroidRenderer sVGAndroidRenderer8 = this._binding;
                            sVGAndroidRenderer8.getClass();
                            FrameLayout frameLayout2 = (FrameLayout) sVGAndroidRenderer8.canvas;
                            frameLayout2.getClass();
                            return frameLayout2;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        ((ViewPager2) sVGAndroidRenderer.parentStack).setAdapter(null);
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        ((ArrayList) ((ViewPager2) sVGAndroidRenderer2.parentStack).mExternalPageChangeCallbacks.this$0).remove(this.pageChangeCallback);
        this._binding = null;
        this.mCalled = true;
    }

    public final void updateButtonState() {
        boolean atLastPage = atLastPage();
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        if (atLastPage) {
            sVGAndroidRenderer.getClass();
            ((Button) sVGAndroidRenderer.stateStack).setVisibility(8);
            SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
            sVGAndroidRenderer2.getClass();
            ((Button) sVGAndroidRenderer2.state).setVisibility(8);
            SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
            sVGAndroidRenderer3.getClass();
            ((Button) sVGAndroidRenderer3.document).setVisibility(0);
            return;
        }
        sVGAndroidRenderer.getClass();
        ((Button) sVGAndroidRenderer.stateStack).setVisibility(this.enableSkip ? 0 : 8);
        SVGAndroidRenderer sVGAndroidRenderer4 = this._binding;
        sVGAndroidRenderer4.getClass();
        ((Button) sVGAndroidRenderer4.state).setVisibility(0);
        SVGAndroidRenderer sVGAndroidRenderer5 = this._binding;
        sVGAndroidRenderer5.getClass();
        ((Button) sVGAndroidRenderer5.document).setVisibility(8);
    }

    public final void updatePageIndicatorContentDescription() {
        SVGAndroidRenderer sVGAndroidRenderer = this._binding;
        sVGAndroidRenderer.getClass();
        TabLayout tabLayout = (TabLayout) sVGAndroidRenderer.matrixStack;
        SVGAndroidRenderer sVGAndroidRenderer2 = this._binding;
        sVGAndroidRenderer2.getClass();
        Integer valueOf = Integer.valueOf(((ViewPager2) sVGAndroidRenderer2.parentStack).getCurrentItem() + 1);
        SVGAndroidRenderer sVGAndroidRenderer3 = this._binding;
        sVGAndroidRenderer3.getClass();
        RecyclerView.Adapter adapter = ((ViewPager2) sVGAndroidRenderer3.parentStack).getAdapter();
        adapter.getClass();
        tabLayout.setContentDescription(getString(R.string.content_description_for_page_indicator, valueOf, Integer.valueOf(adapter.getItemCount())));
    }

    public OnboardingFragment() {
        this(0);
    }
}
