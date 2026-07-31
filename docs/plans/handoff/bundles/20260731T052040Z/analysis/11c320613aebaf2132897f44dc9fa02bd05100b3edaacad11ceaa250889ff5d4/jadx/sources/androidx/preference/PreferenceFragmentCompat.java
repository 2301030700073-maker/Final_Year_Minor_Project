package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityRecreator;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.views.FocusOverlayView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends Fragment {
    public boolean mHavePrefs;
    public boolean mInitDone;
    public RecyclerView mList;
    public PreferenceManager mPreferenceManager;
    public ActivityRecreator.AnonymousClass1 mSelectPreferenceRunnable;
    public final DividerDecoration mDividerDecoration = new DividerDecoration();
    public int mLayoutResId = R.layout.preference_list_fragment;
    public final FocusOverlayView.AnonymousClass1 mHandler = new FocusOverlayView.AnonymousClass1(this, Looper.getMainLooper(), 3);
    public final LiveData.AnonymousClass1 mRequestFocus = new LiveData.AnonymousClass1(this, 12);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DividerDecoration extends RecyclerView.ItemDecoration {
        public boolean mAllowDividerAfterLastItem = true;
        public Drawable mDivider;
        public int mDividerHeight;

        public DividerDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (shouldDrawDividerBelow(view, recyclerView)) {
                rect.bottom = this.mDividerHeight;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
            if (this.mDivider == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (shouldDrawDividerBelow(childAt, recyclerView)) {
                    int height = childAt.getHeight() + ((int) childAt.getY());
                    this.mDivider.setBounds(0, height, width, this.mDividerHeight + height);
                    this.mDivider.draw(canvas);
                }
            }
        }

        public final boolean shouldDrawDividerBelow(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            if (!(childViewHolder instanceof PreferenceViewHolder) || !((PreferenceViewHolder) childViewHolder).mDividerAllowedBelow) {
                return false;
            }
            boolean z = this.mAllowDividerAfterLastItem;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild >= recyclerView.getChildCount() - 1) {
                return z;
            }
            RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
            return (childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).mDividerAllowedAbove;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface OnPreferenceStartFragmentCallback {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ScrollToPreferenceObserver extends RecyclerView.AdapterDataObserver {
        public final PreferenceGroupAdapter mAdapter;
        public final RecyclerView mList;
        public final Preference mPreference;

        public ScrollToPreferenceObserver(PreferenceGroupAdapter preferenceGroupAdapter, RecyclerView recyclerView, Preference preference) {
            this.mAdapter = preferenceGroupAdapter;
            this.mList = recyclerView;
            this.mPreference = preference;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            scrollToPreference();
        }

        public final void scrollToPreference() {
            PreferenceGroupAdapter preferenceGroupAdapter = this.mAdapter;
            preferenceGroupAdapter.unregisterAdapterDataObserver(this);
            int preferenceAdapterPosition = preferenceGroupAdapter.getPreferenceAdapterPosition(this.mPreference);
            if (preferenceAdapterPosition != -1) {
                this.mList.scrollToPosition(preferenceAdapterPosition);
            }
        }
    }

    public final void addPreferencesFromResource(int i) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            Node$$ExternalSyntheticBUOutline0.m811m("This should be called after super.onCreate.");
            return;
        }
        PreferenceScreen inflateFromResource = preferenceManager.inflateFromResource(requireContext(), i, (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen);
        PreferenceManager preferenceManager2 = this.mPreferenceManager;
        PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceManager2.mPreferenceScreen;
        if (inflateFromResource != preferenceScreen) {
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
            preferenceManager2.mPreferenceScreen = inflateFromResource;
            this.mHavePrefs = true;
            if (this.mInitDone) {
                FocusOverlayView.AnonymousClass1 anonymousClass1 = this.mHandler;
                if (anonymousClass1.hasMessages(1)) {
                    return;
                }
                anonymousClass1.obtainMessage(1).sendToTarget();
            }
        }
    }

    public final Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null || (preferenceScreen = (PreferenceScreen) preferenceManager.mPreferenceScreen) == null) {
            return null;
        }
        return preferenceScreen.findPreference(charSequence);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i, false);
        PreferenceManager preferenceManager = new PreferenceManager(requireContext());
        this.mPreferenceManager = preferenceManager;
        preferenceManager.mOnNavigateToScreenListener = this;
        if (getArguments() != null) {
            getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        }
        onCreatePreferences();
    }

    public abstract void onCreatePreferences();

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        TypedArray obtainStyledAttributes = requireContext().obtainStyledAttributes(null, R$styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(requireContext());
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        if (!requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
            recyclerView = (RecyclerView) cloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
            recyclerView.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView));
        }
        this.mList = recyclerView;
        DividerDecoration dividerDecoration = this.mDividerDecoration;
        recyclerView.addItemDecoration(dividerDecoration);
        if (drawable != null) {
            dividerDecoration.getClass();
            dividerDecoration.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            dividerDecoration.mDividerHeight = 0;
        }
        dividerDecoration.mDivider = drawable;
        RecyclerView recyclerView2 = PreferenceFragmentCompat.this.mList;
        if (recyclerView2.mItemDecorations.size() != 0) {
            RecyclerView.LayoutManager layoutManager = recyclerView2.mLayout;
            if (layoutManager != null) {
                layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
            }
            recyclerView2.markItemDecorInsetsDirty();
            recyclerView2.requestLayout();
        }
        if (dimensionPixelSize != -1) {
            dividerDecoration.mDividerHeight = dimensionPixelSize;
            RecyclerView recyclerView3 = PreferenceFragmentCompat.this.mList;
            if (recyclerView3.mItemDecorations.size() != 0) {
                RecyclerView.LayoutManager layoutManager2 = recyclerView3.mLayout;
                if (layoutManager2 != null) {
                    layoutManager2.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView3.markItemDecorInsetsDirty();
                recyclerView3.requestLayout();
            }
        }
        dividerDecoration.mAllowDividerAfterLastItem = z;
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LiveData.AnonymousClass1 anonymousClass1 = this.mRequestFocus;
        FocusOverlayView.AnonymousClass1 anonymousClass12 = this.mHandler;
        anonymousClass12.removeCallbacks(anonymousClass1);
        anonymousClass12.removeMessages(1);
        if (this.mHavePrefs) {
            this.mList.setAdapter(null);
            PreferenceScreen preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen;
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
        }
        this.mList = null;
        super.onDestroyView();
    }

    public boolean onPreferenceTreeClick(Preference preference) {
        String str = preference.mFragment;
        if (str == null) {
            return false;
        }
        boolean z = false;
        for (Fragment fragment = this; !z && fragment != null; fragment = fragment.getParentFragment()) {
            if (fragment instanceof OnPreferenceStartFragmentCallback) {
                SettingsActivity settingsActivity = (SettingsActivity) ((OnPreferenceStartFragmentCallback) fragment);
                FragmentManager.AnonymousClass3 fragmentFactory = settingsActivity.getSupportFragmentManager().getFragmentFactory();
                settingsActivity.getClassLoader();
                Fragment instantiate = fragmentFactory.instantiate(str);
                FragmentManagerImpl supportFragmentManager = settingsActivity.getSupportFragmentManager();
                supportFragmentManager.getClass();
                BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
                backStackRecord.mEnterAnim = R.animator.custom_fade_in;
                backStackRecord.mExitAnim = R.animator.custom_fade_out;
                backStackRecord.mPopEnterAnim = R.animator.custom_fade_in;
                backStackRecord.mPopExitAnim = R.animator.custom_fade_out;
                backStackRecord.replace(R.id.settings_fragment_holder, instantiate, null);
                backStackRecord.addToBackStack(null);
                backStackRecord.commit();
                z = true;
            }
        }
        if (!z && (getContext() instanceof OnPreferenceStartFragmentCallback)) {
            SettingsActivity settingsActivity2 = (SettingsActivity) ((OnPreferenceStartFragmentCallback) getContext());
            FragmentManager.AnonymousClass3 fragmentFactory2 = settingsActivity2.getSupportFragmentManager().getFragmentFactory();
            settingsActivity2.getClassLoader();
            Fragment instantiate2 = fragmentFactory2.instantiate(str);
            FragmentManagerImpl supportFragmentManager2 = settingsActivity2.getSupportFragmentManager();
            supportFragmentManager2.getClass();
            BackStackRecord backStackRecord2 = new BackStackRecord(supportFragmentManager2);
            backStackRecord2.mEnterAnim = R.animator.custom_fade_in;
            backStackRecord2.mExitAnim = R.animator.custom_fade_out;
            backStackRecord2.mPopEnterAnim = R.animator.custom_fade_in;
            backStackRecord2.mPopExitAnim = R.animator.custom_fade_out;
            backStackRecord2.replace(R.id.settings_fragment_holder, instantiate2, null);
            backStackRecord2.addToBackStack(null);
            backStackRecord2.commit();
            z = true;
        }
        if (!z && (getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            SettingsActivity settingsActivity3 = (SettingsActivity) ((OnPreferenceStartFragmentCallback) getActivity());
            FragmentManager.AnonymousClass3 fragmentFactory3 = settingsActivity3.getSupportFragmentManager().getFragmentFactory();
            settingsActivity3.getClassLoader();
            Fragment instantiate3 = fragmentFactory3.instantiate(str);
            FragmentManagerImpl supportFragmentManager3 = settingsActivity3.getSupportFragmentManager();
            supportFragmentManager3.getClass();
            BackStackRecord backStackRecord3 = new BackStackRecord(supportFragmentManager3);
            backStackRecord3.mEnterAnim = R.animator.custom_fade_in;
            backStackRecord3.mExitAnim = R.animator.custom_fade_out;
            backStackRecord3.mPopEnterAnim = R.animator.custom_fade_in;
            backStackRecord3.mPopExitAnim = R.animator.custom_fade_out;
            backStackRecord3.replace(R.id.settings_fragment_holder, instantiate3, null);
            backStackRecord3.addToBackStack(null);
            backStackRecord3.commit();
            z = true;
        }
        if (!z) {
            Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
            FragmentManager parentFragmentManager = getParentFragmentManager();
            if (preference.mExtras == null) {
                preference.mExtras = new Bundle();
            }
            Bundle bundle = preference.mExtras;
            FragmentManager.AnonymousClass3 fragmentFactory4 = parentFragmentManager.getFragmentFactory();
            requireActivity().getClassLoader();
            Fragment instantiate4 = fragmentFactory4.instantiate(str);
            instantiate4.setArguments(bundle);
            instantiate4.setTargetFragment(this, 0);
            BackStackRecord backStackRecord4 = new BackStackRecord(parentFragmentManager);
            backStackRecord4.replace(((View) requireView().getParent()).getId(), instantiate4, null);
            backStackRecord4.addToBackStack(null);
            backStackRecord4.commit();
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = this;
        preferenceManager.mOnDisplayPreferenceDialogListener = this;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = null;
        preferenceManager.mOnDisplayPreferenceDialogListener = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen) != null) {
            preferenceScreen.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs) {
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) this.mPreferenceManager.mPreferenceScreen;
            if (preferenceScreen2 != null) {
                this.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen2));
                preferenceScreen2.onAttached();
            }
            ActivityRecreator.AnonymousClass1 anonymousClass1 = this.mSelectPreferenceRunnable;
            if (anonymousClass1 != null) {
                anonymousClass1.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }
}
