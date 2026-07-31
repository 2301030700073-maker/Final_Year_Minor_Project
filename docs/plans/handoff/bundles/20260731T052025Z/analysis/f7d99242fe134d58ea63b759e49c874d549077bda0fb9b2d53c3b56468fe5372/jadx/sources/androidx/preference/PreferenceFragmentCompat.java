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
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.core.app.ActivityRecreator;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends Fragment {
    public boolean mHavePrefs;
    public boolean mInitDone;
    public RecyclerView mList;
    public PreferenceManager mPreferenceManager;
    public ActivityRecreator.AnonymousClass1 mSelectPreferenceRunnable;
    public final DividerDecoration mDividerDecoration = new DividerDecoration();
    public int mLayoutResId = R.layout.preference_list_fragment;
    public final MessageCompose.AnonymousClass14 mHandler = new MessageCompose.AnonymousClass14(this, Looper.getMainLooper(), 2);
    public final Fragment.AnonymousClass1 mRequestFocus = new Fragment.AnonymousClass1(18, this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DividerDecoration extends RecyclerView.ItemDecoration {
        public boolean mAllowDividerAfterLastItem = true;
        public Drawable mDivider;
        public int mDividerHeight;

        public DividerDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView) {
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnPreferenceStartScreenCallback {
        void onPreferenceStartScreen(PreferenceFragmentCompat preferenceFragmentCompat, PreferenceScreen preferenceScreen);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            preferenceGroupAdapter.mObservable.unregisterObserver(this);
            int preferenceAdapterPosition = preferenceGroupAdapter.getPreferenceAdapterPosition(this.mPreference);
            if (preferenceAdapterPosition != -1) {
                this.mList.scrollToPosition(preferenceAdapterPosition);
            }
        }
    }

    public final Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null || (preferenceScreen = preferenceManager.mPreferenceScreen) == null) {
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
        Bundle bundle2 = this.mArguments;
        if (bundle2 != null) {
            bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
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
        PreferenceFragmentCompat preferenceFragmentCompat = PreferenceFragmentCompat.this;
        RecyclerView recyclerView2 = preferenceFragmentCompat.mList;
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
            RecyclerView recyclerView3 = preferenceFragmentCompat.mList;
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
    public void onDestroyView() {
        Fragment.AnonymousClass1 anonymousClass1 = this.mRequestFocus;
        MessageCompose.AnonymousClass14 anonymousClass14 = this.mHandler;
        anonymousClass14.removeCallbacks(anonymousClass1);
        anonymousClass14.removeMessages(1);
        if (this.mHavePrefs) {
            this.mList.setAdapter(null);
            PreferenceScreen preferenceScreen = this.mPreferenceManager.mPreferenceScreen;
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
        }
        this.mList = null;
        this.mCalled = true;
    }

    public void onDisplayPreferenceDialog(DialogPreference dialogPreference) {
        DialogFragment multiSelectListPreferenceDialogFragmentCompat;
        for (Fragment fragment = this; fragment != null; fragment = fragment.mParentFragment) {
        }
        if (getParentFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") != null) {
            return;
        }
        if (dialogPreference instanceof EditTextPreference) {
            String str = dialogPreference.mKey;
            multiSelectListPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
            Bundle bundle = new Bundle(1);
            bundle.putString("key", str);
            multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
        } else if (dialogPreference instanceof ListPreference) {
            String str2 = dialogPreference.mKey;
            multiSelectListPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
            Bundle bundle2 = new Bundle(1);
            bundle2.putString("key", str2);
            multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle2);
        } else {
            if (!(dialogPreference instanceof MultiSelectListPreference)) {
                Regex$$ExternalSyntheticBUOutline0.m$1(dialogPreference.getClass().getSimpleName(), ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.", "Cannot display dialog for an unknown Preference type: ");
                return;
            }
            String str3 = dialogPreference.mKey;
            multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
            Bundle bundle3 = new Bundle(1);
            bundle3.putString("key", str3);
            multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle3);
        }
        multiSelectListPreferenceDialogFragmentCompat.setTargetFragment(0, this);
        multiSelectListPreferenceDialogFragmentCompat.show(getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
    }

    public boolean onPreferenceTreeClick(Preference preference) {
        String str = preference.mFragment;
        if (str == null) {
            return false;
        }
        for (Fragment fragment = this; fragment != null; fragment = fragment.mParentFragment) {
        }
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        FragmentManager parentFragmentManager = getParentFragmentManager();
        if (preference.mExtras == null) {
            preference.mExtras = new Bundle();
        }
        Bundle bundle = preference.mExtras;
        FragmentManager.AnonymousClass3 fragmentFactory = parentFragmentManager.getFragmentFactory();
        requireActivity().getClassLoader();
        Fragment instantiate = fragmentFactory.instantiate(str);
        instantiate.setArguments(bundle);
        instantiate.setTargetFragment(0, this);
        BackStackRecord backStackRecord = new BackStackRecord(parentFragmentManager);
        backStackRecord.replace(((View) requireView().getParent()).getId(), instantiate, null);
        backStackRecord.addToBackStack(null);
        backStackRecord.commit();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen = this.mPreferenceManager.mPreferenceScreen;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = this;
        preferenceManager.mOnDisplayPreferenceDialogListener = this;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        this.mCalled = true;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = null;
        preferenceManager.mOnDisplayPreferenceDialogListener = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = this.mPreferenceManager.mPreferenceScreen) != null) {
            preferenceScreen.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs) {
            PreferenceScreen preferenceScreen2 = this.mPreferenceManager.mPreferenceScreen;
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

    public final void setPreferencesFromResource(String str, int i) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m("This should be called after super.onCreate.");
            return;
        }
        PreferenceScreen inflateFromResource = preferenceManager.inflateFromResource(requireContext(), i, null);
        Preference preference = inflateFromResource;
        if (str != null) {
            Preference findPreference = inflateFromResource.findPreference(str);
            boolean z = findPreference instanceof PreferenceScreen;
            preference = findPreference;
            if (!z) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Preference object with key ", str, " is not a PreferenceScreen"));
                return;
            }
        }
        PreferenceScreen preferenceScreen = (PreferenceScreen) preference;
        PreferenceManager preferenceManager2 = this.mPreferenceManager;
        PreferenceScreen preferenceScreen2 = preferenceManager2.mPreferenceScreen;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.onDetached();
            }
            preferenceManager2.mPreferenceScreen = preferenceScreen;
            this.mHavePrefs = true;
            if (this.mInitDone) {
                MessageCompose.AnonymousClass14 anonymousClass14 = this.mHandler;
                if (anonymousClass14.hasMessages(1)) {
                    return;
                }
                anonymousClass14.obtainMessage(1).sendToTarget();
            }
        }
    }
}
